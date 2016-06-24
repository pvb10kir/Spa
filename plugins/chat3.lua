do function run(msg, matches)
local text = "*Hi* ["..msg.from.print_name.."](https://telegram.me/"..msg.from.username..") *WelCome to :* _"..msg.to.title.."_\n*Send Me* /start *For Help You*"
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
"^!!tgservice (chat_add_user_link)$",
},
run = run
}
end
