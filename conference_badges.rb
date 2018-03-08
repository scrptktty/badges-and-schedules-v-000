# Write your code here.

require 'pry'

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  arr_list = []
  attendees.each do |x|
    arr_list << badge_maker(x)
  end
  arr_list
end

def assign_rooms(attendees)
  welcome_rooms = []
  attendees.each_with_index do |attendee, index|
    room = index + 1
    room_list = "Hello, #{attendee}! You'll be assigned to room #{room}!"
    welcome_rooms << room_list
  end
  return welcome_rooms
end

def printer(attendees)
     batch_badge_creator(attendees).each { |i| puts i  }
     assign_rooms(attendees).each { |j| puts j  }
end
