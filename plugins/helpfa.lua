local function run(msg)
local text = [[`راهنمای ربات:
فرستادن پیام برای ادمین:
/pm (پیام)
اطلاعات ربات:
/about
اسفرو بات:
/sphero
متن به استیکر:
/sticker[۱-۵] [رنگ] [سایز] [متن]
/sticker[۱-۵] [سایز] [متن]
/sticker[۱-۵] [متن]`
[موفق باشید](https://telegram.me/spheroch)]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
 patterns = {"^/help fa$",},
 run = run }
