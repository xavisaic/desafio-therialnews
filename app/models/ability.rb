class Ability
    include CanCan::Ability
  
    def initialize(user)
      user ||= User.new # guest user (not logged in)
  
      if user.admin?
        can :manage, :all
      else
        can :read, Noticium
        can :create, Noticium
        can :update, Noticium, user_id: user.id
        can :destroy, Noticium, user_id: user.id
      end
    end
  end
  