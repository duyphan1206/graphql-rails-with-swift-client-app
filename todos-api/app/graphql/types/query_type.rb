Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

  field :me, Types::UserType do
    description "The current user"
    resolve ->(obj, args, ctx) {
      User.first
    }
  end 

  field :user, Types::UserType do
    description 'Retrieve a User by id'
    
    argument :id, !types.ID, 'The ID of the User to retrieve'
    
    resolve ->(obj, args, ctx) {
      User.find(args[:id])
    }
  end

  field :todos, types[Types::TodoType] do
    description 'Retrieve a list of all todos'
    
    resolve ->(obj, args, ctx) {
      Todo.all
    }
  end

  field :todo, Types::TodoType do
    description 'Retrieve a Todo by id'
    
    argument :id, !types.ID, 'The ID of the Todo to retrieve'
    
    resolve ->(obj, args, ctx) {
      Todo.find(args[:id])
    }
  end
end
