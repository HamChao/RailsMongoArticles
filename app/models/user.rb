class User
  include Mongoid::Document
  field :name, type: String
  field :avatar_url, type: String

  embedded_in :article, inverse_of: :author
  embedded_in :comment, inverse_of: :user

  accepts_nested_attributes_for :article, :comment
end
