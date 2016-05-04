class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can [:read, :create, :new, :update], Course
    can [:read, :create, :new, :update], Note
  end
end
