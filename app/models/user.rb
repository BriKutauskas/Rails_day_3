class User
  #initializes user name with inputs
  def initialize (first, last)
    @first = first
    @last = last
  end
  #creates name object
  def full_name
    @first + " " + @last
  end
end
