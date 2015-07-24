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
  print_results("name search results(#{search})",results)
    end
  end
  def find_by_phone_number(number)
    results = []
    search = number.gsub("-", "")
    contacts.each do |contact|
      contact.phone_numbers.each do |phone_number|
        if phone_number.number.gsub("-", "").include?(search)
          results.push(contact) unless results.include?(contact)
        end
      end
    end
    print_results("Phone search results (#{search})", results)
  end
  def print_results(search, results)
  puts search
  results.each do |contact|
    puts contact.to_s('full_name')
    contact.print_phone_numbers
    contact.print_addresses
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
address_book.find_by_phone_number("203-849-3329")
