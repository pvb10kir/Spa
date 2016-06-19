local function run(msg)
if matches[1] "/start" then
local text = [[*Hi My Friend*
*Thanks For Start Me*
*You Can Use*
_/help fa_
_/help en_
*For See My Commands*]]
 send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
 patterns = {
"^/start$",
},
 run = run
 }
