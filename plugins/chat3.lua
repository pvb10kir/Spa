local function run(msg)

 send_api_msg(msg, get_receiver_api(msg), "*Hi* ["..msg.from.print_name.."](http://telegram.me/"..msg.from.username..") *WelCome to : *_"..msg.to.title.."_\n*Send Me* /start *For Help You*\n[#Good_Luck](https://telegram.me/spheroch)", true, 'md')
end
return {
 patterns = {"!!tgservice (chat_add_user_link)",},
 run = run }
