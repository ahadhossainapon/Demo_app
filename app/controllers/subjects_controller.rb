class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy]
  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    p subject_params
    if @subject.save
      redirect_to @subject, notice: "subject was successfully created"
    else
      render 'new'
    end
  end

  def update
    if @subject.update(subject_params)
      redirect_to @subject, notice: 'subject was successfully updated.'
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy
    @subject.destroy
    respond_to do |format|
      format.html { redirect_to subjects_url , notice: "subject delete succesfully"}
    end
  end


  def index
    @subject = Subject.all
  end

  def show

  end

  private
  def set_subject
    @subject = Subject.find(params[:id])
  end
  def subject_params
    params.require(:subject).permit(:name, :title)
  end

end
