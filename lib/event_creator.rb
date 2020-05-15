require "pry"
require 'time'
require_relative "event"

class EventCreator

  def initialize 

    puts "Salut, tu veux créer un événement ? Cool !"
    puts "Commençons. Quel est le nom de l'événement ?"
    print ">"
    name = gets.chomp
    puts ""

    puts "Super. Quand aura-t-il lieu ?"
    puts "(exemple 2010-01-13 09:00)"
    print ">"
    date = gets.chomp
    puts ""
    
    puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
    print ">"
    duration = gets.chomp.to_i
    puts ""

    puts "Génial. Qui va participer ? Balance leurs e-mails séparer d'un point virgule"
    print ">"
    attendees = gets.chomp.split(";")
    puts ""

    new_event = Event.new(date, duration, name, attendees)

    puts "Super, c'est noté, ton évènement a été créé !"
    puts "En voila un résumer :"
    puts new_event.to_s

  end

end