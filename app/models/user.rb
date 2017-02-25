class User < ApplicationRecord
  # Adds authentication actions to this model from authlogic gem.
  acts_as_authentic

  # Define the different user roles. Order is critical, since each subsequent
  # role inherits the abilities of the previous entries.
  ROLES = %w[entry editor admin].freeze

  # Return whether or not the given user has the specified role, or any role
  # less (in the array above).
  def role?(base_role)
    return false if role.nil? # for anon users

    # Is the index of base_role <= index of the actual role?
    ROLES.index(base_role.to_s) <= ROLES.index(role)
  end

end
