# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message, class: 'Contactable::Contact' do
    name 'Steve Jobs'
    email 'steve@apple.com'
    subject 'New device'
    body 'Hi John, what do you think about apple phone?'
  end

  factory :invalid_message, parent: :message do
    email nil
  end
end