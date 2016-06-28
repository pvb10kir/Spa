local function run(msg)
 send_api_msg(msg, get_receiver_api(msg), "*FirstName :* ` "..msg.from.first_name.."\n*FullName :* `"..msg.from.print_name.."`\n*Your ID : *`"..msg.to.id.."`\n*Your Msg ID :* `"..msg.id.."`\n[GoodLuck!](https://telegram.me/spheroch)", true, 'md')
end
return {
 patterns = {"/myinfo",},
 run = run }
-- `
