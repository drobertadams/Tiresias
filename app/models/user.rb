class User < ApplicationRecord
  # Adds authentication actions to this model.
  acts_as_authentic
end
