Types::UserType = GraphQL::ObjectType.define do
  name "User"
  description "a user"

  field :id, !types.Int
  field :emailAddress, !types.String, property: :email
  field :name, !types.String
  field :comments, types[Types::CommentType]
end