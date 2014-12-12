class MeetingsController < ApplicationController

  def index
    @meetings = Meeting.all
  end

  def create
    meeting_params = params[:meeting]

    form = Form::Meeting.new(meeting_params)

    if meeting.save!
      flash[:success] = 'Meeting is created'
      render :index
    else
      flash[:error] = form.errors
      redirect_to :new
    end

  end
end
