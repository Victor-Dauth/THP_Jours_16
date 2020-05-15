require "pry"

class User #un user est defini par son age et son mail

  attr_accessor :email, :age

  @@user_array = [] #permet de ressencer tous nos user

  def initialize(mail_to_user, age_to_user) 
    @email = mail_to_user if mail_to_user.is_a?(String)
    @age = age_to_user if age_to_user.is_a?(Integer)
    @@user_array << self
  end

  def self.all #permet d'afficher tous les adresse mail des utilisateur
    print @@user_array
  end

  def self.find_by_email(email_search)

    @@user_array.each {|s| return s if s.email == email_search}
    puts "aucun utilisateur n'a cet email"
  end

end