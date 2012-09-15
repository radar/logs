# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
channel = Channel.new
channel.name = "seeds"
channel.save

radar = Person.create nick: "Radar"
wmoxan = Person.create nick: "wmoxam"

channel.messages.create person: radar, text: "oh you crazy kids"
channel.messages.create person: wmoxan, text: "Who U callin' crazy?"
channel.messages.create person: radar, text: "wmoxam: You're not a kid, ergo..."
channel.messages.create person: wmoxan, text: "Who U callin' crazy?"
channel.messages.create person: radar, text: "wmoxam: YOU."
channel.messages.create person: wmoxan, text: ":-("

long_messages = Channel.new
long_messages.name = "long_messages"
long_messages.save

person = Person.create nick: "Messenger"
lorem = "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
1.upto 10 do |i|
  long_messages.messages.create person: person, text: lorem[0..(25 * i)]
end
