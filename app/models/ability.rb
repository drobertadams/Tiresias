class Ability
  include CanCan::Ability

  def initialize(user)

    # Anonymous abilities.
    user ||= User.new # guest user (not logged in)
    can :read, :all # everybody can read everything...
    cannot :read, User # ...except users
    can :create, Submission # everybody can create a submission

    if user.role? :entry
      # Data Entry abilities.
      can :update, Submission
      #can :manage, User #, user_id: user.id # update themselves
    end
    if user.role? :editor
      # Editor abilities (added to Data Entry abilities)
      can :manage, Submission
      can :manage, User, id: user.id
      can :manage, User, role: "entry"
    end
    if user.role? :admin
      # Admin abilities (added to Editor abilities)
      can :manage, :all
    end

    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
