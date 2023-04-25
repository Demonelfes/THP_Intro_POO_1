require 'terminal-table'

# Fonction pour afficher le calendrier
def display_calendar
  # Tableau pour stocker les jours du mois
  days = (1..31).to_a

  # En-tête de la table avec les jours de la semaine
  headers = ['Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi', 'Dimanche']

  # Création de la table avec les en-têtes de colonnes
  table = Terminal::Table.new :headings => headers.map { |day| day.center(20) } do |t|
    # Définition du style de la table
    t.style = {
      border_x: '-',
      border_i: '+',
      border_y: '|',
      padding_left: 1,
      padding_right: 1
    }

    # Ajout des jours du mois dans la table
    (1..31).each_slice(7) do |week|
      row = []


      blabla = []
      blabla2 = []
      events_row = []
      week.each do |day|
        events = []
        row << day.to_s.center(20)
        blabla << ' '
        blabla2 << ' '
        case day
        when 2, 11, 20
          events << '9 a.m'
        end
        events_row << events.join("\n").center(10)
      end
      t.add_row row
      t.add_row blabla
      t.add_row blabla2
      t.add_row events_row
      t.add_separator unless week == [29, 30, 31]
    end
  end

  # Affichage de la table
  puts table
end

# Appel de la fonction pour afficher le calendrier
display_calendar
