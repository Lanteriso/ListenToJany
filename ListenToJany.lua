
local ListenToJany = CreateFrame("Frame")
print("载入成功ListenToJany")
-- 首次登陆加载
local ListenToJany_Load = CreateFrame("Frame")
ListenToJany_Load:RegisterEvent("ADDON_LOADED")
ListenToJany_Load:SetScript("OnEvent", function(_, event, addon)
	if event == "ADDON_LOADED" and addon == "ListenToJany" then
		if ST_BuffList == nil then ST_BuffList = {} end
    	--BUFF
		if ST_BuffList[1459] == nil then ST_BuffList[1459] = true end -- FS [奥术光辉]
		if ST_BuffList[633] == nil then ST_BuffList[633] = true end       -- SQ [圣疗术 633]   25771
		if ST_BuffList[203538] == nil then ST_BuffList[203538] = true end -- SQ [强效王者祝福]
		if ST_BuffList[203539] == nil then ST_BuffList[203539] = true end -- SQ [强效智慧祝福]
		if ST_BuffList[546] == nil then ST_BuffList[546] = true end     --SM [水上行走] 		
		if ST_BuffList[61295] == nil then ST_BuffList[61295] = true end --SM [激流]	
		if ST_BuffList[8936] == nil then ST_BuffList[8936] = true end     -- XD [愈合]	
		if ST_BuffList[774] == nil then ST_BuffList[774] = true end       -- XD [回春术]		
		if ST_BuffList[102342] == nil then ST_BuffList[102342] = true end --XD [铁木树皮]	
		if ST_BuffList[33763] == nil then ST_BuffList[33763] = true end   -- XD [生命绽放]	
		if ST_BuffList[5697] == nil then ST_BuffList[5697] = true end -- SS [无尽呼吸]	
		if ST_BuffList[116841] == nil then ST_BuffList[116841] = true end --WS [迅如猛虎]
		if ST_BuffList[124682] == nil then ST_BuffList[124682] = true end --WS [氤氲之雾]
		if ST_BuffList[116849] == nil then ST_BuffList[116849] = true end --WS [作茧缚命]
		if ST_BuffList[115151] == nil then ST_BuffList[115151] = true end --WS [复苏之雾]
		if ST_BuffList[115175] == nil then ST_BuffList[115175] = true end --WS [抚慰之雾]
		if ST_BuffList[121536] == nil then ST_BuffList[121536] = true end    -- MS [天堂之羽]
		if ST_BuffList[186263] == nil then ST_BuffList[186263] = true end    --MS [暗影愈合]
		if ST_BuffList[33206] == nil then ST_BuffList[33206] = true end      --MS [痛苦压制]
		if ST_BuffList[17] == nil then ST_BuffList[17] = true end            --MS [真言术：盾]
		if ST_BuffList[194509] == nil then ST_BuffList[194509] = true end    --MS[真言术：耀]
		if ST_BuffList[62618] == nil then ST_BuffList[62618] = true end      --MS[真言术：障]
		if ST_BuffList[21562] == nil then ST_BuffList[21562] = true end      --MS[真言术：韧] 

    	--驱散
		if ST_BuffList[51886] == nil then ST_BuffList[51886] = true end   -- SM 净化灵魂	
		if ST_BuffList[88423] == nil then ST_BuffList[88423] = true end   -- XD [自然之愈]		
		if ST_BuffList[213644] == nil then ST_BuffList[213644] = true end -- SQ [清毒术]		
		if ST_BuffList[475] == nil then ST_BuffList[475] = true end       -- FS [解除诅咒]	
		if ST_BuffList[119905] == nil then ST_BuffList[119905] = true end -- SS [烧灼驱魔]	
		if ST_BuffList[218164] == nil then ST_BuffList[218164] = true end --WS [清创生血]
		if ST_BuffList[527] == nil then ST_BuffList[527] = true end       --MS [纯净术]
		if ST_BuffList[32375] == nil then ST_BuffList[32375] = true end   --MS [群体驱散]

		--打断
		if ST_InterruptList == nil then ST_InterruptList = {} end
		if ST_InterruptList[6552] == nil then ST_InterruptList[6552] = true end   --ZS 拳击
		if ST_InterruptList[78675] == nil then ST_InterruptList[78675] = true end   --xd 日光术
		if ST_InterruptList[106839] == nil then ST_InterruptList[106839] = true end   --xd 迎头痛击
		if ST_InterruptList[47528] == nil then ST_InterruptList[47528] = true end   --dk 心灵冰冻
		if ST_InterruptList[96231] == nil then ST_InterruptList[96231] = true end   --sq 责难
		if ST_InterruptList[31935] == nil then ST_InterruptList[31935] = true end   --sq 复仇者之盾--特殊
		if ST_InterruptList[183752] == nil then ST_InterruptList[183752] = true end   --dh 瓦解
		if ST_InterruptList[202137] == nil then ST_InterruptList[202137] = true end   --dh 沉默符咒
		if ST_InterruptList[116705] == nil then ST_InterruptList[116705] = true end   --ws 切喉手
		if ST_InterruptList[1766] == nil then ST_InterruptList[1766] = true end   --dz 脚踢
		if ST_InterruptList[147362] == nil then ST_InterruptList[147362] = true end   --lr 反制射击
		if ST_InterruptList[57994] == nil then ST_InterruptList[57994] = true end   --sm 风剪
		if ST_InterruptList[2139] == nil then ST_InterruptList[2139] = true end   --fs 法术反制
		if ST_InterruptList[15487] == nil then ST_InterruptList[15487] = true end   --ms 沉默



	end
end)



-- 添加设置界面
local ST_Options = CreateFrame("Frame", nil, InterfaceOptionsFramePanelContainer)
ST_Options:Hide()
ST_Options.name = "ListenToJany"
ST_Options:SetScript("OnShow", function(self)
	if self.show then return end
	local title = self:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	title:SetPoint("TOPLEFT", 16, -16)
	title:SetText(ST_SETTINGS)
	
	local website = self:CreateFontString(nil, "ARTWORK")
	website:SetFont(GameFontNormal:GetFont(), 12)
	website:SetWidth(500)
	website:SetPoint("BOTTOMLEFT", 32, 32)
	website:SetJustifyH("LEFT")
	website:SetText("|cff298F00GitHub:|r:https://github.com/janyroo/ListenToJany")
	
	local thanksto = self:CreateFontString(nil, "ARTWORK")
	thanksto:SetFont(GameFontNormal:GetFont(), 12)
	thanksto:SetWidth(500)
	thanksto:SetPoint("BOTTOMLEFT", website, "TOPLEFT", 0, 8)
	thanksto:SetJustifyH("LEFT")
	thanksto:SetText(ST_THANKSTO.."Thank you for using it.")	
	
	local count,countx=0,0
	for key,value in pairs(ST_InterruptList) do
		count=count+1
		if count>12 then countx,count=countx+1,0 end
		local button = CreateFrame("CheckButton", "ST_Buff_"..key, ST_Options, "InterfaceOptionsCheckButtonTemplate")
		button:SetPoint("TOPLEFT", 32+150*countx, -32-32*count)
		getglobal(button:GetName().."Text"):SetText(GetSpellInfo(key))
		print(getglobal(button:GetName().."Text"))
		if value == true then button:SetChecked(true) else button:SetChecked(false) end
	end	
	
	self.show = true
	ST_Options:SetScript("OnHide", function(self)
		for key,value in pairs(ST_InterruptList) do
			if _G["ST_Buff_"..key]:GetChecked() then
				if ST_InterruptList[(key)] ~= true then
					ST_InterruptList[(key)] = true
					DEFAULT_CHAT_FRAME:AddMessage("设置: "..GetSpellLink(key)..ST_ON)
				end
			else
				if ST_InterruptList[(key)] ~= false then
					ST_InterruptList[(key)] = false
					DEFAULT_CHAT_FRAME:AddMessage("设置: "..GetSpellLink(key)..ST_OFF)
				end
			end
		end
	end)
end)



InterfaceOptions_AddCategory(ST_Options)

-- 国际化
if GetLocale() == "ruRU" then
	ST_THANKS = "Спасибо за "
	ST_LOADED = "загружен"
	ST_RECEIVED = " получено от "
	ST_SETTINGS = "Настройки"
	ST_ON = " вкл."
	ST_OFF = " выкл."
	ST_THANKSTO = "|cff298F00Огромное спасибо:|r "
end
if GetLocale() == "zhCN" then
    ST_THANKS = "谢谢您，"
	ST_LOADED = "读取"
	ST_RECEIVED = "收到"
	ST_SETTINGS = "设置"
	ST_ON = " 打开。"
	ST_OFF = " 关闭。"
	ST_THANKSTO = "|cff298F00特别鸣谢:|r "
end
if GetLocale() == "zhTW" then
    ST_THANKS = "谢谢您，"
	ST_LOADED = "读取"
	ST_RECEIVED = "收到"
	ST_SETTINGS = "设置"
	ST_ON = " 打开。"
	ST_OFF = " 关闭。"
	ST_THANKSTO = "|cff298F00鸣谢:|r "
end
if GetLocale() == "esUS" then
	ST_THANKS = "Thanks for "
	ST_LOADED = "loaded"
	ST_RECEIVED = " received from "
	ST_SETTINGS = "Settings"
	ST_ON = " now on"
	ST_OFF = " now off"
	ST_THANKSTO = "|cff298F00Thanks to:|r "
end

ListenToJany.playername = UnitName("player") 
ListenToJany:SetScript("OnEvent",function(self,event)
	--事件类型	Arg 1	Arg 2	Arg3	第四条	第5条		第6条	第7条		第8条	第9条	Arg 10	Arg 11	第12条	第13条		第14条		Arg 15		Arg 16	第17条	Arg 18	第19条	Arg 20
	--拼写缺失	时间戳	事件	藏匿者	源GUID	SourceName	源旗	源RaidFlags	底座	底座名	台旗	台旗	斯佩尔	拼写名称	斯佩尔学派	错误类型	等距	额漏
	--摆动损伤	时间戳	事件	藏匿者	源GUID	SourceName	源旗	源RaidFlags	底座	底座名	台旗	台旗	金额	过火		学校		抵挡		封堵	吸收	临界性	扫视	压碎
    local timestamp,EventType, SourceName, destName, SpellID, ExtraskillID = select(1, CombatLogGetCurrentEventInfo()),select(2, CombatLogGetCurrentEventInfo()), select(5, CombatLogGetCurrentEventInfo()), select(9, CombatLogGetCurrentEventInfo()), select(12, CombatLogGetCurrentEventInfo()), select(15, CombatLogGetCurrentEventInfo())
	----------------------------
	--local timestamp,event,hideCaster,sourceGUID,sourceName,sourceFlags,sourceRaidFlags,destGUID,destName,destFlags,destRaidFlags,spellId,spellName,spellSchool,missType,isOffHand,amountMissed=select(1, CombatLogGetCurrentEventInfo()), select(2, CombatLogGetCurrentEventInfo()), select(3, CombatLogGetCurrentEventInfo()), select(4, CombatLogGetCurrentEventInfo()), select(5, CombatLogGetCurrentEventInfo()), select(6, CombatLogGetCurrentEventInfo()), select(7, CombatLogGetCurrentEventInfo()), select(8, CombatLogGetCurrentEventInfo()), select(9, CombatLogGetCurrentEventInfo()), select(10, CombatLogGetCurrentEventInfo()), select(11, CombatLogGetCurrentEventInfo()), select(12, CombatLogGetCurrentEventInfo()), select(13, CombatLogGetCurrentEventInfo()), select(14, CombatLogGetCurrentEventInfo()), select(15, CombatLogGetCurrentEventInfo()), select(16, CombatLogGetCurrentEventInfo()), select(17, CombatLogGetCurrentEventInfo()), 
	--print(timestamp,event,hideCaster,sourceGUID,sourceName,sourceFlags,sourceRaidFlags,destGUID,destName,destFlags,destRaidFlags,spellId,spellName,spellSchool,missType,isOffHand,amountMissed)
	local spellname=GetSpellInfo(SpellID)--获取技能名字
	local spelllink=GetSpellLink(SpellID)--获取技能名字详细
	local Extraskilllink=GetSpellLink(ExtraskillID)--被打断的技能
	--print(EventType, SourceName, spelllink, destName, Extraskilllink) 
	--[[if EventType == "SPELL_CAST_SUCCESS" then--技能
		DEFAULT_CHAT_FRAME:AddMessage(SourceName .. spelllink .. destName,1,0,1) 
		print(EventType, SourceName, destName, spellname, ExtraskillID) 
	elseif EventType == "SPELL_HEAL" then--治疗
		DEFAULT_CHAT_FRAME:AddMessage(SourceName .. spelllink .. destName,1,0,1) 
		print(EventType, SourceName, destName, spellname, ExtraskillID) 
	elseif EventType == "SPELL_AURA_APPLIED" then--BUFF
		DEFAULT_CHAT_FRAME:AddMessage(SourceName .. spelllink .. destName,1,0,1) 
		print(EventType, SourceName, destName, spellname, ExtraskillID) 
	elseif EventType == "SPELL_DISPEL" then--驱散
		DEFAULT_CHAT_FRAME:AddMessage(SourceName .. spelllink .. destName,1,0,1) 
		print(EventType, SourceName, destName, spellname, ExtraskillID) 
	elseif EventType == "SPELL_INTERRUPT" then--打断成功
		--DEFAULT_CHAT_FRAME:AddMessage(SourceName .. spelllink .. destName,1,0,1) 
		--print(EventType, SourceName, destName, spellname, ExtraskillID) 
		SendChatMessage(SourceName .. spelllink .. " 成功打断 " .. destName ..Extraskilllink)

	end]]
	if EventType == "SPELL_DISPEL" then--驱散
		SendChatMessage("【成功驱散】 " .. SourceName .. spelllink .. destName .. Extraskilllink, "SAY", nil, SourceName)
	end
	if SpellID == 30449 then--法师偷
		SendChatMessage("【法术吸取】 " .. SourceName .. spelllink .. destName .. Extraskilllink .. EventType, "SAY", nil, SourceName)
	end

	for keys,values in pairs(ST_InterruptList) do

		if SpellID == keys and values == true then
			if EventType == "SPELL_CAST_FAILED" then--打断失败
				--print(EventType, SourceName, destName, spellname, ExtraskillID) 
				SendChatMessage("【失败】 " .. SourceName .. spelllink .. destName, "SAY", nil, SourceName)
			end
			if EventType == "SPELL_CAST_SUCCESS" then--技能
				--print(EventType, SourceName, destName, spellname, ExtraskillID) 
				SendChatMessage("【施放】 " .. SourceName .. spelllink .. destName, "SAY", nil, SourceName)
			end
			if EventType == "SPELL_INTERRUPT" then--打断成功
				--print(EventType, SourceName, destName, spellname, ExtraskillID) 
				SendChatMessage("【成功】 " .. SourceName .. spelllink .. destName .. Extraskilllink, "SAY", nil, SourceName)
			end
		end
	end


	----------------------------
	--[[
	for key,value in pairs(ST_BuffList) do
		--SpellID 技能ID               destName 对方  
		if SpellID == key and SpellID == 633 and value == true and destName == ListenToJany.playername and SourceName ~= ListenToJany.playername and EventType == "SPELL_HEAL" and SourceName ~= not UnitInRaid("player") and not UnitInParty("player") then
			SendChatMessage(ST_THANKS..SourceName.."！".."你帮加的这口"..GetSpellLink(633).."救了我一命，太感谢了！ {无辜} ", "SAY", nil, SourceName)
		elseif SpellID == key and SpellID ~= 25771 and value == true and destName == ListenToJany.playername and SourceName ~= ListenToJany.playername and EventType == "SPELL_AURA_APPLIED" and SourceName ~= not UnitInRaid("player") and not UnitInParty("player") then
			SendChatMessage(ST_THANKS..SourceName.."！".."你帮加的"..GetSpellLink(SpellID).."美滋滋！ {开心} ", "SAY", nil, SourceName)
		elseif SpellID == key and value == true and destName == ListenToJany.playername and SourceName ~= ListenToJany.playername and EventType == "SPELL_DISPEL" and SourceName ~= not UnitInRaid("player") and not UnitInParty("player") then
            SendChatMessage(ST_THANKS..SourceName.."！".."用"..GetSpellLink(SpellID).."帮我驱散了"..GetSpellLink(ExtraskillID).."，这下轻松了！ {龇牙} ", "SAY", nil, SourceName)
		end
	end]]
end)

ListenToJany:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
--DEFAULT_CHAT_FRAME:AddMessage("ListenToJany "..ST_LOADED)



--[[

INTERRUPT = 打断，各职业一般打断技能；
HARDCC = 群体硬控，DH混乱新星、WS扫堂腿、SS暗怒等；
SOFTCC = 群体软控，DKT群抓、咕咕台风、牧师群恐等；
DISPELL = 驱散，这里其实监控的是血精灵的奥术洪流；
EXTERNAL = 这组有点迷，DH的黑水、牧师的痛苦压制、QS的牺牲祝福、保护都在里面；
HEALING = 治疗大招，小德宁静、WS奶罩、奶潮等；
UTILITY = 功能型技能，这组只有咕咕的树人、MS的拉人和DZ的帷幕
PERSONAL = 个人减伤技能，DKT的吸血鬼、防战的盾墙、DH疾影等；
IMMUNITY = 免疫机能，法师冰箱、骑士武器、盗贼斗篷等；
DAMAGE = 伤害大技能，DH变身、火法燃烧、战士大风车等；
]]


