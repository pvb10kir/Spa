local function run(msg)
 send_api_msg(msg, get_receiver_api(msg), "*FullName :* `"..msg.from.print_name.."`\n*Your ID : *`"..msg.to.id.."`\n*Your Msg ID :* `"..msg.id.."`\n[GoodLuck!](https://telegram.me/spheroch)", true, 'md')
end
return {
 patterns = {"/myinfo",},
 run = run }
-- `
