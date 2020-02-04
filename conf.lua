function love.conf(t)
    local X=nil
    t.identity="Techmino"--The name of the save directory (string)
    t.appendidentity=X--Search files in source directory before save directory (boolean)
    t.version="11.1"
    t.console=X
    t.accelerometerjoystick=X--Enable the accelerometer on iOS and Android by exposing it as a Joystick (boolean)
    t.externalstorage=X
    t.gammacorrect=true
    -- t.audio.mixwithsystem=true--Keep background music playing when opening LOVE (boolean, iOS and Android only)

    t.window.title="Techmino V0.2"
    t.window.icon="/image/icon.png"
    t.window.width=1280
    t.window.height=720
    t.window.borderless=X
    t.window.resizable=true
    t.window.minwidth=640
    t.window.minheight=360
    t.window.fullscreen=X
    t.window.fullscreentype="desktop"--Choose between "desktop" fullscreen or "exclusive" fullscreen mode (string)
    t.window.vsync=1
    t.window.msaa=X--The number of samples to use with multi-sampled antialiasing (number)
    t.window.depth=X--The number of bits per sample in the depth buffer
    t.window.stencil=1--The number of bits per sample in the stencil buffer
    t.window.display=1--Monitor ID
    t.window.highdpi=X--Enable high-dpi mode for the window on a Retina display (boolean)
    t.window.x=nil
    t.window.y=nil
	
    t.modules.window=true
    t.modules.system=true
    t.modules.audio=true
    t.modules.data=true
    t.modules.event=true
    t.modules.font=true
    t.modules.graphics=true
    t.modules.image=true
    t.modules.joystick=true
    t.modules.keyboard=true
    t.modules.math=true
    t.modules.mouse=true
    t.modules.sound=true
    t.modules.timer=true
    t.modules.touch=true
    t.modules.physics=X
    t.modules.thread=X
    t.modules.video=X
end