module StudentsHelper
  def date_cal(student)
    a = Date.parse((Book.find(student.book_id).borrowed_date).to_s)
    b = Date.parse((Date.today).to_s)
    c = b.mjd - a.mjd
  end
end
