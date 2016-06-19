local function run(msg)
local text = [[_Help Bot:_
*Send Your Msg For Admin:*
_/pm (msg)_
*About @Sphero_Bot:*
_/about_
*Spherobot:*
_/sphero_
[Good Luck!](https://telegram.me/spheroch)]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
 patterns = {"^/help en$",},
 run = run }
