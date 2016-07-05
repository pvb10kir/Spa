local function run(msg)
 send_api_msg(msg, get_receiver_api(msg), "*FullName :* `"..msg.from.print_name.."`\n*Your ID : *`"..msg.to.id.."`\n*Username : *[@"..msg.from.username.."](https://telegram.me/"..msg.from.username..")\n*Your Msg ID :* `"..msg.id.."`\n[GoodLuck!](https://telegram.me/spheroch)", true, 'md')
end
return {
 patterns = {"/myinfo",},
 run = run }
-- `
