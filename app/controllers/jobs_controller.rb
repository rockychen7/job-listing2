class JobsController < ApplicationController

  def show
    @jobs = Jon.find(params[:id])
  end

  def index
    @jobs = Job.all
  end
end
