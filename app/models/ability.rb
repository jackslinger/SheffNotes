class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :read, Course, :participations => { :user_id => user.id }
    can [:read, :create], Note
  end
end
