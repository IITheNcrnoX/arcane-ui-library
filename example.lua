local Library=loadstring(game:HttpGet("https://raw.githubusercontent.com/IITheNcrnoX/arcane-ui-library/refs/heads/main/libraryui.lua"),true)();

local Window = Library:Window({Name = "Balright"})

Window:Category("penis")
local CombatPage = Window:Page({Name = "Page", Icon = "136879043989014"})
Window:Page({Name = "Page", Icon = "136879043989014"})
Window:Page({Name = "Page", Icon = "136879043989014"})

local CombatSubPage = CombatPage:SubPage({Name = "Combat"})
CombatPage:SubPage({Name = "Weapon"})
CombatPage:SubPage({Name = "FoV"})

Window:Category("Settings")
local SettingsPage = Library:CreateSettingsPage(Window)

for Index = 1, 2 do 
    local AimbotSection = CombatSubPage:Section({Name = "Aimbot", Icon = "136879043989014", Side = Index})

    AimbotSection:Toggle({Name = "Toggle", Flag = "Toggle", Callback = function(Value)
        print(Value)
    end})

    AimbotSection:Button({Name = "Button", Callback = function()
        print("Button")
    end})

    AimbotSection:Slider({Name = "Slider", Flag = "Slider", Min = 0, Max = 100, Default = 50, Suffix = "%", Decimals = 1, Callback = function(Value)
        print(Value)
    end})

    AimbotSection:Dropdown({Name = "Dropdown", Flag = "Dropdown", Items = {"Optionn 1", "Optionn 2", "Optionn 3", "Optionn 4"}, Default = "Optionnnn 2", Multi = false, Callback = function(Value)
        print(Value)
    end})

    AimbotSection:Label("Label"):Colorpicker({Flag = "Colorpicker", Default = Color3.fromRGB(255, 255, 255), Callback = function(Value)
        print(Value)
    end})

    AimbotSection:Label("Label"):Keybind({Flag = "Keybind", Default = Enum.KeyCode.E, Mode = "Toggle", Callback = function(Value)
        print(Value)
    end})

    AimbotSection:Textbox({Flag = "Textbox", Placeholder = "Placeholder", Default = "Text", Finished = false, Numeric = false, Callback = function(Value)
        print(Value)
    end})
end

Library:Notification("Notification without icon", 5, nil)
Library:Notification("Notification with icon lol noob", 5, "94627324690861")

getgenv().Library = Library
return Library
