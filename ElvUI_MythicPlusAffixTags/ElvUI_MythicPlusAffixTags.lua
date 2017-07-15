local ElvUF = ElvUI.oUF

local GetDebuffCountAgressive = function(unit_arg, name_arg, spellId_arg)
	for i=1, 40 do
		local name, _, _, count, _, _, _, _, _, _, spellId, _ = UnitDebuff(unit_arg, i)
		if name == name_arg and spellId == spellId_arg then
			return count
		end
	end
	return nil
end


ElvUF.Tags.OnUpdateThrottle["affix:necrotic-rot"] = 0.2
ElvUF.Tags.Methods["affix:necrotic-rot"] = function(unit)
	return GetDebuffCountAgressive(unit, "Necrotic Rot", 209858)
end

ElvUF.Tags.OnUpdateThrottle["affix:necrotic-rot-percent"] = 0.2
ElvUF.Tags.Methods["affix:necrotic-rot-percent"] = function(unit)
	local count = GetDebuffCountAgressive(unit, "Necrotic Rot", 209858)
	if count ~= nil then
		return (count*3).. "%"
	else
		return ""
	end
end

ElvUF.Tags.OnUpdateThrottle["affix:bursting"] = 0.2
ElvUF.Tags.Methods["affix:bursting"] = function(unit)
	return GetDebuffCountAgressive(unit, "Burst", 240443)
end

ElvUF.Tags.OnUpdateThrottle["affix:bursting-percent"] = 0.2
ElvUF.Tags.Methods["affix:bursting-percent"] = function(unit)
	local count = GetDebuffCountAgressive(unit, "Burst", 240443)
	if count ~= nil then
		return (count*2.5).. "%/s"
	else
		return ""
	end
end

ElvUF.Tags.OnUpdateThrottle["affix:grievous"] = 0.2
ElvUF.Tags.Methods["affix:grievous"] = function(unit)
	return select(4, UnitDebuff(unit, "Grievous Wound"))
end

ElvUF.Tags.OnUpdateThrottle["affix:grievous-percent"] = 0.2
ElvUF.Tags.Methods["affix:grievous-percent"] = function(unit)
	local count = select(4, UnitDebuff(unit, "Grievous Wound"))
	if count == 1 then
		return "2 %"
	elseif count == 2 then
		return "5 %"
	elseif count == 3 then
		return "7 %"
	elseif count == 4 then
		return "10 %"
	elseif count == 5 then
		return "12 %"
	else
		return ""
	end
end
