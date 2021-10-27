2 skills/levels

1. "Knowing my tool" What is the syntax? How do i use the rails method to do what I need it to do?
   What are the methods?

2. "Knowing the domain I am working in" 2. What is the domain of CK? understanding the realtionship between objects

---------Active Record quries -CHALLENGES---------

1. search/ find information - where, find(by id only ), order. find_by
2. changes/deleting, change name of broadcast, change html
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
end.map do |campaign|
campaign.status
end

------VOCAB--------
course = sequence
course.email_template = one email within a sequence
email_layout_template = email templates
editor::template ^^
campaign = one broadcast
broadcast = the actual broadcast that gets sent by a campaign. An AB test campaign has 3 broadcasts
campaign variant = one of the broadcast within the campaign

STEPS ----
"Where are you" / what obj do you have in hand right now?
Go to the model for that obj
See the relationships (has_many, belongs_to)
~~ learn the domain, ask around, read docs ~~
Active record queries -

find a campaign from the id
find a campaign from the subject
change the status from sending to aborted

find the campaign id
indexing

campaign (has many campaign variants) -------
campaign variant A --- broadcast
campaign variant B --- broadcast

---

next week - active record updating things
https://guides.rubyonrails.org/active_record_basics.html#crud-reading-and-writing-data

---------Active Record quries -CHALLENGES---------

```create ~~~~~~~~~~~~~

user = User.create(email: "erin+345345@ck.lol", password: "abc123", terms_of_service: true)

user.password= "abc123"
user.save
user.errors

User Update (3.2ms)  UPDATE `users` SET `updated_at` = '2021-10-27 18:42:09', `name` = 'erin' WHERE `users`.`id` = 42
user.update(name: "erin")
user.name = "erin" --- does not save to db

Create
user = User.create(email: "erin+345345@ck.lol", password: "abc123", terms_of_service: true)

Read
User.find_by(email: "erin+345345@ck.lol")
User.where(email: "erin+345345@ck.lol") // returns the user as an array
User.where("created_at > ?", 1.year.ago).where.not("email like '%erin%'")
ORM


--- next time ----
do it all again without these notes
revist join


find an account that was blocklisted
go from a campaign id to a user, change their password, etc.
where did recent accounts sign up from?
list of emails for recent accounts that were blocklisted?
SignupSurveyResults ----> "other" creator type

When should you be scared/careful with production console?
-destory
-destroy_all
-volume.scale - ex: dont want to print out all campaigns

chat about rails and gql
```
