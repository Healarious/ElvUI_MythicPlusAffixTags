local ElvUF = ElvUI.oUF

ElvUF.Tags.OnUpdateThrottle["affix:necrotic-rot"] = 0.2
ElvUF.Tags.Methods["affix:necrotic-rot"] = function(unit)
	local rot = select(4, UnitDebuff(unit, GetSpellInfo(209858)))
	local str = ""
	if rot then
		str = rot
	end
	return WrapTextInColorCode(str, "ffbfff00").."|r"
end

ElvUF.Tags.OnUpdateThrottle["affix:necrotic-rot-percent"] = 0.2
ElvUF.Tags.Methods["affix:necrotic-rot-percent"] = function(unit)
	local rot = select(4, UnitDebuff(unit, GetSpellInfo(209858)))
	local str = ""
	if rot then
		str = (rot*3).. "%"
	end
	return WrapTextInColorCode(str, "ffbfff00").."|r"
end

ElvUF.Tags.OnUpdateThrottle["affix:bursting"] = 0.2
ElvUF.Tags.Methods["affix:bursting"] = function(unit)
	local bursting = select(4, UnitDebuff(unit, GetSpellInfo(240443)))
	local str = ""
	if bursting then
		str = bursting
	end
	return WrapTextInColorCode(str, "ffff4500").."|r"
end

ElvUF.Tags.OnUpdateThrottle["affix:bursting-percent"] = 0.2
ElvUF.Tags.Methods["affix:bursting-percent"] = function(unit)
	local bursting = select(4, UnitDebuff(unit, GetSpellInfo(240443)))
	local str = ""
	if bursting then
		str = (bursting*2.5).. "%/s"
	end
	return WrapTextInColorCode(str, "ffff4500").."|r"
end

ElvUF.Tags.OnUpdateThrottle["affix:grievous"] = 0.2
ElvUF.Tags.Methods["affix:grievous"] = function(unit)
	local grievous = select(4, UnitDebuff(unit, GetSpellInfo(240559)))
	local str = ""
	if grievous then
		str = grievous
	end
	return WrapTextInColorCode(str, "ffff0000").."|r"
end

ElvUF.Tags.OnUpdateThrottle["affix:grievous-percent"] = 0.2
ElvUF.Tags.Methods["affix:grievous-percent"] = function(unit)
	local grievous = select(4, UnitDebuff(unit, GetSpellInfo(240559)))
	local str = ""
	if grievous == 1 then
		str = "2 %"
	elseif grievous == 2 then
		str = "5 %"
	elseif grievous == 3 then
		str = "7 %"
	elseif grievous == 4 then
		str = "10 %"
	elseif grievous == 5 then
		return "12 %"
	end
	return WrapTextInColorCode(str, "ffff0000").."|r"
end
