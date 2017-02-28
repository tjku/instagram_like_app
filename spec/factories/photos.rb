FactoryGirl.define do
  factory :photo do
    image { File.new "#{Rails.root}/spec/fixtures/image.jpg" }
  end
end
