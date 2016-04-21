class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, :all
    # can [:read, :create], Course
    # can [:read, :create], Note
  end
end
