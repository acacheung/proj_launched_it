FactoryGirl.define do
  factory :project do
    name 'Breakable Toy'
    url 'www.google.com'
    codebase_url 'www.github.com'
    description 'Yay beautiful app'
    contact_email 'yay@me.com'
  end

  factory :comment do
    first_name 'Launcher'
    last_name 'McAacdemy'
    email 'launch@academy.com'
    body 'I love Launch Academy'
    project_id '1'
  end
end