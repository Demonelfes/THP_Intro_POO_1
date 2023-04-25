class Event

  attr_accessor :start_date
  attr_accessor :duration
  attr_accessor :title
  attr_accessor :attendees
  attr_reader :event_end_date


  def initialize(event_start_date, event_duration_time, event_title, event_attendees_mails)
    @start_date = Time.parse(event_start_date)
    @duration = event_duration_time
    @title = event_title
    @attendees = event_attendees_mails

    unless @duration.is_a?(Integer)
      abort("La duree de l'evenement doit etre un Integer.")
    end
    unless @title.is_a?(String)
      abort("Le nom de l'évenement doit etre une String.")
    end
    # unless @attendees.is_a?(Array)
    #   abort("La liste d'email de l'event doit etre un Array.")
    # end
  end
  
  def age_analysis
  age_array = [] #On initialise un array qui va contenir les âges de tous les participants à un évènement
  average = 0 #On initialise une variable pour calculer la moyenne d'âge à l'évènement

  @attendees.each do |attendee| #On parcourt tous les participants (objets de type User)
    age_array << attendee.age #leur âge est stocké dans l'array des âges
    average = average + attendee.age #leur âge est additionné pour préparer le calcul de la moyenne
  end

  average = average / @attendees.length #on divise la somme des âges pour avoir la moyenne

  puts "Voici les âges des participants :"
  puts age_array.join(", ")
  puts "La moyenne d'âge est de #{average} ans"
end

  def postpone_24h
    @start_date = @start_date + (24*60*60) # + (24 * 60 mins * 60secs)
  end

  def end_date
    @event_end_date = @start_date + (@duration * 60)
    return @event_end_date
  end

  def is_past?
    return @start_date < Time.now ? true : false
  end

  def is_future?
    return !is_past?
  end

  def is_soon?
    return @start_date < (Time.now + (30*60)) ? true : false
  end

  def to_s
    puts "Titre : #{@title}."
    puts "Date de debut : #{start_date}".chomp('+0200')
    puts "Durée : #{@duration} minutes."
    print "Invité.e.s : "
    @attendees.each do |elem|
      print "#{elem}, "
    end
  end

end
