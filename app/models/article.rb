class Article
  include Mongoid::Document
  include Mongoid::Timestamps
  # validates_presence_of :title
  validates :title,
  			presence: true,
  			length: { minimum: 3 }

  field :title, type: String
  field :content, type: String
  field :cover_url, type: String

  embeds_many :comments
  belongs_to :user

  accepts_nested_attributes_for :comments
end
