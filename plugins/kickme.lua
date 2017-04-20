function run(msg, matches)

if matches[1] == 'kickme' then
local hash = 'kick:'..msg.chat_id_..':'..msg.sender_user_id_
     redis:set(hash, "waite")
      return 'ببین داداش بیا رو راست باشیم😐 ولی اگه اذیت کنی من رو چپ میشم😐 الان فازت چیه این دستور رو زدی؟😐 بزنم دهنتو با ... یکی کنم😐؟ ببین اگه میخوای سیکتو بزنم😐 تو همین گروه بنویس yes تا سیکتو هر چه سریعتر بزنم و راحت شیم😐 اما اگه دست ناکست خورده و بنویسی no من سیکتو نمیزنم😐 اوکیه؟😐 اگه no بزنی بعدا به حسابت میرسم😐'
    end
msg.text = msg.content_.text_
    if msg.text then
  local hash = 'kick:'..msg.chat_id_..':'..msg.sender_user_id_
     if msg.text:match("^yes$") and redis:get(hash) == "waite" then
    redis:set(hash, "ok")
  elseif msg.text:match("^no$") and redis:get(hash) == "waite" then
  tdcli.sendMessage(msg.chat_id_, 0, 1, 'maraz dari 😐?', 1, 'md')
    redis:del(hash, true)
      end
    end
  local hash = 'kick:'..msg.chat_id_..':'..msg.sender_user_id_
   if redis:get(hash) then
        if redis:get(hash) == "ok" then
         kick_user(msg.sender_user_id_,msg.chat_id_) 
         return 'کاربر مورد سیکش زده شد😐!'
        end
      end
    end

return {
  patterns = {
 "[+×$*!/]([Kk][Ii][Cc][Kk][Mm][Ee])",
 "kickme",
  "^yes$",
  "^no$"
  },
  run = run,
}

--By #sorblack :):|
