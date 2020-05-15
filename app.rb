require "pry"
require "./lib/event"
require "./lib/user"
require "./lib/event_creator"


def test_user_1

  jo = User.new("jo@email.com", 18)
  julie = User.new("juju@julie.fr", 45)
  victor = User.new('vico@toto.com', '258')

  puts jo
  puts jo.email
  puts victor.email

  puts jo.age
  puts victor.age

  puts User.all
end

def test_2
  event_1 = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])


  puts event_1.start_date
  puts event_1.start_date.class
  event_1.postpone_24h
  puts event_1.start_date
  puts event_1.duration
  puts event_1.title
  puts event_1.attendees

  puts ""
  puts ""
  puts ""

  puts event_1.end_date
  puts event_1.is_past?
  puts event_1.is_future?
  puts event_1.is_soon?

  puts ""
  puts ""

  puts event_1.to_s
end

def test_3

  User.new("julie@julie.com", 35)
  User.new("jean@jean.com", 23)
  User.new("claude@claude.com", 75)

  user_search = User.find_by_email("claude@claude.com")

  puts "Voici l'age du User trouvé : #{user_search.age}"

end

def test_4

  EventCreator.new

end

test_4