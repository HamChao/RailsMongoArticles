class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  field :body, type: String

  embedded_in :article, inverse_of: :comments
  embeds_one :user

  accepts_nested_attributes_for :user, :article
end
