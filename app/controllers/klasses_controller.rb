class KlassesController < ApplicationController
  before_action :set_klass, only: [:show, :edit, :update, :destroy, :add_teacher, :save_teacher]
  def new
    @klass = Klass.new
  end

  def create
    @klass = Klass.new(klass_params)
    respond_to do |format|
      if@klass.save
        format.html{redirect_to @klass, notice: "klass was successfully created"}
      else
        format.html{redirect_to :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @klass.update(klass_params)
        format.html { redirect_to @klass, notice: 'Klass was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def edit

  end

  def destroy
    @klass.destroy
    respond_to do |format|
      format.html { redirect_to klasses_url , notice: "klass delete succesfully"}
     end
  end

  def index
    @klass = Klass.all
  end

  def show
  end

  def teachers
    @klass = Klass.find(params[:id])
  end

  def add_teacher
     @teacher = Teacher.where.not(id:@klass.teachers.ids)
  end
  def save_teacher

    teacher = Teacher.find(params[:teacher_id])
    p teacher
    @klass.teachers << teacher

    if@klass.save
      flash[:success] = "Add this teacher successfully to the class"
    end
  end



  private
  def set_klass
    @klass = Klass.find(params[:id])
  end
  def klass_params
    params.require(:klass).permit(:name)
  end

end