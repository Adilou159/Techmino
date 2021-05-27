NONE={}function NULL()end
EDITING=""
LOADED=false
ERRDATA={}

require"Zframework.setFont"
ADRAW=require"Zframework.aDraw"
	mStr=ADRAW.str
	mText=ADRAW.simpX
	mDraw=ADRAW.draw

SCR=	require"Zframework.screen"
COLOR=	require"Zframework.color"
LOG=	require"Zframework.log"
SCN=	require"Zframework.scene"
WS=		require"Zframework.websocket"

LOADLIB=require"Zframework.loadLib"
WHEELMOV=require"Zframework.wheelScroll"

JSON=require"Zframework.json"
TABLE=require"Zframework.tableExtend"
STRING=require"Zframework.stringExtend"

VIB=	require"Zframework.vibrate"
SFX=	require"Zframework.sfx"

LIGHT=	require"Zframework.light"
DOGC=	require"Zframework.doGC"
BG=		require"Zframework.background"
WIDGET=	require"Zframework.widget"
TEXT=	require"Zframework.text"
SYSFX=	require"Zframework.sysFX"

IMG=	require"Zframework.image"
BGM=	require"Zframework.bgm"
VOC=	require"Zframework.voice"

LANG=	require"Zframework.languages"
TASK=	require"Zframework.task"
FILE=	require"Zframework.file"
PROFILE=require"Zframework.profile"
THEME=	require"Zframework.theme"

local ms,kb=love.mouse,love.keyboard

local gc=love.graphics
local gc_push,gc_pop,gc_clear,gc_origin=gc.push,gc.pop,gc.clear,gc.origin
local gc_replaceTransform,gc_present,gc_discard=gc.replaceTransform,gc.present,gc.discard
local gc_setColor,gc_setLineWidth=gc.setColor,gc.setLineWidth
local gc_draw,gc_line=gc.draw,gc.line
local gc_rectangle=gc.rectangle
local gc_print,gc_printf=gc.print,gc.printf

local setFont,mStr=setFont,mStr

local int,rnd,abs=math.floor,math.random,math.abs
local min,sin=math.min,math.sin
local ins,rem=table.insert,table.remove

local WIDGET,SCR,SCN=WIDGET,SCR,SCN
local xOy=SCR.xOy

local mx,my,mouseShow=-20,-20,false
local touching--First touching ID(userdata)
joysticks={}

local devMode

local batteryImg=DOGC{31,20,
	{'fRect',1,0,26,2},
	{'fRect',1,18,26,2},
	{'fRect',0,1,2,18},
	{'fRect',26,1,2,18},
	{'fRect',29,3,2,14},
}
local infoCanvas=gc.newCanvas(108,27)
local function updatePowerInfo()
	local state,pow=love.system.getPowerInfo()
	gc.setCanvas(infoCanvas)
	gc_push('transform')
	gc_origin()
	gc_clear(0,0,0,.25)
	if state~='unknown'then
		gc_setLineWidth(4)
		local charging=state=='charging'
		if state=='nobattery'then
			gc_setColor(1,1,1)
			gc_setLineWidth(2)
			gc_line(74,SCR.safeX+5,100,22)
		elseif pow then
			if charging then	gc_setColor(0,1,0)
			elseif pow>50 then	gc_setColor(1,1,1)
			elseif pow>26 then	gc_setColor(1,1,0)
			elseif pow==26 then	gc_setColor(.5,0,1)
			else				gc_setColor(1,0,0)
			end
			gc_rectangle('fill',76,6,pow*.22,14)
			if pow<100 then
				setFont(15)
				gc_setColor(0,0,0)
				gc_print(pow,77,1)
				gc_print(pow,77,3)
				gc_print(pow,79,1)
				gc_print(pow,79,3)
				gc_setColor(1,1,1)
				gc_print(pow,78,2)
			end
		end
		gc_draw(batteryImg,73,3)
	end
	setFont(25)
	gc_print(os.date("%H:%M"),3,-5)
	gc_pop()
	gc.setCanvas()
end
-------------------------------------------------------------
local lastX,lastY=0,0--Last click pos
function love.mousepressed(x,y,k,touch)
	if touch then return end
	mouseShow=true
	mx,my=xOy:inverseTransformPoint(x,y)
	if devMode==1 then
		print(("(%d,%d)<-%d,%d ~~(%d,%d)<-%d,%d"):format(
			mx,my,
			mx-lastX,my-lastY,
			int(mx/10)*10,int(my/10)*10,
			int((mx-lastX)/10)*10,int((my-lastY)/10)*10
		))
	end
	if SCN.swapping then return end
	if SCN.mouseDown then SCN.mouseDown(mx,my,k)end
	WIDGET.press(mx,my,k)
	lastX,lastY=mx,my
	if SETTING.clickFX then SYSFX.newTap(3,mx,my)end
end
function love.mousemoved(x,y,dx,dy,touch)
	if touch then return end
	mouseShow=true
	mx,my=xOy:inverseTransformPoint(x,y)
	if SCN.swapping then return end
	dx,dy=dx/SCR.k,dy/SCR.k
	if SCN.mouseMove then SCN.mouseMove(mx,my,dx,dy)end
	if ms.isDown(1)then
		WIDGET.drag(mx,my,dx*SCR.dpi,dy*SCR.dpi)
	else
		WIDGET.cursorMove(mx,my)
	end
end
function love.mousereleased(x,y,k,touch)
	if touch or SCN.swapping then return end
	mx,my=xOy:inverseTransformPoint(x,y)
	WIDGET.release(mx,my)
	if SCN.mouseUp then SCN.mouseUp(mx,my,k)end
	if lastX and SCN.mouseClick and(mx-lastX)^2+(my-lastY)^2<62 then
		SCN.mouseClick(mx,my,k)
	end
end
function love.wheelmoved(x,y)
	if SCN.swapping then return end
	if SCN.wheelMoved then SCN.wheelMoved(x,y)end
end

function love.touchpressed(id,x,y)
	mouseShow=false
	if SCN.swapping then return end
	if not touching then
		touching=id
		WIDGET.unFocus(true)
		love.touchmoved(id,x,y,0,0)
	end
	x,y=xOy:inverseTransformPoint(x,y)
	lastX,lastY=x,y
	if SCN.touchDown then SCN.touchDown(x,y)end
	if kb.hasTextInput()then kb.setTextInput(false)end
end
function love.touchmoved(_,x,y,dx,dy)
	if SCN.swapping then return end
	x,y=xOy:inverseTransformPoint(x,y)
	if SCN.touchMove then SCN.touchMove(x,y,dx/SCR.k,dy/SCR.k)end
	WIDGET.drag(x,y,dx*SCR.dpi,dy*SCR.dpi)
	if touching then
		WIDGET.cursorMove(x,y)
		if not WIDGET.sel then touching=false end
	end
end
function love.touchreleased(id,x,y)
	if SCN.swapping then return end
	x,y=xOy:inverseTransformPoint(x,y)
	if id==touching then
		WIDGET.press(x,y,1)
		WIDGET.release(x,y)
		WIDGET.cursorMove(x,y)
		WIDGET.unFocus()
		touching=false
	end
	if SCN.touchUp then SCN.touchUp(x,y)end
	if(x-lastX)^2+(y-lastY)^2<62 then
		if SCN.touchClick then SCN.touchClick(x,y)end
		if SETTING.clickFX then SYSFX.newTap(3,x,y)end
	end
end

local function noDevkeyPressed(key)
	if key=="f1"then
		PROFILE.switch()
	elseif key=="f2"then
		LOG.print(("System:%s[%s]\nluaVer:%s\njitVer:%s\njitVerNum:%s"):format(SYSTEM,jit.arch,_VERSION,jit.version,jit.version_num),'message')
	elseif key=="f3"then
		for _=1,8 do
			local P=PLY_ALIVE[rnd(#PLY_ALIVE)]
			if P~=PLAYERS[1]then
				P.lastRecv=PLAYERS[1]
				P:lose()
			end
		end
	elseif key=="f4"then	if not kb.isDown("lalt","ralt")then LOG.copy()end
	elseif key=="f5"then	print(WIDGET.isFocus()or"no widget selected")
	elseif key=="f6"then	for k,v in next,_G do print(k,v)end
	elseif key=="f7"then	if love._openConsole then love._openConsole()end
	elseif key=="f8"then	devMode=nil	LOG.print("DEBUG OFF",10)
	elseif key=="f9"then	devMode=1	LOG.print("DEBUG 1")
	elseif key=="f10"then	devMode=2	LOG.print("DEBUG 2")
	elseif key=="f11"then	devMode=3	LOG.print("DEBUG 3")
	elseif key=="f12"then	devMode=4	LOG.print("DEBUG 4")
	elseif key=="backspace"then	if kb.isDown("lctrl","rctrl")then _G["\100\114\97\119\70\87\77"]=NULL end
	elseif devMode==2 then
		local W=WIDGET.sel
		if W then
			if key=="left"then W.x=W.x-10
			elseif key=="right"then W.x=W.x+10
			elseif key=="up"then W.y=W.y-10
			elseif key=="down"then W.y=W.y+10
			elseif key==","then W.w=W.w-10
			elseif key=="."then W.w=W.w+10
			elseif key=="/"then W.h=W.h-10
			elseif key=="'"then W.h=W.h+10
			elseif key=="["then W.font=W.font-5
			elseif key=="]"then W.font=W.font+5
			else return true
			end
		else
			return true
		end
	else
		return true
	end
end
function love.keypressed(key)
	mouseShow=false
	if devMode and not noDevkeyPressed(key)then
		return
	elseif key=="f8"then
		devMode=1
		LOG.print("DEBUG ON",10)
	elseif key=="f11"then
		switchFullscreen()
	elseif not SCN.swapping then
		if SCN.keyDown then
			SCN.keyDown(key)
		elseif key=="escape"then
			SCN.back()
		else
			WIDGET.keyPressed(key)
		end
	end
end
function love.keyreleased(i)
	if SCN.swapping then return end
	if SCN.keyUp then SCN.keyUp(i)end
end

function love.textedited(texts)
	EDITING=texts
end
function love.textinput(texts)
	WIDGET.textinput(texts)
end

function love.joystickadded(JS)
	ins(joysticks,JS)
	LOG.print("Joystick added",'message')
end
function love.joystickremoved(JS)
	local i=TABLE.find(joysticks,JS)
	if i then
		rem(joysticks,i)
		LOG.print("Joystick removed",'message')
	end
end
local keyMirror={
	dpup='up',
	dpdown='down',
	dpleft='left',
	dpright='right',
	start='return',
	back='escape',
}
function love.gamepadpressed(_,i)
	mouseShow=false
	if SCN.swapping then return end
	if SCN.gamepadDown then SCN.gamepadDown(i)
	elseif SCN.keyDown then SCN.keyDown(keyMirror[i]or i)
	elseif i=="back"then SCN.back()
	else WIDGET.gamepadPressed(keyMirror[i]or i)
	end
end
function love.gamepadreleased(_,i)
	if SCN.swapping then return end
	if SCN.gamepadUp then SCN.gamepadUp(i)end
end
--[[
function love.joystickpressed(JS,k)
	mouseShow=false
	if SCN.swapping then return end
	if SCN.gamepadDown then SCN.gamepadDown(i)
	elseif SCN.keyDown then SCN.keyDown(keyMirror[i]or i)
	elseif i=="back"then SCN.back()
	else WIDGET.gamepadPressed(i)
	end
end
function love.joystickreleased(JS,k)
	if SCN.swapping then return end
	if SCN.gamepadUp then SCN.gamepadUp(i)
	end
end
function love.joystickaxis(JS,axis,val)

end
function love.joystickhat(JS,hat,dir)

end
function love.sendData(data)end
function love.receiveData(id,data)end
]]
function love.filedropped(file)
	if SCN.fileDropped then SCN.fileDropped(file)end
end
function love.directorydropped(dir)
	if SCN.directoryDropped then SCN.directoryDropped(dir)end
end
local lastGCtime=0
function love.lowmemory()
	if TIME()-lastGCtime>6.26 then
		collectgarbage()
		lastGCtime=TIME()
		LOG.print("[auto GC] low MEM 设备内存过低",'warn')
	end
end
function love.resize(w,h)
	SCR.resize(w,h)
	if BG.resize then BG.resize(w,h)end
	if SCN.resize then SCN.resize(w,h)end
	WIDGET.resize(w,h)

	SHADER.warning:send("w",w*SCR.dpi)
	SHADER.warning:send("h",h*SCR.dpi)
end
function love.focus(f)
	if f then
		love.timer.step()
	elseif SCN.cur=='game'and SETTING.autoPause then
		pauseGame()
	end
end

local yield=coroutine.yield
local function secondLoopThread()
	local mainLoop=love.run()
	repeat yield()until mainLoop()
end
function love.errorhandler(msg)
	if not msg then msg="Unknown error" end

	--Generate error message
	local err={"Error:"..msg}
	local c=2
	for l in debug.traceback("",2):gmatch("(.-)\n")do
		if c>2 then
			if not l:find("boot")then
				err[c]=l:gsub("^\t*","")
				c=c+1
			end
		else
			err[2]="Traceback"
			c=3
		end
	end
	print(table.concat(err,"\n",1,c-2))

	--Reset something
	love.audio.stop()
	gc.reset()

	if LOADED and #ERRDATA<3 then
		BG.set('none')
		local scn=SCN and SCN.cur or"NULL"
		ins(ERRDATA,{mes=err,scene=scn})

		--Write messages to log file
		love.filesystem.append("conf/error.log",
			os.date("%Y/%m/%d %A %H:%M:%S\n")..
			#ERRDATA.." crash(es) "..SYSTEM.."-"..VERSION.string.."  scene: "..scn.."\n"..
			table.concat(err,"\n",1,c-2).."\n\n"
		)

		--Get screencapture
		gc.captureScreenshot(function(_)ERRDATA[#ERRDATA].shot=gc.newImage(_)end)
		gc.present()

		--Create a new mainLoop thread to keep game alive
		local status,resume=coroutine.status,coroutine.resume
		local loopThread=coroutine.create(secondLoopThread)
		local res,threadErr
		repeat
			res,threadErr=resume(loopThread)
		until status(loopThread)=='dead'
		if not res then
			love.errorhandler(threadErr)
			return
		end
	else
		ms.setVisible(true)

		local errorMsg
		errorMsg=LOADED and
			"Too many errors or fatal error occured.\nPlease restart the game."or
			"An error has occurred during loading.\nError info has been created, and you can send it to the author."
		while true do
			love.event.pump()
			for E,a,b in love.event.poll()do
				if E=='quit'or a=='escape'then
					destroyPlayers()
					return true
				elseif E=='resize'then
					SCR.resize(a,b)
				end
			end
			gc_clear(.3,.5,.9)
			gc_push('transform')
			gc_replaceTransform(xOy)
			setFont(100)gc_print(":(",100,0,0,1.2)
			setFont(40)gc_printf(errorMsg,100,160,SCR.w0-100)
			setFont(20)
			gc_print(SYSTEM.."-"..VERSION.string.."                          scene:"..(SCN and SCN.cur or"NULL"),100,660)
			gc_printf(err[1],100,360,1260-100)
			gc_print("TRACEBACK",100,450)
			for i=4,#err-2 do
				gc_print(err[i],100,400+20*i)
			end
			gc_pop()
			gc_present()
			love.timer.sleep(.26)
		end
	end
end

love.draw,love.update=nil--remove default draw/update

local devColor={
	COLOR.Z,
	COLOR.lM,
	COLOR.lG,
	COLOR.lB,
}
local WS=WS
local WSnames={'app','user','play','stream','chat'}
local WScolor={
	{1,.6,.6,.7},
	{1,.8,.4,.7},
	{1,1,.5,.7},
	{.5,1,.8,.7},
	{.6,.9,1,.7},
}
local ws_deadImg=DOGC{20,20,
	{'setFT',20},
	{'setCL',1,.3,.3},
	{'print',"X",3,-4},
}
local ws_connectingImg=DOGC{20,20,
	{'setLW',3},
	{'dArc',11.5,10,6.26,1,5.28},
}
local ws_runningImg=DOGC{20,20,
	{'setFT',20},
	{'setCL',.5,1,0},
	{'print',"R",3,-4},
}
local cursorImg=DOGC{16,16,
	{"fCirc",8,8,4},
	{"setCL",1,1,1,.7},
	{"fCirc",8,8,6},
}
local cursor_holdImg=DOGC{16,16,
	{"setLW",2},
	{"dCirc",8,8,7},
	{"fCirc",8,8,3},
}
function love.run()
	local love=love

	local VOC,BG,SYSFX=VOC,BG,SYSFX
	local TASK,LOG,TEXT=TASK,LOG,TEXT

	local TEXTURE,TIME=TEXTURE,TIME
	local SETTING,VERSION=SETTING,VERSION
	local destroyPlayers=destroyPlayers

	local STEP,WAIT=love.timer.step,love.timer.sleep
	local FPS,MINI=love.timer.getFPS,love.window.isMinimized
	local PUMP,POLL=love.event.pump,love.event.poll

	local frameTimeList={}

	local lastFrame=TIME()
	local lastFreshPow=lastFrame
	local FCT=0--Framedraw counter, from 0~99

	love.resize(gc.getWidth(),gc.getHeight())

	--Scene Launch
	while #SCN.stack>0 do SCN.pop()end
	SCN.push('quit','slowFade')
	SCN.init(#ERRDATA==0 and'load'or'error')

	return function()
		local _

		local time=TIME()
		local dt=time-lastFrame
		lastFrame=time

		--EVENT
		PUMP()
		for N,a,b,c,d,e in POLL()do
			if love[N]then
				love[N](a,b,c,d,e)
			elseif N=='quit'then
				destroyPlayers()
				return a or true
			end
		end

		--UPDATE
		STEP()
		TASK.update()
		WS.update(dt)
		VOC.update()
		BG.update(dt)
		SYSFX.update(dt)
		WIDGET.update()
		if SCN.update then SCN.update(dt)end
		if SCN.swapping then SCN.swapUpdate()end
		TEXT.update()
		LOG.update()

		--DRAW
		if not MINI()then
			FCT=FCT+SETTING.frameMul
			if FCT>=100 then
				FCT=FCT-100

				--Draw background
				BG.draw()

				gc.replaceTransform(xOy)
					--Draw scene contents
					if SCN.draw then SCN.draw()end

					--Draw widgets
					WIDGET.draw()

					--Draw Version string
					gc_setColor(.8,.8,.8,.4)
					setFont(20)
					mStr(VERSION.string,640,693)

					--Draw cursor
					if mouseShow then
						local R=int((time+1)/2)%7+1
						_=minoColor[SETTING.skin[R]]
						gc_setColor(_[1],_[2],_[3],min(abs(1-time%2),.3))
						_=SCS[R][0]
						gc_draw(TEXTURE.miniBlock[R],mx,my,time%3.14159265359*4,16,16,_[2]+.5,#BLOCKS[R][0]-_[1]-.5)
						gc_setColor(1,1,1)
						gc_draw(ms.isDown(1)and cursor_holdImg or cursorImg,mx,my,nil,nil,nil,8,8)
					end
					SYSFX.draw()
					TEXT.draw()
				gc.origin()
					--Draw power info.
					if SETTING.powerInfo then
						gc_setColor(1,1,1)
						gc_draw(infoCanvas,SCR.safeX,0,0,SCR.k)
					end

					--Draw scene swapping animation
					if SCN.swapping then
						gc_setColor(1,1,1)
						_=SCN.stat
						_.draw(_.time)
					end

					--Draw Logs
					LOG.draw()

					--Draw FPS
					setFont(15)
					_=SCR.h
					gc_setColor(1,1,1)
					gc_print(FPS(),SCR.safeX+5,_-20)

					--Debug info.
					if devMode then
						--Left-down infos
						gc_setColor(devColor[devMode])
						gc_print("MEM     "..gcinfo(),SCR.safeX+5,_-40)
						gc_print("Lines    "..FREEROW.getCount(),SCR.safeX+5,_-60)
						gc_print("Cursor  "..int(mx+.5).." "..int(my+.5),SCR.safeX+5,_-80)
						gc_print("Voices  "..VOC.getQueueCount(),SCR.safeX+5,_-100)
						gc_print("Tasks   "..TASK.getCount(),SCR.safeX+5,_-120)

						--Update & draw frame time
						ins(frameTimeList,1,dt)rem(frameTimeList,126)
						gc_setColor(1,1,1,.3)
						for i=1,#frameTimeList do
							gc_rectangle('fill',150+2*i,_-20,2,-frameTimeList[i]*4000)
						end

						--Websocket status
						gc_push('transform')
						gc.translate(SCR.w,SCR.h)
						gc.scale(SCR.k)
						for i=1,5 do
							local status=WS.status(WSnames[i])
							gc_setColor(WScolor[i])
							gc_rectangle('fill',0,20*i-100,-80,-20)
							if status=='dead'then
								gc_setColor(1,1,1)
								gc_draw(ws_deadImg,-20,20*i-120)
							elseif status=='connecting'then
								gc_setColor(1,1,1,.5+.3*sin(time*6.26))
								gc_draw(ws_connectingImg,-20,20*i-120)
							elseif status=='running'then
								gc_setColor(1,1,1)
								gc_draw(ws_runningImg,-20,20*i-120)
							end
							local t1,t2,t3=WS.getTimers(WSnames[i])
							gc_setColor(1,1,1,t1)gc_rectangle('fill',-60,20*i-100,-20,-20)
							gc_setColor(0,1,0,t2)gc_rectangle('fill',-40,20*i-100,-20,-20)
							gc_setColor(1,0,0,t3)gc_rectangle('fill',-20,20*i-100,-20,-20)
						end
						gc_pop()

						--Slow devmode
						if devMode==3 then WAIT(.1)
						elseif devMode==4 then WAIT(.5)
						end
					end
				gc_present()

				--SPEED UPUPUP!
				if SETTING.cleanCanvas then gc_discard()end
			end
		end

		--Fresh power info.
		if time-lastFreshPow>2.6 then
			if SETTING.powerInfo and LOADED then
				updatePowerInfo()
				lastFreshPow=time
			end
			if gc.getWidth()~=SCR.w then
				love.resize(gc.getWidth(),gc.getHeight())
			end
		end

		--Keep 60fps
		_=TIME()-lastFrame
		if _<.016 then WAIT(.016-_)end
		while TIME()-lastFrame<1/60-5e-6 do WAIT(0)end
	end
end