class Conversation < ApplicationRecord

  enum status: {pending: 'pending', in_process: 'in_process', finished: 'finished'}
  include PGEnum(status: %w[pending in_progress finished])
end
