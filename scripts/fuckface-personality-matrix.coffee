# Description:
#   Fuckface's personality matrix
#
#   Function:
#	everyone loves to fuckface

module.exports = (robot) ->

   #Stupid simple shit responses we enjoy:
   robot.hear /joel/i, (msg) ->
     msg.send "JOEL!!!"

   robot.hear /lolflare/i, (msg) ->
     msg.send "I think you shitheads mean cloudflare..."

   robot.hear /cloudflare/i, (msg) ->
     msg.send ":poop:flare"


