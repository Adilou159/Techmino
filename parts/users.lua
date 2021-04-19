local gc,fs=love.graphics,love.filesystem
local function loadAvatar(path)
	local img=gc.newImage(path)
	local canvas=gc.newCanvas(128,128)
	gc.push()
		gc.origin()
		gc.setColor(1,1,1)
		gc.setCanvas(canvas)
		mDraw(img,64,64,nil,128/math.max(img:getWidth(),img:getHeight()))
		gc.setCanvas()
	gc.pop()
	return canvas
end

local texture_noImage=DOGC{120,120,
	{"setCL",0,0,0},
	{"fRect",0,0,120,120},
	{"setCL",1,1,1},
	{"setLW",6},
	{"dLine",9,9,110,110},
	{"dLine",9,110,110,9},
}

local db_img={}
local db=setmetatable({},{__index=function(self,k)
	local file="cache/user"..k..".dat"
	local d=
		fs.getInfo(file)and JSON.decode(fs.read(file))or
		{
			username="[X]",
			motto="Techmino haowan",
			hash="",
			new=false,
		}
	rawset(self,k,d)
	if type(d.hash)=="string"and #d.hash>0 and fs.getInfo("cache/"..d.hash)then
		db_img[k]=loadAvatar("cache/"..d.hash)
	end
	return d
end})

local USERS={}

function USERS.updateUserData(data)
	local uid=data.uid
	db[uid].username=data.username
	db[uid].motto=data.motto
	fs.write("cache/user"..uid..".dat",JSON.encode{
		username=data.username,
		motto=data.motto,
		hash=data.hash or db[uid].hash,
	})
	if data.avatar then
		fs.write("cache/"..data.hash,love.data.decode("string","base64",data.avatar:sub(data.avatar:find","+1)))
		db_img[uid]=loadAvatar("cache/"..data.hash)
		db[uid].hash=type(data.hash)=="string"and #data.hash>0 and data.hash
		db[uid].new=true
	end
end

function USERS.getUsername(uid)return db[uid].username end
function USERS.getMotto(uid)return db[uid].motto end
function USERS.getHash(uid)return db[uid].hash end
function USERS.getAvatar(uid)
	if db_img[uid]then
		return db_img[uid]
	else
		if not db[uid].new then
			NET.getUserInfo(uid)
			db[uid].new=true
		end
		return texture_noImage
	end
end

return USERS