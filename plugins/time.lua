function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local url = "http://latex.codecogs.com/png.download?".."\\dpi{800}%20\\LARGE%20"..jdat.ENtime
local file = download_to_file(url,'time.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
end
if matches[1]:lower() == '/time' then
local text = "*Iran Time Now*"
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
  patterns = {
    "^/time",
  }, 
  run = run 
}
