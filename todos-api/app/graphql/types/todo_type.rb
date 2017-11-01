Types::TodoType = GraphQL::ObjectType.define do
  name "Todo"
  description "a todo"

  field :id, !types.Int
  field :title, !types.String
  field :created_by, !types.String
  field :items, types[Types::ItemType]
end