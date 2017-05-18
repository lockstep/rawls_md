FactoryGirl.define do
  factory :group do
    sequence(:name) { |n| "My Group #{n}" }
    state ''
    country ''
    description 'test description'
    website 'https:\\rawlsmd.com'
    facebook_page 'google'
    facebook_url 'https:\\www.facebook.com'
  end
end
