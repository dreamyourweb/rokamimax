# Description
#   Tell who is 'de lul'
#
# Dependencies:
#   "<module name>": "<module version>"
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot who - gives back who's 'de lul'
#   your'e - Tells you it should be you're
#   hubot jump - hubot will jump
#
# Notes:
#   use for 
#
# Author:
#   bramdenteuling

module.exports = (robot) ->

  robot.respond /jump/i, (msg) ->
    msg.emote "jumping!"

  robot.respond /who/i, (msg) ->
    msg.send msg.random ["Bram", "Joris", "Andres", "Vera", "Hanneke", "Saiden", "Stijn", "Marijn"]

  robot.hear /your'e/i, (msg) ->
    msg.send "you're"

  robot.hear /what year is it\?/i, (msg) ->
    msg.reply new Date().getFullYear()
