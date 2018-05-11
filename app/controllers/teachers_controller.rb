class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update, :destroy, :add_subjects, :save_subject]

  def index
    @teacher = Teacher.all
  end

  def show
    respond_to do |format|
      format.js
    end
  end

  def edit
    respond_to do |format|
      format.js
    end
  end

  def new
    @teacher = Teacher.new
  end

  def update
    if @teacher.update(teacher_params)
      redirect_to @teacher, notice: 'teacher was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @teacher.destroy
    respond_to do |format|
      format.html { redirect_to teachers_url , notice: "teacher delete succesfully"}
    end
  end


  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      redirect_to @teacher, notice: "teacher was successfully created"
    else
      render 'new'
    end
  end

  def subjects
    @teacher = Teacher.find(params[:id])
  end

  def add_subjects
    @subjects = Subject.where.not(id:@teacher.subjects.ids)
  end

  def save_subject
    subject = Subject.find(params[:subject_id])
    @teacher.subjects << subject

    if@teacher.save
      flash[:success] = "Add this subject successfully to the this teacher"
    end
  end



  private

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:name, :address, :phone, :email  )
  end
end
