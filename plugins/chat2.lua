local function run(msg)
local text = [[_Command Not Found!_
_/help _*fa* or _/help_ *en* ?]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
 patterns = {"^[!/#]help$",},
 run = run }
