local path = (...):match('(.-)[^%./]+$')

return {
    version = '11.2',
    functions = {
        {
            name = 'getVersion',
            description = 'Gets the current running version of LÖVE.',
            variants = {
                {
                    description = 'For LÖVE versions below 0.9.1, the following variables can be used instead (and still work in 0.9.2 and newer):\n\nlove._version_major\n\nlove._version_minor\n\nlove._version_revision',
                    returns = {
                        {
                            type = 'number',
                            name = 'major',
                            description = 'The major version of LÖVE, i.e. 0 for version 0.9.1.',
                        },
                        {
                            type = 'number',
                            name = 'minor',
                            description = 'The minor version of LÖVE, i.e. 9 for version 0.9.1.',
                        },
                        {
                            type = 'number',
                            name = 'revision',
                            description = 'The revision version of LÖVE, i.e. 1 for version 0.9.1.',
                        },
                        {
                            type = 'string',
                            name = 'codename',
                            description = 'The codename of the current version, i.e. \'Baby Inspector\' for version 0.9.1.',
                        },
                    },
                },
            },
        },
        {
            name = 'hasDeprecationOutput',
            description = 'Gets whether LÖVE displays warnings when using deprecated functionality. It is disabled by default in fused mode, and enabled by default otherwise.\n\nWhen deprecation output is enabled, the first use of a formally deprecated LÖVE API will show a message at the bottom of the screen for a short time, and print the message to the console.',
            variants = {
                {
                    returns = {
                        {
                            type = 'boolean',
                            name = 'enabled',
                            description = 'Whether deprecation output is enabled.',
                        },
                    },
                },
            },
        },
        {
            name = 'setDeprecationOutput',
            description = 'Sets whether LÖVE displays warnings when using deprecated functionality. It is disabled by default in fused mode, and enabled by default otherwise.\n\nWhen deprecation output is enabled, the first use of a formally deprecated LÖVE API will show a message at the bottom of the screen for a short time, and print the message to the console.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'boolean',
                            name = 'enable',
                            description = 'Whether to enable or disable deprecation output.',
                        },
                    },
                },
            },
        },
    },
    callbacks = {
        {
            name = 'directorydropped',
            description = 'Callback function triggered when a directory is dragged and dropped onto the window.',
            variants = {
                {
                    description = 'Paths passed into this callback are able to be used with love.filesystem.mount, which is the only way to get read access via love.filesystem to the dropped directory. love.filesystem.mount does not generally accept other full platform-dependent directory paths that haven\'t been dragged and dropped onto the window.',
                    arguments = {
                        {
                            type = 'string',
                            name = 'path',
                            description = 'The full platform-dependent path to the directory. It can be used as an argument to love.filesystem.mount, in order to gain read access to the directory with love.filesystem.',
                        },
                    },
                },
            },
        },
        {
            name = 'draw',
            description = 'Callback function used to draw on the screen every frame.',
            variants = {
                {
                },
            },
        },
        {
            name = 'errorhandler',
            description = 'The error handler, used to display error messages.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'string',
                            name = 'msg',
                            description = 'The error message.',
                        },
                    },
                },
            },
        },
        {
            name = 'filedropped',
            description = 'Callback function triggered when a file is dragged and dropped onto the window.',
            variants = {
                {
                    description = '',
                    arguments = {
                        {
                            type = 'DroppedFile',
                            name = 'file',
                            description = 'The unopened File object representing the file that was dropped.',
                        },
                    },
                },
            },
        },
        {
            name = 'focus',
            description = 'Callback function triggered when window receives or loses focus.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'boolean',
                            name = 'focus',
                            description = 'True if the window gains focus, false if it loses focus. ',
                        },
                    },
                },
            },
        },
        {
            name = 'gamepadaxis',
            description = 'Called when a Joystick\'s virtual gamepad axis is moved.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Joystick',
                            name = 'joystick',
                            description = 'The joystick object.',
                        },
                        {
                            type = 'GamepadAxis',
                            name = 'axis',
                            description = 'The virtual gamepad axis.',
                        },
                        {
                            type = 'number',
                            name = 'value',
                            description = 'The new axis value.',
                        },
                    },
                },
            },
        },
        {
            name = 'gamepadpressed',
            description = 'Called when a Joystick\'s virtual gamepad button is pressed.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Joystick',
                            name = 'joystick',
                            description = 'The joystick object.',
                        },
                        {
                            type = 'GamepadButton',
                            name = 'button',
                            description = 'The virtual gamepad button.',
                        },
                    },
                },
            },
        },
        {
            name = 'gamepadreleased',
            description = 'Called when a Joystick\'s virtual gamepad button is released.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Joystick',
                            name = 'joystick',
                            description = 'The joystick object.',
                        },
                        {
                            type = 'GamepadButton',
                            name = 'button',
                            description = 'The virtual gamepad button.',
                        },
                    },
                },
            },
        },
        {
            name = 'joystickadded',
            description = 'Called when a Joystick is connected.',
            variants = {
                {
                    description = 'This callback is also triggered after love.load for every Joystick which was already connected when the game started up.',
                    arguments = {
                        {
                            type = 'Joystick',
                            name = 'joystick',
                            description = 'The newly connected Joystick object.',
                        },
                    },
                },
            },
        },
        {
            name = 'joystickaxis',
            description = 'Called when a joystick axis moves.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Joystick',
                            name = 'joystick',
                            description = 'The joystick object.',
                        },
                        {
                            type = 'number',
                            name = 'axis',
                            description = 'The axis number.',
                        },
                        {
                            type = 'number',
                            name = 'value',
                            description = 'The new axis value.',
                        },
                    },
                },
            },
        },
        {
            name = 'joystickhat',
            description = 'Called when a joystick hat direction changes.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Joystick',
                            name = 'joystick',
                            description = 'The joystick object.',
                        },
                        {
                            type = 'number',
                            name = 'hat',
                            description = 'The hat number.',
                        },
                        {
                            type = 'JoystickHat',
                            name = 'direction',
                            description = 'The new hat direction.',
                        },
                    },
                },
            },
        },
        {
            name = 'joystickpressed',
            description = 'Called when a joystick button is pressed.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Joystick',
                            name = 'joystick',
                            description = 'The joystick object.',
                        },
                        {
                            type = 'number',
                            name = 'button',
                            description = 'The button number.',
                        },
                    },
                },
            },
        },
        {
            name = 'joystickreleased',
            description = 'Called when a joystick button is released.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Joystick',
                            name = 'joystick',
                            description = 'The joystick object.',
                        },
                        {
                            type = 'number',
                            name = 'button',
                            description = 'The button number.',
                        },
                    },
                },
            },
        },
        {
            name = 'joystickremoved',
            description = 'Called when a Joystick is disconnected.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Joystick',
                            name = 'joystick',
                            description = 'The now-disconnected Joystick object.',
                        },
                    },
                },
            },
        },
        {
            name = 'keypressed',
            description = 'Callback function triggered when a key is pressed.',
            variants = {
                {
                    description = 'Scancodes are keyboard layout-independent, so the scancode \'w\' will be generated if the key in the same place as the \'w\' key on an American keyboard is pressed, no matter what the key is labelled or what the user\'s operating system settings are.\n\nKey repeat needs to be enabled with love.keyboard.setKeyRepeat for repeat keypress events to be received. This does not affect love.textinput.',
                    arguments = {
                        {
                            type = 'KeyConstant',
                            name = 'key',
                            description = 'Character of the pressed key.',
                        },
                        {
                            type = 'Scancode',
                            name = 'scancode',
                            description = 'The scancode representing the pressed key.',
                        },
                        {
                            type = 'boolean',
                            name = 'isrepeat',
                            description = 'Whether this keypress event is a repeat. The delay between key repeats depends on the user\'s system settings.',
                        },
                    },
                },
                {
                    description = 'Key repeat needs to be enabled with love.keyboard.setKeyRepeat for repeat keypress events to be received.',
                    arguments = {
                        {
                            type = 'KeyConstant',
                            name = 'key',
                            description = 'Character of the key pressed.',
                        },
                        {
                            type = 'boolean',
                            name = 'isrepeat',
                            description = 'Whether this keypress event is a repeat. The delay between key repeats depends on the user\'s system settings.',
                        },
                    },
                },
            },
        },
        {
            name = 'keyreleased',
            description = 'Callback function triggered when a keyboard key is released.',
            variants = {
                {
                    description = 'Scancodes are keyboard layout-independent, so the scancode \'w\' will be used if the key in the same place as the \'w\' key on an American keyboard is pressed, no matter what the key is labelled or what the user\'s operating system settings are.',
                    arguments = {
                        {
                            type = 'KeyConstant',
                            name = 'key',
                            description = 'Character of the released key.',
                        },
                        {
                            type = 'Scancode',
                            name = 'scancode',
                            description = 'The scancode representing the released key.',
                        },
                    },
                },
            },
        },
        {
            name = 'load',
            description = 'This function is called exactly once at the beginning of the game.',
            variants = {
                {
                    description = 'In LÖVE 11.0, the passed arguments excludes the game name and the fused command-line flag (if exist) when runs from non-fused LÖVE executable. Previous version pass the argument as-is without any filtering.',
                    arguments = {
                        {
                            type = 'table',
                            name = 'arg',
                            description = 'Command-line arguments given to the game.',
                        },
                        {
                            type = 'table',
                            name = 'unfilteredArg',
                            description = 'Unfiltered command-line arguments given to the executable (see #Notes).',
                        },
                    },
                },
            },
        },
        {
            name = 'lowmemory',
            description = 'Callback function triggered when the system is running out of memory on mobile devices.\n\nMobile operating systems may forcefully kill the game if it uses too much memory, so any non-critical resource should be removed if possible (by setting all variables referencing the resources to \'\'\'nil\'\'\'), when this event is triggered. Sounds and images in particular tend to use the most memory.',
            variants = {
                {
                },
            },
        },
        {
            name = 'mousefocus',
            description = 'Callback function triggered when window receives or loses mouse focus.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'boolean',
                            name = 'focus',
                            description = 'Whether the window has mouse focus or not.',
                        },
                    },
                },
            },
        },
        {
            name = 'mousemoved',
            description = 'Callback function triggered when the mouse is moved.',
            variants = {
                {
                    description = 'If Relative Mode is enabled for the mouse, the \'\'\'dx\'\'\' and \'\'\'dy\'\'\' arguments of this callback will update but \'\'\'x\'\'\' and \'\'\'y\'\'\' are not guaranteed to.',
                    arguments = {
                        {
                            type = 'number',
                            name = 'x',
                            description = 'The mouse position on the x-axis.',
                        },
                        {
                            type = 'number',
                            name = 'y',
                            description = 'The mouse position on the y-axis.',
                        },
                        {
                            type = 'number',
                            name = 'dx',
                            description = 'The amount moved along the x-axis since the last time love.mousemoved was called.',
                        },
                        {
                            type = 'number',
                            name = 'dy',
                            description = 'The amount moved along the y-axis since the last time love.mousemoved was called.',
                        },
                        {
                            type = 'boolean',
                            name = 'istouch',
                            description = 'True if the mouse button press originated from a touchscreen touch-press.',
                        },
                    },
                },
            },
        },
        {
            name = 'mousepressed',
            description = 'Callback function triggered when a mouse button is pressed.',
            variants = {
                {
                    description = 'Use love.wheelmoved to detect mouse wheel motion. It will not register as a button press in version 0.10.0 and newer.',
                    arguments = {
                        {
                            type = 'number',
                            name = 'x',
                            description = 'Mouse x position, in pixels.',
                        },
                        {
                            type = 'number',
                            name = 'y',
                            description = 'Mouse y position, in pixels.',
                        },
                        {
                            type = 'number',
                            name = 'button',
                            description = 'The button index that was pressed. 1 is the primary mouse button, 2 is the secondary mouse button and 3 is the middle button. Further buttons are mouse dependent.',
                        },
                        {
                            type = 'boolean',
                            name = 'istouch',
                            description = 'True if the mouse button press originated from a touchscreen touch-press.',
                        },
                        {
                            type = 'number',
                            name = 'presses',
                            description = 'The number of presses in a short time frame and small area, used to simulate double, triple clicks',
                        },
                    },
                },
            },
        },
        {
            name = 'mousereleased',
            description = 'Callback function triggered when a mouse button is released.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'x',
                            description = 'Mouse x position, in pixels.',
                        },
                        {
                            type = 'number',
                            name = 'y',
                            description = 'Mouse y position, in pixels.',
                        },
                        {
                            type = 'number',
                            name = 'button',
                            description = 'The button index that was released. 1 is the primary mouse button, 2 is the secondary mouse button and 3 is the middle button. Further buttons are mouse dependent.',
                        },
                        {
                            type = 'boolean',
                            name = 'istouch',
                            description = 'True if the mouse button release originated from a touchscreen touch-release.',
                        },
                        {
                            type = 'number',
                            name = 'presses',
                            description = 'The number of presses in a short time frame and small area, used to simulate double, triple clicks',
                        },
                    },
                },
            },
        },
        {
            name = 'quit',
            description = 'Callback function triggered when the game is closed.',
            variants = {
                {
                    returns = {
                        {
                            type = 'boolean',
                            name = 'r',
                            description = 'Abort quitting. If true, do not close the game.',
                        },
                    },
                },
            },
        },
        {
            name = 'resize',
            description = 'Called when the window is resized, for example if the user resizes the window, or if love.window.setMode is called with an unsupported width or height in fullscreen and the window chooses the closest appropriate size.',
            variants = {
                {
                    description = 'Calls to love.window.setMode will \'\'\'only\'\'\' trigger this event if the width or height of the window after the call doesn\'t match the requested width and height. This can happen if a fullscreen mode is requested which doesn\'t match any supported mode, or if the fullscreen type is \'desktop\' and the requested width or height don\'t match the desktop resolution.\n\nSince 11.0, this function returns width and height in DPI-scaled units rather than pixels.',
                    arguments = {
                        {
                            type = 'number',
                            name = 'w',
                            description = 'The new width.',
                        },
                        {
                            type = 'number',
                            name = 'h',
                            description = 'The new height.',
                        },
                    },
                },
            },
        },
        {
            name = 'run',
            description = 'The main function, containing the main loop. A sensible default is used when left out.',
            variants = {
                {
                    returns = {
                        {
                            type = 'function',
                            name = 'mainLoop',
                            description = 'Function which handlers one frame, including events and rendering when called.',
                        },
                    },
                },
            },
        },
        {
            name = 'textedited',
            description = 'Called when the candidate text for an IME (Input Method Editor) has changed.\n\nThe candidate text is not the final text that the user will eventually choose. Use love.textinput for that.',
            variants = {
                {
                    description = '',
                    arguments = {
                        {
                            type = 'string',
                            name = 'text',
                            description = 'The UTF-8 encoded unicode candidate text.',
                        },
                        {
                            type = 'number',
                            name = 'start',
                            description = 'The start cursor of the selected candidate text.',
                        },
                        {
                            type = 'number',
                            name = 'length',
                            description = 'The length of the selected candidate text. May be 0.',
                        },
                    },
                },
            },
        },
        {
            name = 'textinput',
            description = 'Called when text has been entered by the user. For example if shift-2 is pressed on an American keyboard layout, the text \'@\' will be generated.',
            variants = {
                {
                    description = 'Although Lua strings can store UTF-8 encoded unicode text just fine, many functions in Lua\'s string library will not treat the text as you might expect. For example, #text (and string.len(text)) will give the number of \'\'bytes\'\' in the string, rather than the number of unicode characters. The Lua wiki and a presentation by one of Lua\'s creators give more in-depth explanations, with some tips.\n\nThe utf8 library can be used to operate on UTF-8 encoded unicode text (such as the text argument given in this function.)\n\nOn Android and iOS, textinput is disabled by default; call love.keyboard.setTextInput to enable it.',
                    arguments = {
                        {
                            type = 'string',
                            name = 'text',
                            description = 'The UTF-8 encoded unicode text.',
                        },
                    },
                },
            },
        },
        {
            name = 'threaderror',
            description = 'Callback function triggered when a Thread encounters an error.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Thread',
                            name = 'thread',
                            description = 'The thread which produced the error.',
                        },
                        {
                            type = 'string',
                            name = 'errorstr',
                            description = 'The error message.',
                        },
                    },
                },
            },
        },
        {
            name = 'touchmoved',
            description = 'Callback function triggered when a touch press moves inside the touch screen.',
            variants = {
                {
                    description = 'The identifier is only guaranteed to be unique for the specific touch press until love.touchreleased is called with that identifier, at which point it may be reused for new touch presses.\n\nThe unofficial Android and iOS ports of LÖVE 0.9.2 reported touch positions as normalized values in the range of 1, whereas this API reports positions in pixels.',
                    arguments = {
                        {
                            type = 'light userdata',
                            name = 'id',
                            description = 'The identifier for the touch press.',
                        },
                        {
                            type = 'number',
                            name = 'x',
                            description = 'The x-axis position of the touch inside the window, in pixels.',
                        },
                        {
                            type = 'number',
                            name = 'y',
                            description = 'The y-axis position of the touch inside the window, in pixels.',
                        },
                        {
                            type = 'number',
                            name = 'dx',
                            description = 'The x-axis movement of the touch inside the window, in pixels.',
                        },
                        {
                            type = 'number',
                            name = 'dy',
                            description = 'The y-axis movement of the touch inside the window, in pixels.',
                        },
                        {
                            type = 'number',
                            name = 'pressure',
                            description = 'The amount of pressure being applied. Most touch screens aren\'t pressure sensitive, in which case the pressure will be 1.',
                        },
                    },
                },
            },
        },
        {
            name = 'touchpressed',
            description = 'Callback function triggered when the touch screen is touched.',
            variants = {
                {
                    description = 'The identifier is only guaranteed to be unique for the specific touch press until love.touchreleased is called with that identifier, at which point it may be reused for new touch presses.\n\nThe unofficial Android and iOS ports of LÖVE 0.9.2 reported touch positions as normalized values in the range of 1, whereas this API reports positions in pixels.',
                    arguments = {
                        {
                            type = 'light userdata',
                            name = 'id',
                            description = 'The identifier for the touch press.',
                        },
                        {
                            type = 'number',
                            name = 'x',
                            description = 'The x-axis position of the touch press inside the window, in pixels.',
                        },
                        {
                            type = 'number',
                            name = 'y',
                            description = 'The y-axis position of the touch press inside the window, in pixels.',
                        },
                        {
                            type = 'number',
                            name = 'dx',
                            description = 'The x-axis movement of the touch press inside the window, in pixels. This should always be zero.',
                        },
                        {
                            type = 'number',
                            name = 'dy',
                            description = 'The y-axis movement of the touch press inside the window, in pixels. This should always be zero.',
                        },
                        {
                            type = 'number',
                            name = 'pressure',
                            description = 'The amount of pressure being applied. Most touch screens aren\'t pressure sensitive, in which case the pressure will be 1.',
                        },
                    },
                },
            },
        },
        {
            name = 'touchreleased',
            description = 'Callback function triggered when the touch screen stops being touched.',
            variants = {
                {
                    description = 'The identifier is only guaranteed to be unique for the specific touch press until love.touchreleased is called with that identifier, at which point it may be reused for new touch presses.\n\nThe unofficial Android and iOS ports of LÖVE 0.9.2 reported touch positions as normalized values in the range of 1, whereas this API reports positions in pixels.',
                    arguments = {
                        {
                            type = 'light userdata',
                            name = 'id',
                            description = 'The identifier for the touch press.',
                        },
                        {
                            type = 'number',
                            name = 'x',
                            description = 'The x-axis position of the touch inside the window, in pixels.',
                        },
                        {
                            type = 'number',
                            name = 'y',
                            description = 'The y-axis position of the touch inside the window, in pixels.',
                        },
                        {
                            type = 'number',
                            name = 'dx',
                            description = 'The x-axis movement of the touch inside the window, in pixels.',
                        },
                        {
                            type = 'number',
                            name = 'dy',
                            description = 'The y-axis movement of the touch inside the window, in pixels.',
                        },
                        {
                            type = 'number',
                            name = 'pressure',
                            description = 'The amount of pressure being applied. Most touch screens aren\'t pressure sensitive, in which case the pressure will be 1.',
                        },
                    },
                },
            },
        },
        {
            name = 'update',
            description = 'Callback function used to update the state of the game every frame.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'dt',
                            description = 'Time since the last update in seconds.',
                        },
                    },
                },
            },
        },
        {
            name = 'visible',
            description = 'Callback function triggered when window is minimized/hidden or unminimized by the user.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'boolean',
                            name = 'visible',
                            description = 'True if the window is visible, false if it isn\'t.',
                        },
                    },
                },
            },
        },
        {
            name = 'wheelmoved',
            description = 'Callback function triggered when the mouse wheel is moved.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'x',
                            description = 'Amount of horizontal mouse wheel movement. Positive values indicate movement to the right.',
                        },
                        {
                            type = 'number',
                            name = 'y',
                            description = 'Amount of vertical mouse wheel movement. Positive values indicate upward movement.',
                        },
                    },
                },
            },
        },
    },
    types = {
        {
            name = 'ByteData',
            description = 'Data object containing arbitrary bytes in an contiguous memory.\n\nThere are currently no LÖVE functions provided for manipulating the contents of a ByteData, but Data:getPointer can be used with LuaJIT\'s FFI to access and write to the contents directly.',
            supertypes = {
                'Object',
                'Data',
            },
            functions = {
            },
        },
        {
            name = 'Data',
            description = 'The superclass of all data.',
            supertypes = {
                'Object',
            },
            functions = {
            },
        },
        {
            name = 'Drawable',
            description = 'Superclass for all things that can be drawn on screen. This is an abstract type that can\'t be created directly.',
            supertypes = {
                'Object',
            },
            functions = {
            },
        },
        {
            name = 'Object',
            description = 'The superclass of all LÖVE types.',
            functions = {
            },
        },
    },
    modules = {
        require(path .. 'modules.audio.Audio'),
        require(path .. 'modules.data.Data'),
        require(path .. 'modules.event.Event'),
        require(path .. 'modules.filesystem.Filesystem'),
        require(path .. 'modules.graphics.Graphics'),
        require(path .. 'modules.image.Image'),
        require(path .. 'modules.joystick.Joystick'),
        require(path .. 'modules.keyboard.Keyboard'),
        require(path .. 'modules.math.Math'),
        require(path .. 'modules.mouse.Mouse'),
        require(path .. 'modules.physics.Physics'),
        require(path .. 'modules.sound.Sound'),
        require(path .. 'modules.system.System'),
        require(path .. 'modules.thread.Thread'),
        require(path .. 'modules.timer.Timer'),
        require(path .. 'modules.touch.Touch'),
        require(path .. 'modules.video.Video'),
        require(path .. 'modules.window.Window'),
    },
}