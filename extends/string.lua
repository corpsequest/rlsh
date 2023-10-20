local sin, max = math.sin, math.max
local _with_0 = string
local rainbow_tick = 0
_with_0.rainbow = function(self, a, speed, sat)
	if a == nil then
		a = 1
	end
	if speed == nil then
		speed = 1
	end
	if sat == nil then
		sat = 1
	end
	local rainbow_clone = ""
	for i = 1, #self do
		rainbow_clone = rainbow_clone .. (function()
			return tostring(Color.HSV(clock.curtime * -speed * 32 + (i * 32), max(.23, 1 - a), a)) .. self:sub(i, i)
		end)()
	end
	rainbow_clone = rainbow_clone .. "[/color]"
	return rainbow_clone
end
_with_0.interrupt = function(str, len)
	if #str > len then
		return str:sub(1, len .. "...")
	else
		return str
	end
end
_with_0.chop = function(str, len)
	return str:sub(1, len), str:sub(len + 1, #str)
end
_with_0.slice = function(str, start, stop)
	if start == nil then
		start = 0
	end
	if stop == nil then
		stop = #str
	end
	local len = #str
	if start < 0 then
		start = len + start
	end
	if start < 0 then
		start = 0
	end
	if stop < 0 then
		stop = len + stop
	end
	if stop > len then
		stop = len
	end
	return str:sub(start, stop)
end
return _with_0
