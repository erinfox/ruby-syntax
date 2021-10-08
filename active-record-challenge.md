2 skills/levels

1. "Knowing my tool" What is the syntax? How do i use the rails method to do what I need it to do?
   What are the methods?

2. "Knowing the domain I am working in" 2. What is the domain of CK? understanding the realtionship between objects

---------Active Record quries -CHALLENGES---------

1. search/ find information - where, find(by id only ), order. find_by
2. changes/deleting, change name of broadcast,
3. ????

With this user ID --- find their latest broadcast and see if it was sent.
^^ Now find the html from the email

What is a users default email template?

SELECT COUNT(\*) FROM `users` = sql syntax
User.count = active record syntax
User.find_by(email: "user@ck.lol")

pp = pretty print to make the output prettier

check modal to find any relationships (user --- has_many campaigns)
User.find_by(email: "user@ck.lol).campaigns

list out account campaigns = aka list of broadcasts
User.find_by(email: "user@ck.lol").accounts.primary.campaigns

Are there any campaigns that were sent ???
User.find_by(email: "user@ck.lol").accounts.primary.campaigns.select do |campaign|
campaign.status != "draft"
end

------VOCAB--------
course = sequence
course.email_template = one email within a sequence
email_layout_template = email templates
editor::template ^^
campaign = one broadcast
broadcast = the actual broadcast that gets sent by a campaign. An AB test campaign has 3 broadcasts

STEPS ----
"Where are you" / what obj do you have in hand right now?
Go to the model for that obj
See the relationships (has_many, belongs_to)
~~ learn the domain, ask around, read docs ~~
Active record queries -
