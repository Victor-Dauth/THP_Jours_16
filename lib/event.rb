require "pry"
require 'time'

class Event #création d'un class évent qui prendra comme variable une date une durée un titre et un nombre de participent

  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(date_event, duration_event, title_event, attendees_event_array) #se lance a la création de chaque nouvelle instance

    @start_date = Time.parse(date_event) if date_event.is_a?(String)
    @duration = duration_event if duration_event.is_a?(Integer)
    @title = title_event if title_event.is_a?(String)
    @attendees = attendees_event_array if attendees_event_array.is_a?(Array)
  end

  def postpone_24h #permets de décaller l'évenement de 24h
    @start_date += 86400
  end

  def end_date #permet de savoir quand fini l'évènement
    start_date + duration*60
  end

  def is_past? #permet de savoir si la date de l'évènement est déjà passer ou pas
    start_date < Time.now
  end

  def is_future? #permet de savoir si la date de l'évènement est dans le future
    #start_date > Time.now
    !self.is_past?
  end

  def is_soon? #permet de savoir si la date de l'évènement est dans moins de 30 minutes
    start_date.between?(Time.now - 30, Time.now)
  end

  def to_s #permet d'afficher de manière jolie l'évènement
    puts ">Titre : #{@title}"
    puts ">Date de début : #{@start_date.strftime("%Y-%m-%d %H:%M")}"
    puts ">Durée : #{@duration} minutes"
    puts ">Invités : #{@attendees.join(", ")}"
  end

end 