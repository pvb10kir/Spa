local function run(msg)
local text = [[*Hi My Friend*
*Thx For Start Me*
*You Can Use*
_/help fa_
_/help en_
*For Show My Commands*
[Good Luck](https://telegram.me/spheroch)
`سلام دوست من
تو میتونی از
/help fa
/help en
برای دیدن دستورات من استفاده کنی `
[موفق باشید](https://telegram.me/spheroch)]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
 patterns = {"^/start",},
 run = run }
