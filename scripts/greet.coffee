# Description:
#   greeting
#
# Dependencies:
#   none
#
# Configuration:
#   none
#
# Commands:
#   hubot hello - hello!
#
# Notes:
#   hubot for slack
#
# Author:
#   kagozoh

module.exports = (robot) ->

  robot.respond /hello/i, (msg) ->
    msg.send "hello!"
