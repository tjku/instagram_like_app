require 'rails_helper'

RSpec.describe Photo, type: :model do
  before do
    @photo = FactoryGirl.build :photo
  end

  subject { @photo }

  it { is_expected.to have_attached_file(:image) }
  it { is_expected.to validate_attachment_presence(:image) }
  it do
    is_expected.to
    validate_attachment_content_type(:image)
      .allowing('image/png', 'image/gif')
      .rejecting('text/plain', 'text/xml')
  end

  it { is_expected.to be_valid }
end
