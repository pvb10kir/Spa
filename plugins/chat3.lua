local function run(msg)
local text = [[*Hi* ["..msg.from.print_name.."](http://telegram.me/"..msg.from.username..") *WelCome to : *_"..msg.to.title.."_
*Send Me* /start *For Help You*
[#Good_Luck](https://telegram.me/spheroch)]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
 patterns = {"!!tgservice (chat_add_user_link)",},
 run = run }
