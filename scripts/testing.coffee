# Description:
#   DevOps reactions from https://github.com/hubot-scripts/hubot-devops-reactions/blob/master/src/devops-reactions.coffee
#
# Dependencies:
#   jsdom
#
# Configuration:
#   None
#
# Commands:
#   devops reactions
#
# Author:
#

jsdom = require('jsdom').jsdom
jquery = 'http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js'
url = 'http://devopsreactions.tumblr.com/random'
devopsRegex = /(devops reactions|!devops)/i

module.exports = (robot) ->
  robot.hear devopsRegex, (msg) ->
    msg.http(url).get() (err, res, body) ->
      location = res.headers.location
      jsdom.env location, [jquery], (errors, window) ->
        (($) ->
            msg.send $
        )(window.jQuery)
