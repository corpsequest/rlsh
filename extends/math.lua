local _with_0 = math
_with_0.round = function(n, mult)
	if mult == nil then
		mult = 1
	end
	return _with_0.floor((n + mult / 2) / mult) * mult
end
_with_0.clamp = function(val, low, high)
	if low == nil then
		low = 0
	end
	if high == nil then
		high = 1
	end
	if val < low then
		return low
	end
	if val > high then
		return high
	end
	return val
end
_with_0.between = function(val, low, high)
	return _with_0.clamp(val, low, high) == val
end
_with_0.distance = function(a, b)
	local xdist = _with_0.abs(a.x - b.x)
	local ydist = _with_0.abs(a.y - b.y)
	return _with_0.max(xdist, ydist)
end
_with_0.adjacent = function(a, b)
	return _with_0.distance(a, b) == 1
end
return _with_0
