function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = '*iran Time Now : *_'..jdat.ENtime..'_ \n*And Sticker Time👇*'
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
  patterns = {"^/time$"}, 
run = run 
}

