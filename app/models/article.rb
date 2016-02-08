class Article
  include Mongoid::Document
  # validates_presence_of :title
  validates :title,
  			presence: true,
  			length: { minimum: 3 }

  field :title, type: String
  field :content, type: String
  field :cover_url, type: String

  embeds_one :author, class_name: 'User', inverse_of: :user
  embeds_many :comments

  accepts_nested_attributes_for :author, :comments
end
