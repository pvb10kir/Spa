do function run(msg, matches)
if matches[1]:lower() == '/time' then
local text = "*Iran Time Now👇*"
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
end
return {
description = "show your id",
usage = {
moderator = {
"!id : show your userid and information" },
},
patterns = {
"^/time$",
},
run = run
}
end
--Status API Training Shop Blog About
-- 2016 GitHub, Inc. Terms Privacy Security Contact Help
