require("./contact.rb")

class AddressBook
  attr_reader :contacts
  def initialize
    @contacts = []
  end

  def print_contact_list
    puts "Contact List"
    contacts.each do |contact|
      puts contact.to_s('last_first')
    end
  end
end

address_book = AddressBook.new

alex = Contact.new
alex.first_name = "Alex"
alex.last_name = "Handler"
alex.add_phone_number("home", "203-849-3329")
alex.add_phone_number("home", "203-234-3329")
alex.add_address("home","22 Assisi Way", "Apt c","Norwalk","ct","06851")
address_book.contacts.push(alex)
jill = Contact.new
jill.first_name = "Jill"
jill.last_name = "Daley"
address_book.contacts.push(jill)
puts address_book.print_contact_list
