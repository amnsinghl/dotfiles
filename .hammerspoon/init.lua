local function pressFn(mods, key)
	if key == nil then
		key = mods
		mods = {}
	end

	return function() hs.eventtap.keyStroke(mods, key, 1000) end
end

local function remap(mods, key, pressFn)
	hs.hotkey.bind(mods, key, pressFn, nil, pressFn)	
end


remap({'alt'}, 'h', pressFn('left'))
remap({'alt'}, 'j', pressFn('down'))
remap({'alt'}, 'k', pressFn('up'))
remap({'alt'}, 'l', pressFn('right'))
remap({'alt'}, 'space', pressFn('return'))
remap({'alt'}, 'm', pressFn('delete'))
remap({'alt'}, 'n', pressFn('forwarddelete'))

remap({'alt', 'shift'}, 'h', pressFn({'shift'}, 'left'))
remap({'alt', 'shift'}, 'j', pressFn({'shift'}, 'down'))
remap({'alt', 'shift'}, 'k', pressFn({'shift'}, 'up'))
remap({'alt', 'shift'}, 'l', pressFn({'shift'}, 'right'))

remap({'alt', 'cmd'}, 'h', pressFn({'cmd'}, 'left'))
remap({'alt', 'cmd'}, 'j', pressFn({'cmd'}, 'down'))
remap({'alt', 'cmd'}, 'k', pressFn({'cmd'}, 'up'))
remap({'alt', 'cmd'}, 'l', pressFn({'cmd'}, 'right'))

