getgenv().autoExchange = false
getgenv().autoExchange2 = false
getgenv().autoBoost = false
getgenv().autoBoost = false

local remotePath = game:GetService("ReplicatedStorage")

function doExchange()
    spawn (function()
        while autoExchange == true do
            local args = {[1] = true}
            remotePath.Events.ExchangeMoney:FireServer(unpack(args))
            wait()
        end
    end)
end

function doExchange2()
    spawn (function()
        while autoExchange2 == true do
            local args = {[1] = false}
            remotePath.Events.ExchangeMoney:FireServer(unpack(args))
            wait()
        end
    end)
end

function doBoost()
    spawn (function()
        while autoBoost == true do
            remotePath.Events.ClaimFreeBoostStar:FireServer()
            wait(60)
        end
    end)
end

function doOverclock()
    spawn (function()
        while autoOverclock == true do
            remotePath.Events.Overclk:InvokeServer()
            wait(300)
        end
    end)
end

game:GetService("ReplicatedStorage").Events.Overclk:InvokeServer()


local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Bitcoin Simulator") -- Creates the window

local b = w:CreateFolder("Auto Farm") -- Creates the folder(U will put here your buttons,etc)

b:DestroyGui()

b:Toggle("Auto Exchange Bitcoin",function(bool)
    getgenv().autoExchange = bool
    print('Auto Exchange Solaris is', bool)
    if bool then
        doExchange()
    end
end)

b:Toggle("Auto Exchange Solaris",function(bool)
    getgenv().autoExchange2 = bool
    print('Auto Exchange Bitcoin is', bool)
    if bool then
        doExchange2()
    end
end)

b:Toggle("Auto Boost",function(bool)
    getgenv().autoBoost = bool
    print('Auto Boost is', bool)
    if bool then
        doBoost()
    end
end)

b:Toggle("Auto Overclock",function(bool)
    getgenv().autoOverclock = bool
    print('Auto Overclock is', bool)
    if bool then
        doOverclock()
    end
end)

b:Button("Card Removal",function()
    remotePath.Events.CardClear:FireServer()
end)

b:Button("Anti AFK",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringypVvhJBq4QNz", true))()
end)

b:Button("Infite Yield",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

-- b:Label("Pretty Useless NGL",{
--     TextSize = 25; -- Self Explaining
--     TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
--     BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
-- }) 

-- b:Button("Button",function()
--     print("Elym Winning")
-- end)

-- b:Toggle("Toggle",function(bool)
--     shared.toggle = bool
--     print(shared.toggle)
-- end)

-- b:Slider("Slider",{
--     min = 10; -- min value of the slider
--     max = 50; -- max value of the slider
--     precise = true; -- max 2 decimals
-- },function(value)
--     print(value)
-- end)

-- b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
--     print(mob)
-- end)

-- b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
--     print("Yes")
-- end)

-- b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color) --Default color
--     print(color)
-- end)

-- b:Box("Box","number",function(value) -- "number" or "string"
--     print(value)
-- end)

-- --[[
-- How to refresh a dropdown:
-- 1)Create the dropdown and save it in a variable
-- local yourvariable = b:Dropdown("Hi",yourtable,function(a)
--     print(a)
-- end)
-- 2)Refresh it using the function
-- yourvariable:Refresh(yourtable)
-- How to refresh a label:
-- 1)Create your label and save it in a variable
-- local yourvariable = b:Label("Pretty Useless NGL",{
--     TextSize = 25; -- Self Explaining
--     TextColor = Color3.fromRGB(255,255,255);
--     BgColor = Color3.fromRGB(69,69,69);
-- })
-- 2)Refresh it using the function
-- yourvariable:Refresh("Hello") It will only change the text ofc
-- ]]