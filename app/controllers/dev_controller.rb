class DevController < ApplicationController
  def null
    render :text => '42'
  end

  def error
    raise 'Guru Meditation Error'
  end
end
