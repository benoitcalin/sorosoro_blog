class Message
  include ActiveModel::Model
  attr_accessor :first_name, :last_name, :email, :body, :subject

  validates_presence_of :last_name
  validates_presence_of :first_name
  validates_presence_of :email
  validates_presence_of :body
  validates_presence_of :subject
end
