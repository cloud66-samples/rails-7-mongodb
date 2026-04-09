class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :email, type: String
  field :uuid, type: String

  has_many :articles

  before_create :do_before_create

  def do_before_create
    self.uuid ||= ::SecureRandom.hex
  end
end
