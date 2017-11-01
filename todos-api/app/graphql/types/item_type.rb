Types::ItemType = GraphQL::ObjectType.define do
  name 'Item'
  description 'Represents a items on a todo'

  field :id, types.ID, 'The ID of the item'
  field :name, types.String, 'The name of the item'
  field :todo, Types::TodoType, 'The todo post where had the items'
  field :done, types.Boolean
end