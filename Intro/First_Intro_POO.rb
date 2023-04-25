require 'pry'

class User

  attr_writer :mastercard #à mettre en en-tête de ta classe En gros, un attr_writer permet de modifier une variable d'instance sans avoir à coder une méthode .update_variable(nouvelle_variable).
                          #Par contre, ta variable d'instance ne pourra pas être appelée sur l'instance avec .variable.
                          #Mais elle pourra être appelée dans le code à l'intérieur de ta classe (avec son nom en @variable : voir ci-dessus dans la méthode read_mastercard).
  attr_reader :birthdate # En gros, un attr_reader permet de lire une variable d'instance sans avoir à coder une méthode .read_variable.
                          #Par contre, ta variable d'instance ne pourra pas être modifiée avec instance.variable = nouvelle_valeur .
                          #Mais elle pourra être appelée dans le code à l'intérieur de ta classe (avec son nom en @variable : voir ci-dessus dans la méthode update_birthdate).

  attr_accessor :email  # Le attr_accessor combine le attr_reader et attr_writer.

  @@user_count = 0 # on initialise la variable de classe qui sera un compteur du nombre d'instance


  def initialize(email_to_save) # Il est possible d'exécuter du code en même temps que la création d'une instance : c'est la méthode initialize.
                                # La méthode initialize est très courante !!
    @email = email_to_save
    @@user_count = @@user_count + 1 # un utilisateur vient d'être créé : on ajoute donc 1 au compteur
    puts "On envoie un email de Bienvenue !!"
  end

  def self.count #Voici une méthode count qui affiche une variable de classe
    return @@user_count
  end

  def update_birthdate(birthdate_to_update)
    @birthdate = birthdate_to_update
  end

  def read_mastercard
    return @mastercard
  end

  def greet
    puts "Bonjour, monde !"
  end

  def say_hello_to_someone(first_name)
    puts "Bonjour, #{first_name} !"
  end

  def show_itself
    print "Voici l'instance : "
    puts self
  end


  def update_email(email_to_update)
    @email = email_to_update
  end

  def read_email
    return @email
  end

  def truc_public
    # on peut faire julie.truc_public
  end

  private #Toutes les méthodes en dessous de cette balise seront privées. A mettre en bas de ta classe donc !

  def truc_private
    # impossible de faire julie.truc_private
  end

end

binding.pry
puts "end of file"
