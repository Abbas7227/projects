-- Define all available plays
local man_beater = "man beater"
local vertical_drag_short_cross = "vertical drag short cross"
local pa_outs = "pa outs"
local double_drag_streaks = "double drag streaks"
local smash_concept = "smash concept"
local four_verticals = "four verticals"
local mesh_shallow = "mesh shallow"
local drive_concept = "drive concept"
local pa_boot_drag = "PA boot drag"
local double_slants = "double slants"
local stick_concept = "stick concept"
local flood_post = "flood post"
local texas_concept = "texas concept"
local levels_concept = "levels concept"
local corner_post = "corner post"
local deep_crossers = "deep crossers"
local dagger_concept = "dagger concept"
local scissors = "scissors"
local yankee_concept = "yankee concept"
local slot_cross = "slot cross"
local corner_flood = "corner flood"
local dagger_pivot = "dagger pivot"
local deep_out_wheel = "deep out wheel"
local bunch_flood = "bunch flood"
local backside_post_cross = "backside post cross"
local switch_verticals = "switch verticals"
local post_wheel = "post wheel"
local levels_backed_up = "levels backed up"
local flood_switch = "flood switch"
local pa_deep_cross = "PA deep cross"
local double_post = "double post"
local curl_flat = "curl flat"
local snag_concept = "snag concept"
local slot_fade = "slot fade"
local angle_route = "angle route"
local stick_nod = "stick nod"
local quick_outs = "quick outs"
local china_concept = "china concept"
local four_verts_backed_up = "four verts backed up"
local out_and_up = "out and up"
local cross_wheel_combo = "cross wheel combo"

-- Input loop for user prompts
local Yards, Down, yard_gain
local answer
repeat
    -- Prompt user for current field position
    print("Please enter the yard you are currently at (0-100) 100 being the very start of opposing players touchdown zone and 0 being your own end zone):")
    io.write("Enter your yard that you are currently at: ")
    Yards = io.read()
    local yard_num = tonumber(Yards)
    if yard_num == nil or yard_num < 0 or yard_num > 100 then
        print("Please enter a valid number for yards (0-100).")
    else
        -- Prompt user for down
        io.write("Enter your down (1st, 2nd, 3rd, or 4th): ")
        Down = io.read()
        local valid_downs = {["1st"]=true, ["2nd"]=true, ["3rd"]=true, ["4th"]=true}
        if not valid_downs[Down] then
            print("Please enter a valid down (1st, 2nd, 3rd, or 4th).")
        else
            io.write("Enter how many yards you're going for (type 'short' for 0-30 yards, 'medium' for 30-60 yards, or 'long' for 60-90 yards): ")
            yard_gain = io.read()
            local valid_gains = { short = true, medium = true, long = true }
            if not valid_gains[yard_gain] then
                print("Please enter a valid yard gain (short, medium, or long).")
            else
                -- Confirm input
                print("You're at yard " .. Yards .. ", it's " .. Down .. " down, and you're going for a " .. yard_gain .. " gain.")
                print("Is this correct? (yes/no)")
                answer = io.read()
                if answer ~= "yes" then
                    print("Let's try again. Please enter the correct values.")
                end
            end
        end
    end
until answer == "yes"

-- Recommendation logic
local yard = tonumber(Yards)

local play_found = false

-- pan plays
if (yard > 40) and (Down == "1st" or Down == "2nd") and (yard_gain == "medium" or yard_gain == "long") then
    print("Recommended play: " .. vertical_drag_short_cross)
    play_found = true
end

if (yard < 30 or yard > 70) and (Down == "2nd") and (yard_gain == "long") then
    print("Recommended play: " .. double_drag_streaks)
    play_found = true
end

if (yard > 10) and (Down == "2nd" or Down == "3rd" or Down == "4th") and (yard_gain == "short" or yard_gain == "medium") then
    print("Recommended play: " .. pa_outs)
    play_found = true
end

-- new plays
if (yard >= 0 and yard <= 40) and (Down == "1st" or Down == "2nd") and yard_gain == "short" then
    print("Recommended play: " .. smash_concept)
    play_found = true
end

if (yard >= 20 and yard <= 80) and (Down == "2nd" or Down == "1st") and yard_gain == "long" then
    print("Recommended play: " .. four_verticals)
    play_found = true
end

if (yard >= 20 and yard <= 60) and (Down == "2nd" or Down == "3rd") and yard_gain == "short" then
    print("Recommended play: " .. mesh_shallow)
    play_found = true
end

if (yard >= 15 and yard <= 70) and (Down == "1st" or Down == "2nd") and yard_gain == "medium" then
    print("Recommended play: " .. drive_concept)
    play_found = true
end

if (yard >= 10 and yard <= 50) and Down == "1st" and yard_gain == "medium" then
    print("Recommended play: " .. pa_boot_drag)
    play_found = true
end

if (yard >= 0 and yard <= 30) and (Down == "3rd" or Down == "4th") and yard_gain == "short" then
    print("Recommended play: " .. double_slants)
    play_found = true
end

if (yard >= 0 and yard <= 30) and Down == "3rd" and yard_gain == "short" then
    print("Recommended play: " .. stick_concept)
    play_found = true
end

if (yard >= 30 and yard <= 80) and Down == "2nd" and yard_gain == "long" then
    print("Recommended play: " .. flood_post)
    play_found = true
end

if (yard >= 10 and yard <= 40) and (Down == "2nd" or Down == "3rd") and yard_gain == "short" then
    print("Recommended play: " .. texas_concept)
    play_found = true
end

if (yard >= 20 and yard <= 60) and (Down == "2nd" or Down == "3rd") and yard_gain == "short" then
    print("Recommended play: " .. levels_concept)
    play_found = true
end

if (yard >= 30 and yard <= 70) and (Down == "3rd" or Down == "4th") and yard_gain == "medium" then
    print("Recommended play: " .. corner_post)
    play_found = true
end

if (yard >= 40 and yard <= 80) and (Down == "3rd" or Down == "4th") and yard_gain == "long" then
    print("Recommended play: " .. deep_crossers)
    play_found = true
end

if (yard >= 25 and yard <= 60) and (Down == "3rd" or Down == "4th") and yard_gain == "medium" then
    print("Recommended play: " .. dagger_concept)
    play_found = true
end

if (yard >= 30 and yard <= 60) and Down == "3rd" and yard_gain == "medium" then
    print("Recommended play: " .. scissors)
    play_found = true
end

if (yard >= 50 and yard <= 80) and (Down == "3rd" or Down == "4th") and yard_gain == "long" then
    print("Recommended play: " .. yankee_concept)
    play_found = true
end

if (yard >= 20 and yard <= 50) and Down == "3rd" and yard_gain == "medium" then
    print("Recommended play: " .. slot_cross)
    play_found = true
end

if (yard >= 40 and yard <= 70) and Down == "3rd" and yard_gain == "long" then
    print("Recommended play: " .. corner_flood)
    play_found = true
end

if (yard >= 25 and yard <= 50) and Down == "3rd" and yard_gain == "medium" then
    print("Recommended play: " .. dagger_pivot)
    play_found = true
end

if (yard >= 30 and yard <= 70) and Down == "4th" and yard_gain == "long" then
    print("Recommended play: " .. deep_out_wheel)
    play_found = true
end

if (yard >= 30 and yard <= 60) and Down == "3rd" and yard_gain == "medium" then
    print("Recommended play: " .. bunch_flood)
    play_found = true
end

if (yard >= 40 and yard <= 80) and Down == "4th" and yard_gain == "long" then
    print("Recommended play: " .. backside_post_cross)
    play_found = true
end

if (yard == 100) and (Down == "3rd") and (yard_gain == "medium" or yard_gain == "long") then
    print("Recommended play: " .. switch_verticals)
    play_found = true
end

if (yard <= 10) and (Down == "1st") and (yard_gain == "long") then
    print("Recommended play: " .. post_wheel)
    play_found = true
end

if (yard <= 10) and (Down == "4th") and (yard_gain == "medium") then
    print("Recommended play: " .. levels_backed_up)
    play_found = true
end

if (yard >= 20 and yard <= 30) and (Down == "4th") and (yard_gain == "long") then
    print("Recommended play: " .. flood_switch)
    play_found = true
end

if (yard >= 15 and yard <= 30) and (Down == "1st") and (yard_gain == "long") then
    print("Recommended play: " .. pa_deep_cross)
    play_found = true
end

if (yard >= 10 and yard <= 25) and (Down == "4th") and (yard_gain == "long") then
    print("Recommended play: " .. double_post)
    play_found = true
end

if (yard >= 5 and yard <= 15) and (Down == "2nd") and (yard_gain == "medium") then
    print("Recommended play: " .. curl_flat)
    play_found = true
end

if (yard <= 10) and (Down == "3rd") and (yard_gain == "medium") then
    print("Recommended play: " .. snag_concept)
    play_found = true
end

if (yard >= 85) and (Down == "4th") and (yard_gain == "medium") then
    print("Recommended play: " .. slot_fade)
    play_found = true
end

if (yard <= 10) and (Down == "2nd") and (yard_gain == "medium") then
    print("Recommended play: " .. angle_route)
    play_found = true
end

if (yard >= 90) and (Down == "3rd") and (yard_gain == "medium") then
    print("Recommended play: " .. stick_nod)
    play_found = true
end

if (yard >= 70 and yard <= 80) and (Down == "1st") and (yard_gain == "short") then
    print("Recommended play: " .. quick_outs)
    play_found = true
end

if (yard <= 5) and (Down == "2nd") and (yard_gain == "medium") then
    print("Recommended play: " .. china_concept)
    play_found = true
end

if (yard <= 5) and (Down == "1st") and (yard_gain == "long") then
    print("Recommended play: " .. four_verts_backed_up)
    play_found = true
end

if (yard <= 10) and (Down == "4th") and (yard_gain == "medium") then
    print("Recommended play: " .. out_and_up)
    play_found = true
end

if (yard >= 40 and yard <= 60) and (Down == "1st" or Down == "2nd") and yard_gain == "medium" then
    print("Recommended play: " .. cross_wheel_combo)
    play_found = true
end

if play_found == false then
    print("No recommended play found for the given conditions.")
end
