class User
  attr_accessor :email
  attr_accessor :age

  @@all_users = []

  def initialize(email_to_save, age_to_save)
    @email = email_to_save
    @age = age_to_save
    @@all_users << self
  end

  def self.find_by_email(email_to_find)

    @@all_users.each do |elem|
      if email_to_find == elem.email
        return elem
      end
    end
      puts "Aucun utilisateur.rice relié.e à cet email n'a été trouvé.e."
      return false
  end

  def self.all
    return @@all_users
  end
end
