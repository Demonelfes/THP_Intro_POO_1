class EventCreator
  attr_accessor :start_date
  attr_accessor :duration
  attr_accessor :title
  attr_accessor :attendees
  attr_reader :event_end_date

  def initialize()
    @attendees = []

    puts "Salut, tu veux créer un événement ? Cool !\nCommençons. Quel est le nom de l'événement ?"
    @title = gets.chomp
    puts "Super. Quand aura-t-il lieu ?"
    @start_date = gets.chomp
    puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
    @duration = gets.chomp.to_i
    puts "Génial. Qui va participer ? Balance leurs e-mails"
    @attendees << gets.chomp.to_s

    puts Event.new(@start_date, @duration, @title, @attendees).to_s
    puts "Super, c'est noté, ton évènement a été créé !"
  end
end
