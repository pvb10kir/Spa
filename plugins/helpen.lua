local function run(msg)
local text = [[_Help Bot:_
*Send Your Msg For Admin:*
_/pm (msg)_
*About @Sphero_Bot:*
_/about_
*Spherobot:*
_/sphero_
*Text To Sticker:*
_/sticker[1-5] [text] [size] [color]_
_/sticker[1-5] [text] [size]_
_/sticker[1-5] [text]_
*Show iran Time:*
_/time_
*Text to Qrcode:*
_/qrcode [text]_
_/dayinfo_
*Show En/Fa Date And Time*
_/myinfo_
*Return Your Info*
[Good Luck!](https://telegram.me/spheroch)]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
 patterns = {"^/help en$",
"^/help_en",
"^en$",
"^/en$",
},
 run = run }
