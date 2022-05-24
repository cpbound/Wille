class WillsController < ApplicationController

  def index
    @will = Will.all
  end
end
