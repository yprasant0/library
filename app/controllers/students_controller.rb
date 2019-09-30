class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  def new
    @student=Student.new
  end
  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "Student was registered successfully!"
      redirect_to students_path(@student)
    else
      render 'new'
    end
  end
  def assignment
    @students=Student.all
    $first_value = params[:id2]

  end
  def display
    @assigned = Student.find(params[:id1])
    @book_assigned = Book.find($first_value)
    if(@book_assigned.assigned.nil?)
      @assigned.update_attribute(:book_id, $first_value)
      @book_assigned.update_attribute(:assigned, @assigned.name)
      @book_assigned.update_attribute(:borrowed_date, Date.today)
    else
      flash[:notice] = "Already Assigned"
      redirect_to students_path(@student)
      end
  end

  private
  def student_params
    params.require(:student).permit(:name, :address, :section)
  end
end
