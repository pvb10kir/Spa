local function run(msg)
local text = [[*Please Do Not Send Me A Sticker*
*Send /help fa or /help en For Show Commands*
[#Good_Luck](https://telegram.me/spheroch)]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
 patterns = {"[document]",},
 run = run }
