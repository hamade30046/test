
wait(0.5)

-- Anti AFK Counter
local afkCount = 0

-- Create GUI
local screenGui = Instance.new("ScreenGui")
local titleLabel = Instance.new("TextLabel")
local mainFrame = Instance.new("Frame")
local creditLabel = Instance.new("TextLabel")
local statusLabel = Instance.new("TextLabel")
local countLabel = Instance.new("TextLabel")

screenGui.Name = "AntiAFKGui"
screenGui.Parent = game.CoreGui
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Title
titleLabel.Parent = screenGui
titleLabel.Active = true
titleLabel.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
titleLabel.Draggable = true
titleLabel.Position = UDim2.new(0.7, 0, 0.1, 0)
titleLabel.Size = UDim2.new(0, 370, 0, 52)
titleLabel.Font = Enum.Font.SourceSansSemibold
titleLabel.Text = "Anti AFK Script"
titleLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
titleLabel.TextSize = 22

-- Main Frame
mainFrame.Parent = titleLabel
mainFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
mainFrame.Position = UDim2.new(0, 0, 1, 0)
mainFrame.Size = UDim2.new(0, 370, 0, 130)

-- Status Label
statusLabel.Parent = mainFrame
statusLabel.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
statusLabel.Position = UDim2.new(0, 0, 0.1, 0)
statusLabel.Size = UDim2.new(0, 370, 0, 35)
statusLabel.Font = Enum.Font.ArialBold
statusLabel.Text = "Status: Active ✓"
statusLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
statusLabel.TextSize = 20

-- Count Label
countLabel.Parent = mainFrame
countLabel.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
countLabel.Position = UDim2.new(0, 0, 0.4, 0)
countLabel.Size = UDim2.new(0, 370, 0, 35)
countLabel.Font = Enum.Font.ArialBold
countLabel.Text = "Times Saved: 0"
countLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
countLabel.TextSize = 20

-- Credit Label
creditLabel.Parent = mainFrame
creditLabel.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
creditLabel.Position = UDim2.new(0, 0, 0.75, 0)
creditLabel.Size = UDim2.new(0, 370, 0, 25)
creditLabel.Font = Enum.Font.Arial
creditLabel.Text = "made by Ha2m"
creditLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
creditLabel.TextSize = 18

-- Anti AFK Logic
local VirtualUser = game:GetService("VirtualUser")

game:GetService("Players").LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
    
    afkCount = afkCount + 1
    countLabel.Text = "Times Saved: " .. afkCount
    
    statusLabel.Text = "Blocked AFK Kick! 🛡️"
    statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
    
    wait(2)
    
    statusLabel.Text = "Status: Active ✓"
    statusLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
end)

print("Anti AFK Script Loaded - Counter Active")