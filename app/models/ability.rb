class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can [:read, :create, :new], Course
    can [:read, :create, :new], Note
  end
end
