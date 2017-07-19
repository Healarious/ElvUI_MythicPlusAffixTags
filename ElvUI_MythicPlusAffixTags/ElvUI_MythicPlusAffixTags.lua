local ElvUF = ElvUI.oUF

ElvUF.Tags.OnUpdateThrottle["affix:necrotic-rot"] = 0.2
ElvUF.Tags.Methods["affix:necrotic-rot"] = function(unit)
	local rot = select(4, UnitDebuff(unit, GetSpellInfo(209858)))
	if rot then
		return WrapTextInColorCode(rot, "ffbfff00")
	end
end

ElvUF.Tags.OnUpdateThrottle["affix:necrotic-rot-percent"] = 0.2
ElvUF.Tags.Methods["affix:necrotic-rot-percent"] = function(unit)
	local rot = select(4, UnitDebuff(unit, GetSpellInfo(209858)))
	if rot then
		return WrapTextInColorCode((rot*3).. "%", "ffbfff00")
	end
end

ElvUF.Tags.OnUpdateThrottle["affix:bursting"] = 0.2
ElvUF.Tags.Methods["affix:bursting"] = function(unit)
	local bursting = select(4, UnitDebuff(unit, GetSpellInfo(240443)))
	if bursting then
		return WrapTextInColorCode(bursting, "ffff4500")
	end
end

ElvUF.Tags.OnUpdateThrottle["affix:bursting-percent"] = 0.2
ElvUF.Tags.Methods["affix:bursting-percent"] = function(unit)
	local bursting = select(4, UnitDebuff(unit, GetSpellInfo(240443)))
	if bursting then
		WrapTextInColorCode((bursting*2.5).. "%/s", "ffff4500")
	end
end

ElvUF.Tags.OnUpdateThrottle["affix:grievous"] = 0.2
ElvUF.Tags.Methods["affix:grievous"] = function(unit)
	local grievous = select(4, UnitDebuff(unit, GetSpellInfo(240559)))
	if grievous then
		WrapTextInColorCode(grievous, "ffff0000")
	end
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
		str = "12 %"
	end
	return WrapTextInColorCode(str, "ffff0000")
end
