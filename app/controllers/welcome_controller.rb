class WelcomeController < ApplicationController
  def index
    @nums = Rails.cache.read("num").presence || []
    @num = rand(1..75)
    @nums << @num
    Rails.cache.write("num", @nums, :expired_in => 2.hours)
  end

end
