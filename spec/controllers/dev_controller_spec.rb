require 'spec_helper'

describe DevController do
  describe 'tools' do
    it 'should answer the most importent question' do
      get :null
      response.body.should == '42'
    end

    it 'should raise a guru meditation error' do
      expect { get :error }.to raise_error(RuntimeError, "Guru Meditation Error")
    end
  end
end
