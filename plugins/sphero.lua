local api_key = '234413399:AAHoaH8E33MRmaSz6C5wzKcGH1oVtoU9OCw' --توکن ربات خود را اینجا قرار دهید 
local function run(msg,matches) 
    local text = '*SpheroTM information:*' 
    local channel_id = get_receiver_api(msg) 
    local link_text = '' 
    local data = load_data(_config.moderation.data) 
    local link = 'https://telegram.me/spherochbot'
    local keyboard = '{"inline_keyboard":[[{"text":"Sphero Channel","url":"https://telegram.me/Spheroch"}],[{"text":"Sphero Bot (pv)","url":"http://telegram.me/spherochbot"}],[{"text":"Sphero AntiSpam","url":"http://telegram.me/Sphero"}],[{"text":"Github Sphero Open Source","url":"http://github.com/3pehrdev"}],[{"text":"Sphero Support","url":"https://telegram.me/joinchat/C67c0D-5QEEIerZWKv1G9g"}]]}' --به دلخواه متن ها را تغییر دهید 
    local url = 'https://api.telegram.org/bot'..api_key..'/sendMessage?chat_id='..channel_id..'&parse_mode=Markdown&text='..text..'&disable_web_page_preview=true&reply_markup='..keyboard 
    local dat, res = https.request(url) 
      if res == 400 then 
         send_large_msg(msg.id, 'Error !', ok_cb, true) 
         else 
         send_large_msg(msg.id, ok_cb, true) 
      end 
      end 
  return { 
      patterns = { 
          "^/sphero" 
          }, 
      run = run 
  }
