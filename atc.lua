
function clear()
    -- Clear the console
    print("\27[H\27[2J")
end

arr2 = {"emirates", "klm", "qatar", "saudiarabia", "gulfair", "flynas", "flyadeal", "flydubai", "airarabia"}
arr1 = {"rockford", "tokyo", "perth", "scampton", "southapton"}
arr = {20, 25, 30, 35, 40, 45, 50}

function easylevel()
    local squack = math.random(2000, 8000)
    local fl = (arr[math.random(1, #arr)])
    local des = (arr1[math.random(1, #arr1)])
    local dep = (arr1[math.random(1, #arr1)])
    local expe = (math.random(1, 36))
    local callsign = (arr2[math.random(1, #arr2)]) .. " " .. math.random(1000, 10000)
    local msg = callsign .. " cleared to " .. des .. " at flight level " .. fl .. " via gps direct from " .. dep .. " squawk " .. squack .. " expect runway " .. expe
    print(msg)
    return msg -- memorize the message
end

function hardlevel()
    local arr3 = {10, 15, 20, 25, 30}
    local squack = math.random(2000, 8000)
    local fl = (arr[math.random(1, #arr)])
    local des = (arr1[math.random(1, #arr1)])
    local dep = (arr1[math.random(1, #arr1)])
    local expe = (math.random(1, 36))
    local callsign = (arr2[math.random(1, #arr2)]) .. " " .. math.random(1000, 10000)
    local initial_flight_lv = (arr3[math.random(1, #arr3)])
    local msg = callsign .. " cleared to " .. des .. " at flight level " .. fl .. " via gps direct from " .. dep .. " squawk " .. squack .. " expect runway " .. expe .. " initial flight level " .. initial_flight_lv
    print(msg)
    return msg -- memorize the message
end

function expertlevel()
    local arr3 = {10, 15, 20, 25, 30}
    local expe = (math.random(1, 36))
    local rw_heading = ((expe) .. "0")
    local squack = math.random(2000, 8000)
    local fl = (arr[math.random(1, #arr)])
    local des = (arr1[math.random(1, #arr1)])
    local dep = (arr1[math.random(1, #arr1)])
    local callsign = (arr2[math.random(1, #arr2)]) .. " " .. math.random(1000, 10000)
    local initial_flight_lv = (arr3[math.random(1, #arr3)])
    local msg = callsign .. " cleared to " .. des .. " at flight level " .. fl .. " via gps direct from " .. dep .. " squawk " .. squack .. " expect runway " .. expe .. " initial flight level " .. initial_flight_lv .. " runway heading " .. rw_heading
    print(msg)
    return msg -- memorize the message
end

function atc()
    local level = math.random(1, 3)
    if level == 1 then
        local msg = easylevel()
        os.execute("timeout /t 3 >nul")
        clear()
        print("10 seconds to repeat back")
        os.execute("timeout /t 10 >nul")
        print("time's up!")
        local reply = io.read()
        if reply == msg then
            print("Correct!")
        else
            print("Incorrect!")
        end
    elseif level == 2 then
        local msg = hardlevel()
        os.execute("timeout /t 4 >nul")
        clear()
        print("15 seconds to repeat back")
        os.execute("timeout /t 15 >nul")
        print("time's up!")
        local reply = io.read()
        if reply == msg then
            print("Correct!")
        else
            print("Incorrect!")
        end
    elseif level == 3 then
        local msg = expertlevel()
        os.execute("timeout /t 5 >nul")
        clear()
        print("20 seconds to repeat back")
        os.execute("timeout /t 20 >nul")
        print("time's up!")
        local reply = io.read()
        if reply == msg then
            print("Correct!")
        else
            print("Incorrect!")
        end
    end
end



atc()
