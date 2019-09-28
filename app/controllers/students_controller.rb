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
      redirect_to books_path(@student)
    else
      render 'new'
    end
  end
  def assignment
    @students=Student.all
    $first_value = params[:id2]

  end
  def display
    @assigned = Student.find(params[:id])

    @book_assigned = Book.find($first_value)


  end

  private
  def student_params
    params.require(:student).permit(:name, :address, :section)
  end
end
