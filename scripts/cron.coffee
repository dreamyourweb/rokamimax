# Description:
#   Defines periodic executions
cronJob = require 'hubot-cronjob'
 
# module.exports = (robot) ->
#   tz = 'Europe/Amsterdam'
#   new cronJob('0 0 9 * * 1-5', workdaysNineAm, null, true, tz)
#   new cronJob('0 */5 * * * *', everyFiveMinutes, null, true, tz)
#   room = 'general'

#   workdaysNineAm = ->
#      robot.emit 'slave:command', 'wake everyone up', room

#   everyFiveMinutes = ->
#     robot.messageRoom room, 'I will nag you every 5 minutes'

module.exports = (robot) ->
  pattern = '* * * * *'
  timezone = 'Europe/Amsterdam'
  fn = robot.messageRoom 'general', 'TESTING'
  new cronJob pattern, timezone, fn