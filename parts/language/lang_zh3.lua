local C=COLOR
return{
    fallback='zh',
    loadText={
        loadSFX="加载音效",
        loadVoice="加载语音包",
        loadFont="加载字体",
        loadModeIcon="加载模式图标",
        loadMode="加载方式",
        loadOther="加载其他资产",
        finish="按任意按钮开始!",
    },
    sureQuit="再次按退出",
    newDay="新的一天,新的开始!",
    playedLong="你已经玩了很长时间了。一定要好好休息!",
    playedTooMuch="你玩得太久了!玩方块游戏很有趣,但现在是休息的时候了。",

    atkModeName={"随机的","徽章","击败","攻击者"},
    royale_remain="剩余$1球员",
    powerUp={[0]="+000%","+025%","+050%","+075%","+100%"},
    cmb={nil,"1连击","2连击","3连击","4连击","5连击","6连击","7连击","8连击","9连击","10连击!","11连击!","12连击!","13连击!","14连击!","15连击!","16连击!","17连击!","18连击!","19连击!","巨大连击"},
    spin="-旋转",
    clear={"单身","双重的","三倍的","技术崩溃","五角碰撞","六面体碎裂"},
    mini="迷你",b2b="商对商",b3b="商对商对商",
    PC="清清楚楚",HPC="半完美清晰",
    replaying="[重播]",
    tasUsing="[TAS]",

    stage="$1阶段已完成",
    great="伟大的",
    awesome="令人惊叹的!",
    almost="几乎!",
    continue="继续前进!",
    maxspeed="最高速度!",
    speedup="加快",
    missionFailed="错误清除",

    speedLV="速度水平",
    piece="块",line="线",atk="攻击",eff="效率",
    rpm="转速",tsd="热关断",
    grade="等级",techrash="技术崩溃",
    wave="波动",nextWave="下一个",
    combo="联合体",maxcmb="最大连击",
    pc="清清楚楚",ko="击倒对手",

    win="赢",
    lose="失去",

    finish="完成",
    gamewin="你赢了",
    gameover="游戏结束",

    pause="暂停",
    pauseCount="停顿",
    finesse_ap="完美无缺",
    finesse_fc="全组合",

    page="第页:",

    cc_fixed="CC与固定序列不兼容",
    cc_swap="CC与交换保持模式不兼容",
    ai_prebag="AI与具有非四格拼板的自定义序列不兼容",
    ai_mission="AI与自定义任务不兼容",
    switchSpawnSFX="请打开繁殖特技效果",
    ranks={"D","C","B","A","S"},
    needRestart="请重试以使更改生效",

    saveDone="保存的数据",
    saveError="未能保存:",
    saveError_duplicate="重复文件名",
    loadError="未能加载:",
    exportSuccess="成功导出",
    importSuccess="导入成功",
    dataCorrupted="数据损坏",
    pasteWrongPlace="贴错地方了?",
    noFile="找不到文件",

    nowPlaying="现在播放:",

    VKTchW="触重",
    VKOrgW="起始重量",
    VKCurW="现在的位置重量",

    noScore="还没有分数",
    modeLocked="锁定",
    unlockHint="在先决条件模式下达到D级或更高级别以解锁",
    highScore="个人最好成绩",
    newRecord="新纪录!",

    replayBroken="无法加载重播",

    getNoticeFail="获取通知失败",
    oldVersion="版本$1现已推出!",
    needUpdate="需要更新版本!",
    versionNotMatch="版本不匹配!",
    notFinished="马上就来!",

    jsonError="JSON错误",

    noUsername="请指定用户名",
    wrongEmail="您输入的电子邮件地址不正确",
    noPassword="请输入您的密码",
    diffPassword="密码不匹配",
    registerRequestSent="已发送注册请求",
    registerSuccessed="注册成功!",
    loginSuccessed="您现在已登录!",
    accessSuccessed="允许访问",

    wsConnecting="双向通信连接",
    wsFailed="双向通信连接失败",
    wsClose="双向通信已关闭:",
    netTimeout="网络连接超时",

    onlinePlayerCount="在线的",
    createRoomSuccessed="房间成功创建!",
    started="玩",
    joinRoom="加入了房间",
    leaveRoom="离开了房间",
    ready="准备好的",
    connStream="连接",
    waitStream="等待",
    spectating="凝视",
    chatRemain="在线的",
    chatStart="------日志开始------",
    chatHistory="------下面是新消息------",

    keySettingInstruction="按绑定键\n退出:取消\n退格:删除",

    errorMsg="技术米诺遇到问题,需要重新启动。\n您可以将错误日志发送给开发人员。",

    modInstruction="选择你的修改器\n多器官功能障碍允许您更改游戏。\n它们也可能以奇怪的方式破坏游戏。\n请注意,多器官功能障碍将导致您的游戏取消排名!",
    modInfo={
        next="下一步\n减少下一步的数量",
        hold="保持\n减少保持件的数量",
        hideNext="隐藏的下一个\n在下一个队列中包含特定数量的碎片",
        infHold="无限持有\n允许您无限地持有碎片",
        hideBlock="隐藏当前工件:\n使您控制的工件不可见",
        hideGhost="无重影\n使重影片段不可见",
        hidden="隐藏锁定的片段\n使锁定的片段淡出",
        hideBoard="隐藏板\n局部或完全隐藏字段",
        flipBoard="翻转板\n翻转或旋转场",
        dropDelay="重力\n以帧/块为单位降低下降速度",
        lockDelay="锁定延迟\n以帧为单位减少锁定延迟",
        waitDelay="繁殖延迟\n以帧为单位减少繁殖延迟",
        fallDelay="线路清除延迟\n以帧为单位减少线路清除延迟",
        life="寿命\n更改附加寿命的初始数量",
        forceB2B="仅商对商\n当商对商仪表下降到初始线以下时,停止游戏",
        forceFinesse="仅使用技巧\n在出现任何技巧错误的情况下使用该游戏",
        tele="远程传送\n强制0达斯和0啊",
        noRotation="无旋转\n不允许工件旋转",
        noMove="无移动\n禁止左右移动",
        customSeq="随机发生器\n为块序列生成随机发生器",
        pushSpeed="垃圾速度\n降低垃圾线(块/帧)的上升速度",
        boneBlock="[]\n使用[]块播放",
    },
    pauseStat={
        "时间:",
        "按键/旋转/保持:",
        "作品:",
        "行/挖掘:",
        "攻击/数字攻击:",
        "收到:",
        "清除:",
        "旋转:",
        "商对商/商对商对商/个人电脑/直升机长:",
        "技巧:",
    },
    radar={"很棒","关","攻击","发送","自给能探测器","挖掘"},
    radarData={"下午","认证确定包标记","高级电源管理","冲击脉冲","下午好","每分钟衰变"},
    stat={
        "推出的时报:",
        "播放计数:",
        "播放时间:",
        "按键/旋转/保持:",
        "块/行/攻击.:",
        "记录/记录/分类:",
        "挖掘/挖掘:",
        "效率/挖掘效率:",
        "商对商/商对商对商:",
        "个人电脑/直升机长:",
        "技巧错误/技巧率:",
    },
    aboutTexts={
        "这只是一个普通的积木堆垛机。真的,就这样",
        "它的灵感来自C2/IO/JS/WWC/KOS等",
        "",
        "以LÖVE为动力",
        "任何建议或错误报告都将不胜感激!",
        "确保只从官方渠道获得游戏,",
        "因为如果你在别处找到它,我们无法确保你的安全",
        "作者不对任何修改负责",
        "虽然游戏是免费的,但我们感谢捐款"
    },
    staff={
        "作者:MrZ  邮箱:1046101471@qq.com",
        "使用LÖVE引擎",
        "",
        "程序: MrZ, 粒子G, [呵呵, FinnTenzor]",
        "美术: MrZ, Gnyar, ScF, C29H25N3O5, [旋律星萤, T0722]",
        "音乐: MrZ, 柒栎流星, ERM, 特雷伯尔, [T0722, 以太]",
        "音效/语音: Miya, 小亚, 东西, MrZ, Trebor",
        "演出: 模电, HBM",
        "翻译: User670, MattMayuga, Mizu, Mr.Faq, ScF, C29H25N3O5",
        "",
        "特别感谢:",
        "Flyz, 大真, 不是机器人, 思竣, yuhao7370",
        "放屁者, 茶管, 蕴空之灵, T9972, [All test staff]",
    },
    used=[[
    使用工具:
        Beepbox
        Goldwave
        GFIE
        FL Mobile
    使用库:
        Cold_Clear [MinusKelvin]
        json.lua [rxi]
        profile.lua [itraykov]
        simple-love-lights [dylhunn]
    ]],
    support="支持作者",
    group="加入我们的不谐和:不谐和.gg/f9pUvkh",
    WidgetText={
        main={
            offline="单人",
            qplay="最后一场",
            online="多人游戏",
            custom="定制游戏",
            setting="设置",
            stat="统计",
            music="音乐与东南",
            dict="四联词典",
            replays="重播",
        },
        main_simple={
            sprint="冲刺",
            marathon="马拉松赛跑",
        },
        mode={
            mod="多器官功能障碍(F1)",
            start="开始",
        },
        mod={
            title="多器官功能障碍",
            reset="重置(选项卡)",
            unranked="未分级",
        },
        pause={
            setting="设置",
            replay="重播(P)",
            save="保存(O)",
            resume="恢复(esc)",
            restart="重试(R)",
            quit="退出(Q)",
            tas="TAS(T)",
        },
        net_menu={
            league="技术联盟",
            ffa="游离脂肪酸",
            rooms="房间",
            logout="注销",
        },
        net_league={
            match="找到匹配项",
        },
        net_rooms={
            password="密码",
            refreshing="清新的房间",
            noRoom="现在没有房间了...",
            refresh="刷新",
            new="新房间",
            join="参加",
        },
        net_newRoom={
            title="房间配置",
            roomName="房间名称(默认为用户名的房间)",
            password="密码",
            description="房间描述",

            life="生活",
            pushSpeed="推进速度",
            garbageSpeed="垃圾速度",
            visible="可见度",
            freshLimit="锁定重置限制",

            fieldH="田间高度",
            bufferLimit="缓冲区限制",
            heightLimit="高度限制",

            drop="下降延迟",
            lock="锁定延迟",
            wait="进入延迟",
            fall="线路延迟",

            capacity="容量",
            create="创造",

            ospin="O型自旋",
            fineKill="100%精巧",
            b2bKill="没有商对商中断",
            easyFresh="正常锁复位",
            deepDrop="深滴",
            bone="骨块",

            eventSet="规则集",

            holdMode="持有模式",
            nextCount="下一个",
            holdCount="持有",
            infHold="无限持有",
            phyHold="原地等待",
        },
        net_game={
            ready="准备好的",
            spectate="凝视",
            cancel="取消",
        },
        setting_game={
            title="游戏设置",
            graphic="←视频",
            sound="声音→",

            ctrl="控制设置",
            key="键映射",
            touch="触摸设置",
            reTime="启动延迟",
            RS="轮换制",
            layout="布局",
            menuPos="菜单按钮位置",
            sysCursor="使用系统游标",
            autoPause="心不在焉",
            swap="组合键(更改攻击模式)",
            autoSave="自动保存新的最佳",
            simpMode="简单化风格",
        },
        setting_video={
            title="视频设置",
            sound="←声音",
            game="游戏→",

            block="绘图块",
            smooth="滑落",
            upEdge="三维块",
            bagLine="袋式分离器",

            ghostType="鬼型",
            ghost="鬼魂",
            center="居中",
            grid="网格",
            lineNum="线路号",

            lockFX="锁定外汇",
            dropFX="下降外汇",
            moveFX="移动外汇",
            clearFX="外汇结算",
            splashFX="飞溅外汇",
            shakeFX="磁场摆动",
            atkFX="攻击外汇",

            frame="渲染帧率(%)",
            FTlock="逻辑追帧",

            text="行清除弹出窗口",
            score="分数弹出窗口",
            bufferWarn="缓冲区警报",
            showSpike="尖峰计数器",
            nextPos="下次预览",
            highCam="屏幕滚动",
            warn="危险警报",

            clickFX="单击外汇",
            power="电源信息",
            clean="快速绘制",
            fullscreen="全屏",
            bg="背景",

            blockSatur="块饱和",
            fieldSatur="场饱和",
        },
        setting_sound={
            title="声音设置",

            game="←游戏",
            graphic="视频→",

            mainVol="主卷",
            bgm="背景音乐",
            sfx="特技效果",
            stereo="立体声",
            spawn="发出声音",
            warn="警告",
            vib="振动",
            voc="声音",

            autoMute="不聚焦时保持沉默",
            fine="精细度误差",
            sfxPack="特技效果包",
            vocPack="语音包",
            apply="申请",
        },
        setting_control={
            title="控制设置",
            preview="预览",

            das="达斯",arr="啊",
            dascut="达斯切",
            dropcut="自动锁定切割",
            sddas="软滴达斯",sdarr="软降啊",
            ihs="初始持有",
            irs="初始旋转",
            ims="初始运动",
            reset="重置",
        },
        setting_key={
            a1="向左移动",
            a2="向右方移动",
            a3="右转",
            a4="向左旋转",
            a5="旋转180°",
            a6="硬滴",
            a7="软滴",
            a8="持有",
            a9="功能1",
            a10="功能2",
            a11="立即离开",
            a12="即时权利",
            a13="音降",
            a14="向下1",
            a15="下降4",
            a16="下降10",
            a17="左撇子",
            a18="右转",
            a19="左桑吉",
            a20="右桑吉",
            restart="重试",
        },
        setting_skin={
            skinSet="块状皮肤",
            title="布局设置",
            skinR="重置颜色",
            faceR="重置目录",
        },
        setting_touch={
            default="违约",
            snap="断裂",
            save1="储蓄1",
            load1="负载1",
            save2="储蓄2",
            load2="负载2",
            size="大小",
            shape="形状",
        },
        setting_touchSwitch={
            b1= "向左移动:",   b2="右移:",  b3="右转:",    b4="向左旋转:",
            b5= "旋转180°:",  b6="硬滴:",  b7="软跌落:",   b8="持有:",
            b9= "职能1:",    b10="职能2:", b11="立即离开:",b12="即时权利:",
            b13="音降:",     b14="下降1:", b15="下降4:",  b16="下降10:",
            b17="左下降:",    b18="右下角:",b19="左桑吉:",  b20="右桑吉:",

            norm="正常",
            pro="专业的",
            hide="显示虚拟密钥",
            icon="偶像",
            sfx="特技效果",
            vib="振动",
            alpha="阿尔法",

            track="自动跟踪",
            dodge="自动闪避",
        },
        customGame={
            title="定制游戏",
            defSeq="默认顺序",
            noMsn="没有任务",

            drop="下降延迟",
            lock="锁定延迟",
            wait="进入延迟",
            fall="线路延迟",

            bg="背景",
            bgm="音乐",

            copy="复制字段+序号+使命",
            paste="粘贴字段+序号+使命",
            clear="清场",
            puzzle="开始拼图",

            reset="复位(Del)",
            advance="更多(A)",
            mod="多器官功能障碍(F1)",
            field="编辑字段(F)",
            sequence="编辑序列(S)",
            mission="编辑任务(M)",

            eventSet="规则集",

            holdMode="持有模式",
            nextCount="下一个",
            holdCount="持有",
            infHold="无限持有",
            phyHold="原地等待",

            fieldH="田间高度",
            visible="可见度",
            freshLimit="锁定重置限制",
            opponent="对手",
            life="生活",
            pushSpeed="推进速度",
            garbageSpeed="垃圾速度",

            bufferLimit="缓冲区限制",
            heightLimit="高度限制",
            ospin="O型自旋",
            fineKill="100%精巧",
            b2bKill="没有商对商中断",
            easyFresh="正常锁复位",
            deepDrop="深滴",
            bone="骨块",
        },
        custom_field={
            title="定制游戏",
            subTitle="领域",

            any="擦除",
            space="×",
            smart="聪明的",

            push="添加行(K)",
            del="中线(L)",

            copy="复制",
            paste="粘贴",
            clear="清空",
            demo="不要展示",

            newPg="新页(N)",
            delPg="德尔佩奇(M)",
            prevPg="前页",
            nextPg="下一页",
        },
        custom_sequence={
            title="定制游戏",
            subTitle="序列",

            sequence="序列",

            Z="Z",S="s",J="J",L="L",T="T",O="O",I="我",left="←",right="→",ten="→→",backsp="<X",reset="重置",
            Z5="Z5",S5="S5",P="P",Q="Q",F="F",E="E",T5="T5",U="U",I3="I3",C="C",rnd="兰德",
            V="v",W="W",X="X",J5="J5",L5="L5",R="R",Y="Y",N="N",H="H",I5="I5",I2="I2",O1="O1",
            copy="复制",paste="粘贴",
        },
        custom_mission={
            title="定制游戏",
            subTitle="使命",

            _1="1.",_2="2.",_3="3.",_4="4.",
            any1="any1",any2="any2",any3="any3",any4="任何4",
            PC="个人电脑",
            Z1="Z1",S1="S1",J1="J1",L1="L1",T1="T1",O1="O1",I1="I1",
            Z2="Z2",S2="S2",J2="J2",L2="L2",T2="T2",O2="氧气",I2="I2",
            Z3="Z3",S3="S3",J3="J3",L3="L3",T3="T3",O3="臭氧",I3="I3",
            O4="O4",I4="I4",
            left="←",right="→",
            ten="→→",
            backsp="<X",
            reset="R",
            copy="复制",
            paste="粘贴",
            mission="部队任务",
        },
        about={
            staff="工作人员",
            his="历史",
            qq="作者qq",
        },
        dict={
            title="四联词典",
            link="打开网页",
        },
        stat={
            path="打开数据文件夹",
            save="数据管理",
        },
        music={
            title="音乐培训室",
            arrow="→",
            now="现在播放:",

            bgm="背景音乐",
            sound="特技效果",
        },
        launchpad={
            title="特技效果",
            bgm="背景音乐",
            sfx="特技效果",
            voc="声音",
            music="音乐培训室",
        },
        login={
            title="登录",
            register="登记",
            email="电子邮件地址",
            password="密码",
            keepPW="记得我吗",
            login="登录",
        },
        register={
            title="登记",
            login="登录",
            username="用户名",
            email="电子邮件地址",
            password="密码",
            password2="重新输入密码",
            register="登记",
            registering="等待回应...",
        },
        account={
            title="账户",
        },
        app_15p={
            reset="洗牌",
            color="颜色",
            invis="英维斯",
            slide="滑动",
            pathVis="显示路径",
            revKB="逆转",
        },
        app_schulteG={
            reset="重置",
            rank="大小",
            invis="英维斯",
            disappear="隐藏",
            tapFX="Tap外汇",
        },
        app_pong={
            reset="重新启动",
        },
        app_AtoZ={
            level="水平仪",
            keyboard="键盘",
            reset="重置",
        },
        app_2048={
            reset="重置",
            invis="英维斯",
            tapControl="抽头控制",

            skip="跳转",
        },
        app_ten={
            reset="重置",
            next="下一个",
            invis="英维斯",
            fast="快速的",
        },
        app_dtw={
            reset="重置",
            color="颜色",
            mode="模式",
            bgm="背景音乐",
            arcade="游乐中心",
        },
        app_link={
            reset="重置",
            invis="英维斯",
        },
        savedata={
            export="导出到剪贴板",
            import="从剪贴板导入",
            unlock="进展",
            data="统计数据",
            setting="设置",
            vk="虚拟密钥布局",

            couldSave="云存储(注意:测试)",
            notLogin="[登录以访问云存储]",
            upload="上传到云",
            download="从云端下载",
        },
        error={
            console="安慰",
            quit="退出",
        },
    },
    modes={
        ['sprint_10l']=    {"冲刺",            "10升",        "清除10行!"},
        ['sprint_20l']=    {"冲刺",            "20升",        "清除20行!"},
        ['sprint_40l']=    {"冲刺",            "40升",        "清除40行!"},
        ['sprint_100l']=   {"冲刺",            "100升",       "清除100行!"},
        ['sprint_400l']=   {"冲刺",            "400升",       "清除400行!"},
        ['sprint_1000l']=  {"冲刺",            "1000升",      "清除1000行!"},
        ['sprintPenta']=   {"冲刺",            "五联骨牌",      "40升,配18个五分钟"},
        ['sprintMPH']=     {"冲刺",            "每小时英里数",   "无记忆\n无先前\n无记忆"},
        ['dig_10l']=       {"挖掘",            "10升",        "挖10条垃圾线"},
        ['dig_40l']=       {"挖掘",            "40升",        "挖40条垃圾线"},
        ['dig_100l']=      {"挖掘",            "100升",       "挖100条垃圾线"},
        ['dig_400l']=      {"挖掘",            "400升",       "挖400条垃圾线"},
        ['drought_n']=     {"干旱",            "100升",       "没有工装"},
        ['drought_l']=     {"干旱+",           "100升",       "搞什么呀"},
        ['stack_e']=       {"堆栈",            "容易",         "打包!"},
        ['stack_h']=       {"堆栈",            "硬的",         "打包!"},
        ['stack_u']=       {"堆栈",            "终极",         "打包!"},
        ['marathon_n']=    {"马拉松赛跑",        "正常",         "200线加速马拉松"},
        ['marathon_h']=    {"马拉松赛跑",        "硬的",         "200线高速马拉松"},
        ['solo_e']=        {"战争",            "容易",         "打败AI!"},
        ['solo_n']=        {"战争",            "正常",         "打败AI!"},
        ['solo_h']=        {"战争",            "硬的",         "打败AI!"},
        ['solo_l']=        {"战争",            "疯子",         "打败AI!"},
        ['solo_u']=        {"战争",            "终极",         "打败AI!"},
        ['techmino49_e']=  {"技术49",          "容易",         "49人战斗\n最后一个站着的人获胜"},
        ['techmino49_h']=  {"技术49",          "硬的",         "49人战斗\n最后一个站着的人获胜"},
        ['techmino49_u']=  {"技术49",          "终极",         "49人战斗\n最后一个站着的人获胜"},
        ['techmino99_e']=  {"科技99",          "容易",         "99人战斗\n最后一个站着的人获胜"},
        ['techmino99_h']=  {"科技99",          "硬的",         "99人战斗\n最后一个站着的人获胜"},
        ['techmino99_u']=  {"科技99",          "终极",         "99人战斗\n最后一个站着的人获胜"},
        ['round_e']=       {"回合制",           "容易",        "轮流玩AI!"},
        ['round_n']=       {"回合制",           "正常",        "轮流玩AI!"},
        ['round_h']=       {"回合制",           "硬的",         "轮流玩AI!"},
        ['round_l']=       {"回合制",           "疯子",         "轮流玩AI!"},
        ['round_u']=       {"回合制",           "终极",         "轮流玩AI!"},
        ['master_n']=      {"主人",            "正常",         "适合20G初学者"},
        ['master_h']=      {"主人",            "硬的",         "20克的职业选手"},
        ['master_m']=      {"主人",            "M21",         "20克大师赛"},
        ['master_final']=  {"主人",            "最终",         "20G及以上"},
        ['master_ph']=     {"主人",            "幻觉",         "???"},
        ['master_ex']=     {"大师",            "额外的",        "比瞬间还短的永恒"},
        ['rhythm_e']=      {"节奏",            "容易",         "200线低节奏马拉松"},
        ['rhythm_h']=      {"节奏",            "硬的",         "200线中等节奏马拉松"},
        ['rhythm_u']=      {"节奏",            "终极",         "200线高节奏马拉松"},
        ['blind_e']=       {"看不见的",         "一半",         "对于新手来说"},
        ['blind_n']=       {"看不见的",         "全部",         "对于中间产品"},
        ['blind_h']=       {"看不见的",         "突然",         "对于有经验的人"},
        ['blind_l']=       {"看不见的",         "突然+",        "对于专业人士"},
        ['blind_u']=       {"看不见的",         "?",           "你准备好了吗?"},
        ['blind_wtf']=     {"看不见的",         "世界跆拳道联盟",   "你还没准备好"},
        ['classic_e']=     {"经典",            "容易",         "80年代的低速娱乐"},
        ['classic_h']=     {"经典",            "困难",         "80年代的中速娱乐"},
        ['classic_u']=     {"经典",            "终极",         "80年代的高速娱乐"},
        ['survivor_e']=    {"幸存者",           "容易",        "你能活多久?"},
        ['survivor_n']=    {"幸存者",           "正常",        "你能活多久?"},
        ['survivor_h']=    {"幸存者",           "硬的",         "你能活多久?"},
        ['survivor_l']=    {"幸存者",           "疯子",         "你能活多久?"},
        ['survivor_u']=    {"幸存者",           "终极",         "你能活多久?"},
        ['attacker_h']=    {"攻击者",           "硬的",         "练习你的进攻技巧!"},
        ['attacker_u']=    {"攻击者",           "终极",         "练习你的进攻技巧!"},
        ['defender_n']=    {"防守者",           "正常",         "练习你的防守技巧!"},
        ['defender_l']=    {"防守者",           "疯子",         "练习你的防守技巧!"},
        ['dig_h']=         {"钻机",            "硬的",         "挖掘练习!"},
        ['dig_u']=         {"钻机",            "终极",         "挖掘练习!"},
        ['bigbang']=       {"大爆炸",           "容易",         "所有旋转教程\n[在建]"},
        ['c4wtrain_n']=    {"C4W训练",         "正常",         "无限组合"},
        ['c4wtrain_l']=    {"C4W训练",         "疯子",         "无限组合"},
        ['pctrain_n']=     {"电脑培训",          "正常",        "完美清晰的实践"},
        ['pctrain_l']=     {"电脑培训",          "疯子",        "更难的完美清晰的练习"},
        ['pc_n']=          {"电脑挑战",          "正常",        "让电脑在100线以内!"},
        ['pc_h']=          {"电脑挑战",          "硬的",        "让电脑在100线以内!"},
        ['pc_l']=          {"电脑挑战",          "疯子",        "让电脑在100线以内!"},
        ['pc_inf']=        {"无尽个人电脑挑战",    "",            "尽可能多地获取个人电脑"},
        ['tech_n']=        {"技术人员",          "正常",        "请尝试保持\n向后链接!"},
        ['tech_n_plus']=   {"技术人员",          "正常+",       "仅限旋转和个人电脑"},
        ['tech_h']=        {"技术人员",          "硬的",        "请尝试保持\n向后链接!"},
        ['tech_h_plus']=   {"技术人员",          "硬的+",       "仅限旋转和个人电脑"},
        ['tech_l']=        {"技术人员",          "疯子",        "请尝试保持\n向后链接!"},
        ['tech_l_plus']=   {"技术人员",          "疯子+",       "仅限旋转和个人电脑"},
        ['tech_finesse']=  {"技术人员",          "手腕",        "没有技巧错误!"},
        ['tech_finesse_f']={"技术人员",          "技巧+",       "没有正常的清除和技巧错误!"},
        ['tsd_e']=         {"热关断挑战赛",       "容易",         "只有T-Spin双打!"},
        ['tsd_h']=         {"热关断挑战赛",       "硬的",         "只有T-Spin双打!"},
        ['tsd_u']=         {"热关断挑战赛",       "终极",         "只有T-Spin双打!"},
        ['backfire_n']=    {"适得其反",          "正常",        "挡住回火的垃圾管道"},
        ['backfire_h']=    {"适得其反",          "硬的",        "挡住回火的垃圾管道"},
        ['backfire_l']=    {"适得其反",          "疯子",        "挡住回火的垃圾管道"},
        ['backfire_u']=    {"适得其反",          "终极",        "挡住回火的垃圾管道"},
        ['sprintAtk']=     {"冲刺",            "100次攻击",     "发送100行!"},
        ['zen']=           {'Zen',            "200",        "没有时间限制的200线跑步"},
        ['ultra']=         {'Ultra',          "额外",        "2分钟的得分进攻"},
        ['infinite']=      {'infinite',        "",          "这只是一个沙箱"},
        ['infinite_dig']=  {"无限:挖掘",         "",           "挖,挖,挖"},

        ['sprintFix']=     {"冲刺",            "没有左/右"},
        ['sprintLock']=    {"冲刺",            "不轮换"},
        ['sprintSmooth']=  {"冲刺",            "无摩擦"},
        ['marathon_bfmax']={"马拉松赛跑",        "终极"} ,
        ['sprintMD']=      {"竞速",            "失误"},
        ['sprintSym']=     {"竞速",            "对称性"},

        ['master_l']=      {"主人",            "疯子"},
        ['master_u']=      {"主人",            "终极"} ,

        ['custom_clear']=  {"习俗",            "正常"} ,
        ['custom_puzzle']= {"习俗",            "令人费解的"},
    },
    getTip={refuseCopy=true,
        '免费玩积木游戏与战斗皇家模式!',
        '你注意到什么了吗?"旋转的"去一个街区有什么用?',
        ":pog:",
        "(RUR'U')R'FR2U'R'U'(RUR'F')",
        "\\jezevec/\\jezevec/\\jezevec/",
        "\\osk/\\osk/\\osk/",
        "↑↑↓↓←→←→文学士",
        "$include<studio.h>",
        "0下一个0等待",
        "1下一个0等待",
        "1下一个1等待!",
        "1下一个6等待!",
        "20G实际上是一个全新的游戏规则",
        "40线冲刺WR:14.915s重置",
        "6下一个1等待!",
        "6下一个6等一下?!",
        "成就系统即将推出!",
        "旋转!",
        "Am G F G",
        "商对商对商???",
        "商对商不存在",
        "商对商存在吗?",
        "背靠背技术崩溃,10连击,个人电脑!",
        "今天一定要再次尽你最大的努力!",
        "桥很快就清了!",
        "你能熟练掌握这个现代而又熟悉的堆垛机吗?",
        "在不谐和上可以找到英语的变更日志",
        "颜色很快就会清晰!",
        "酷!",
        "降低达斯和啊速度更快,但更难控制",
        "我刚才看到的是背靠背吗?",
        "不要让一个小故障毁掉你的一天!",
        "不要直接看虫子!",
        "享受技术米诺旋转系统!",
        "太好了,但下次我们要做得更好",
        "找出设置中的内容!",
        "有什么建议吗?在我们的不谐和中发布它们!",
        "建议佩戴耳机以获得更好的体验",
        "你好,世界!",
        "I3和L3是仅有的两种独特的三聚体",
        "如果a==真",
        "提高帧速率以获得更好的体验",
        "初始[插入操作]系统可以节省您的时间",
        "商对商可能吗?",
        "无需左/右按钮即可完成40升",
        "它真的在加载!不仅仅是一个剪贴画!",
        "加入我们的纷争吧!",
        "让贝斯踢!",
        "LrL RlR LLr RRl RRR LLL FFF RfR RRf rFF",
        "路亚一号",
        "快来了!",
        "这个游戏的音乐是使用Beepbox制作的",
        "音乐太让人分心了?你可以把它关掉",
        "如果您启用了简单化样式,则此菜单中没有复活节彩蛋!",
        "旋转三倍!",
        "啊,啊,啊,啊",
        "已计划在线模式-请耐心等待",
        "单枪匹马!",
        "玩得好需要一些时间!",
        "以LÖVE为动力",
        "由团..LÖVE为动力",
        "pps-0.01",
        "后悔",
        "秘密号码:626",
        "服务器随机关闭",
        "一些达到S级的要求被故意设定为即使是最好的球员也很难达到",
        "很快,你就可以和全世界的朋友和敌人比赛了",
        "马上就来!",
        "技术米诺=技术+特特罗米诺",
        "技术米诺有一个Nspire CX版本!",
        "太有趣了!",
        "四词典现在有英文版本",
        "在技术米诺,堆垛机的未来属于您!",
        "游戏中有四种隐藏模式",
        "总共有18种不同的五分音符",
        "总共有7种不同的河豚",
        "尝试使用多个等待队列!",
        "尝试使用两个旋转按钮。使用这三种方法会更好",
        "警告:程序员艺术",
        "20件怎么样?",
        "100条生产线23件怎么样?",
        "26个热关断怎么样?",
        "这个便宜的界面和音乐是什么",
        "当(假)",
        "你是大师!",
        "您可以将键盘连接到手机或平板电脑!",
        "您可以使用键盘浏览菜单,但仅限于此屏幕",
        "您可以从统计数据页面打开保存目录",
        "在这个游戏中,你可以用29个米诺中的28个进行旋转;例外情况是O1",
        "您可以为每个四格拼板设置繁殖方向",
        "ZS JL T O I",
        {C.C,"也试试15拼图!"},
        {C.C,"还试试我的世界!"},
        {C.C,"也试试扫雷艇!"},
        {C.C,"也试试奥兹米奇!"},
        {C.C,"也试试俄亥俄州立大学!"},
        {C.C,"也试试菲格罗斯!"},
        {C.C,"也试试魔方!"},
        {C.C,"也试试特拉里亚!"},
        {C.C,"也试试VVVVVV!"},
        {C.H,"后悔"},
        {C.lR,"Z",C.lG,"s",C.lS,"J",C.lO,"L",C.lP,"T",C.lY,"O",C.lC,"我"},
        {C.lY,"酷!"},
        {C.N,"Lua",C.Z,"第一"},
        {C.P,"旋转!"},
        {C.R,"\"滥用数字千年版权法\""},
        {C.R,"\"知识产权法\""},
        {C.R,"DT",C.Z,"大炮=",C.P,"TS",C.R,"D",C.Z,"+",C.P,"TS",C.R,"T",C.Z,"大炮"},
        {C.R,"LrL",C.G,"RlR",C.B,"LLr",C.O,"RRl",C.P,"存款准备金率",C.P,"微光",C.C,"FFF",C.Y,"RfR",C.Y,"RRf",C.Y,"rFF"},
        {C.Y,"旋转三倍!"},
        {C.Z,"什么?",C.lC,"Xspin?"},
    }
}
