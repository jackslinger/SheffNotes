class Ability
  include CanCan::Ability

  def initialize(user)
    can [:read, :create, :new, :update], Course
    can [:read, :create, :new, :update], Note
  end
end
