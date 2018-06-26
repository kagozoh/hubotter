# Description:
#   今日は何曜日
#
# Dependencies:
#   none
#
# Configuration:
#   none
#
# Commands:
#   none
#
# Notes:
#   hubot for slack
#
# Author:
#   kagozoh

cronJob = require('cron').CronJob

module.exports = (robot) ->

  cronjob = new cronJob(
    cronTime: "0 00 11 * * tue"    # 実行時間
    start:    true                # すぐにcronのjobを実行するか
    timeZone: "Asia/Tokyo"        # タイムゾーン指定
    onTick: ->                    # 時間が来た時に実行する処理
      robot.send {room: "#general"}, "今日は定時に帰りましょう！"
  )