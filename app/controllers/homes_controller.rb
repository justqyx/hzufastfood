# -*- encoding : utf-8 -*-
class HomesController < ApplicationController
  def index
    @foods = Food.paginate(:page => params[:page], :per_page => 10)
  end

  # 拉取数据
  def pull_data
    system "rake db:pull"
  end
  
  # 开始所有whenever任务
  def start_crons
    system "whenever"
  end

  # 停止所有whenever任务
  def stop_crons
    system "whenever -c"
  end
end
