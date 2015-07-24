require("./contact.rb")

class AddressBook
  attr_reader :contacts
  def initialize
    @contacts = []
  end

  def find_by_name(name)
    results = []
    search = name.downcase
    contacts.each do |contact|
      if contact.first_name.downcase.include?(search) ||
        contact.last_name.downcase.include?(search)
        results.push(contact)
      end
    end
    puts "name search result (#{search})"
    results.each do |contact|
      puts contact.to_s('full_name')
      puts contact.print_phone_numbers
      puts contact.print_addresses
      puts "\n"
    end
  end

  def print_contact_list
    puts "Contact List"
    contacts.each do |contact|
      puts contact.to_s('last_first')
    end
  end
end

address_book = AddressBook.new
david = Contact.new
david.first_name = "David"
david.middle_name = "Gregory"
david.last_name = "Peters"
david.add_phone_number("home", "203-849-3329")
david.add_address("home","22 Assisi Way", "","Norwalk","CT", "06851")
address_book.contacts.push(david)
address_book.find_by_name("s")
puts david.inspect
