class Contact
  attr_accessor :first_name, :middle_name, :last_name
  attr_reader :phone_numbers

  def initalize
    @phone_numbers = []
  end

  def add_phone_number

  def last_first
    last_first = last_name
    last_first += ", "
    last_first += first_name
    if !@middle_name.nil?
      last_first += " "
      last_first += middle_name.slice(0,1) #get the first letter of middle name
      last_first += "."
    end
  end

  def full_name
    full_name = first_name
    if !@middle_name.nil?
      full_name += " "
      full_name += middle_name
    end
  full_name += ' '
  full_name += last_name
  full_name
  end

  def first_last
    first_name + " " + last_name
  end

  def to_s(format = 'full_name')
    case format
    when 'full_name'
      full_name
    when 'last_first'
      last_first
    when 'first'
      first_name
    when 'last'
      last_name
    else
      first_last
    end
  end
end

alex = Contact.new
alex.first_name = "Alex"
alex.last_name = "Handler"
puts alex.to_s
jill = Contact.new
jill.first_name = "Jill"
jill.last_name = "Daley"
jill.middle_name = "Erin"
puts jill.to_s('full_name')
