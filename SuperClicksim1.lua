getgenv().autoTap = false
getgenv().autoRebirth = false
getgenv().buyEggstarter = false
getgenv().buyEggcrystal = false
getgenv().buyEggvulcan = false
getgenv().buyEggforest = false

getgenv()

local remotePath = game:GetService("ReplicatedStorage")

function doTap()
    spawn(function()
        while autoTap == true do
            remotePath.Remotes:FindFirstChild("\226\154\161\240\159\150\177\239\184\143"):FireServer()
            wait()

        end
    end)
end

function doRebirth(selectedAmount)
    spawn(function()
        while autoRebirth == true do
            local args = {[1] = selectedAmount}
            remotePath.Remotes:FindFirstChild("\226\154\161\239\184\189"):FireServer(unpack(args))
            wait()
        end
    end)
end

function doEggstarter()
    spawn(function()
        while buyEggstarter == true do
        local args = {
        [1] = workspace.PromptEgg.Common,
        [2] = "E"
        }

        remotePath.Remotes:FindFirstChild("\226\154\161\240\159\165\154"):InvokeServer(unpack(args))
        Wait()
        end
    end)
end

function doEggcrystal()
    spawn(function()
        while buyEggcrystal == true do
        local args = {
        [1] = workspace.PromptEgg.Uncommon,
        [2] = "E"
        }

        remotePath.Remotes:FindFirstChild("\226\154\161\240\159\165\154"):InvokeServer(unpack(args))
        Wait()
        end
    end)
end

function doEggvulcan()
    spawn(function()
        while buyEggvulcan == true do
        local args = {
        [1] = workspace.PromptEgg.Rare,
        [2] = "E"
        }

        remotePath.Remotes:FindFirstChild("\226\154\161\240\159\165\154"):InvokeServer(unpack(args))
        Wait()
        end
    end)
end

function doEggforest()
    spawn(function()
        while buyEggforest == true do
        local args = {
        [1] = workspace.PromptEgg.Epic,
        [2] = "E"
        }

        remotePath.Remotes:FindFirstChild("\226\154\161\240\159\165\154"):InvokeServer(unpack(args))
        Wait()
        end
    end)
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Super Clicker Simulator") -- Creates the window

local b = w:CreateFolder("Auto Farm") 

local c = w:CreateFolder("Eggs") 

b:DestroyGui()

b:Toggle("Auto Click",function(bool)
    getgenv().autoTap = bool
    print('Auto Click is', bool)
    if bool then
        doTap()
    end
end)

local selectedRebirth
b:Dropdown("Amount Of Rebirths",{"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"},true,function(value)
    selectedRebirth = value
    print(value)
end)

b:Toggle("Auto Rebirth",function(bool)
    getgenv().autoRebirth = bool
    print('Auto Rebirth is', bool)
    if bool and selectedRebirth then
        doRebirth(selectedRebirth)
    end
end)

c:Toggle("Auto Open Starter Egg",function(bool)
    getgenv().buyEggstarter = bool
    print('Auto Egg Starter is', bool)
    if bool then
        doEggstarter()
    end
end)

c:Toggle("Auto Open Crystal Egg",function(bool)
    getgenv().buyEggcrystal = bool
    print('Auto Egg Crystal is', bool)
    if bool then
        doEggcrystal()
    end
end)

c:Toggle("Auto Open Vulcan Egg",function(bool)
    getgenv().buyEggvulcan = bool
    print('Auto Egg Vulcan is', bool)
    if bool then
        doEggvulcan()
    end
end)

c:Toggle("Auto Open Forest Egg",function(bool)
    getgenv().buyEggforest = bool
    print('Auto Egg Forst is', bool)
    if bool then
        doEggforest()
    end
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
