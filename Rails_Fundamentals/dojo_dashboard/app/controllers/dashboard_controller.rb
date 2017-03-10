class DashboardController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
  end

  def create
    dojo = Dojo.create(branch:params[:branch], street:params[:street], city:params[:city], state:params[:state])
    if dojo.valid?
      redirect_to '/'
    else
      flash[:errors] = dojo.errors.full_messages
      redirect_to '/new'
    end
  end

  def show
    @dojo = Dojo.find(params[:id])
    @students = Dojo.find(params[:id]).students
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    Dojo.find(params[:id]).update(branch:params[:branch], street:params[:street], city:params[:city], state:params[:state])
    redirect_to '/show/' + params[:dojo_id]
  end

  def destroy
    Dojo.find(params[:id]).destroy
    redirect_to '/'
  end

  def new_student
    @dojos = Dojo.all
    @dojo = Dojo.find(params[:dojo_id])
  end

  def create_student
    Student.create(first_name:params[:first_name], last_name:params[:last_name], email:params[:email], dojo:Dojo.find(params[:dojo]) )
    redirect_to '/show/' + params[:dojo_id]
  end

  def show_student
    @dojo = Dojo.find(params[:dojo_id])
    @student = Student.find(params[:id])
    @classmates = Dojo.find(params[:dojo_id]).students.where.not(id: @student.id)
  end

  def edit_student
    @dojos = Dojo.all
    @student = Student.find(params[:id])
  end

  def update_student
    Student.find(params[:id]).update(first_name:params[:first_name], last_name:params[:last_name], email:params[:email], dojo:Dojo.find(params[:dojo]))
    redirect_to '/show/student/' + params[:id] + '/' + params[:dojo]
  end

  def destroy_student
    Student.find(params[:id]).destroy
    redirect_to '/show/' + params[:dojo_id]
  end
end
