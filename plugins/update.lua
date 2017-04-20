--by @SorBlack
--@PrimeTeam :)
function run(msg, matches)
if not is_sudo(msg) then
return 'Sudo Zone ♥.'
end
text = io.popen("git fetch --all && git reset --hard origin/master && git pull origin master "):read('*all')
  return text
end
return {
  patterns = {
    '^[#/!]update$'
  },
  run = run,
  moderated = true
}
