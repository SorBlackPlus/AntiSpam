local datebase = {
   "آنلاینم بی کص😐❤️",
  "ریدی داش آنلاینم 😐❤️ ",
  "خفه شو عن چهره توهین نکن 😐❤️ ",
   "نزن لامصب انلاینم 😐❤️ ",
   "جاکش انلاینم دیه گاییدی 😐❤️ ",
   "افلاین نگاییدم 😐❤️ ",
  }
local function run(msg, matches) 
return datebase[math.random(#datebase)]
end
return {
  patterns = {
    "^[/#+×!$]([Pp][Ii][Nn][Gg])",
    "^(پینگ)",
  },
  run = run
}
-- by #sorblack :):|
