local api_key = '234164681:AAEoLQltAsGrEedHhruQLUKXbcY8dEw7tN4' --توکن ربات خود را اینجا قرار دهید 
local function run(msg,matches) 
    local text = '*More Information Bot:*' 
    local channel_id = get_receiver_api(msg) 
    local link_text = '' 
    local data = load_data(_config.moderation.data) 
    local link = 'https://telegram.me/spherochbot'
    local keyboard = '{"inline_keyboard":[[{"text":"Sphero Channel","url":"https://telegram.me/Spheroch"}],[{"text":"Developer","url":"http://telegram.me/mrblacklife"},{"text":"Sphero AntiSpam","url":"http://telegram.me/Sphero"},{"text":"My Dev Github","url":"http://github.com/3pehrdev"}]]}' --به دلخواه متن ها را تغییر دهید 
    local url = 'https://api.telegram.org/bot'..api_key..'/sendMessage?chat_id='..channel_id..'&parse_mode=Markdown&text='..text..'&disable_web_page_preview=true&reply_markup='..keyboard 
    local dat, res = https.request(url) 
      if res == 400 then 
         reply_msg(msg.id, 'Error !', ok_cb, true) 
         else 
         reply_msg(msg.id, ok_cb, true) 
      end 
      end 
  return { 
      patterns = { 
          "^/about" 
          }, 
      run = run 
  } 
