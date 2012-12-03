# -*- encoding : utf-8 -*-

  #1.whenever -i ->  写入cron任务
  #2.whenever    ->  查看已经写好的whenever任务
  #3.whenever -c ->  停止已经写好的cron任务  

# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

every 1.day, :at => '4:00 am' do
  command "echo ===== #{Time.now.strftime "%Y-%m-%d %H:%M:%S"}数据开始拉取 ====="
  rake "db:pull"
end
