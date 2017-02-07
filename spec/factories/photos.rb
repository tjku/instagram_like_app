FactoryGirl.define do
  factory :photo do
    image { File.new("#{Rails.root}/spec/support/fixtures/image.jpg") }
  end
end
