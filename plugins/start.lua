do function run(msg, matches)
if matches[1]:lower() == '/start' then
local text = "☑️*Hi "..msg.from.print_name.."* \n*Thx For Start Me*\n*You Can Use*\n_/help fa_\n_/help en_\n*For Show My Commands*\n[Good Luck](https://telegram.me/spheroch)"
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
"^/(start)",
},
run = run
}
end
