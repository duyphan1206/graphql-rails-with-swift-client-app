Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # TODO: Remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

  field :createComment, Types::CommentType do
    description 'Allows you to create a new comment'

    argument :body, !types.String
    argument :user_id, !types.Int
    
    resolve ->(obj, args, ctx) {
      comment = Comment.new(args.to_h)
      comment.save
      comment
    }
  end

  field :createTodo, Types::TodoType do
    description 'Allows you create a new Todo'

    argument :title, !types.String
    argument :created_by, !types.String

    resolve ->(obj, args, ctx) {
      todo = Todo.new(args.to_h)
      todo.save
      todo
    }
  end

end
