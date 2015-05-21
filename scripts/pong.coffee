# Description:
#   The natural counterpart to PING: respond to PONG
#
# Commands:
#   hubot <PONG> - answer with PING
#
# Author:
#   nwweber

module.exports = (robot) ->

  robot.respond /pong/i, (msg) ->
    msg.send "PING"
