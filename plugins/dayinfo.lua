function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = '*FaTime :* `'..jdat.FAtime..'` \n*FaDate : *`'..jdat.FAdate..'`\n_-------------_\n*EnTime : *`'..jdat.ENtime..'`\n*EnDate :* `'..jdat.ENdate.. '`\n[GoodLuck!](https://telegram.me/spheroch)'
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
  patterns = {"^/dayinfo$"}, 
run = run 
}
