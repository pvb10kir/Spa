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
/sticker[۱-۵] [متن]
نمایش ساعت ایران:
/time
تبدیل متن به کد:
/qrcode [متن]
نمایش ساعت و تاریخ فارسی و انگلیسی:
/dayinfo
نمایش اطلاعات شما:
/myinfo
تبدیل عکس به استیکر:
/sticker (ریپلی کنید روی عکس مورد نظر)
تبدیل استیکر به عکس:
/photo (ریپلی کنید روی استیکر مورد نظر و دستور رو بفرستید)`
[موفق باشید](https://telegram.me/spheroch)]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
 patterns = {"^/help fa$",
"^/help_fa",
"^fa$",
"^/fa$",
},
 run = run }
