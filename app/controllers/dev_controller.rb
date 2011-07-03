class DevController < ApplicationController
  def null
    render :text => '42'
  end

  def error
    raise 'Guru Meditation Error'
  end

  def random
    r = rand(9)
    if r == 0
      raise "Guru Meditation Error"
    else
      render :text => "#{r} - You win!"
    end
  end
end
