class DevController < ApplicationController
  def null
    render :text => '42'
  end

  def error
    raise 'Guru Meditation Error'
  end

  def random
    if rand(9) == 0
      raise 'Guru Meditation Error'
    else
      render :text => 'You win!'
    end
  end
end
