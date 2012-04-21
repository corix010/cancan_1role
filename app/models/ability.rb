class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in (current) user. For example:
    #
    #   if user
    #     can :access, :all
    #   else
    #     can :access, :home
    #     can :create, [:users, :sessions]
    #   end
    #
    # Here if there is a user he will be able to perform any action on any controller.
    # If someone is not logged in he can only access the home, users, and sessions controllers.
    #
    # The first argument to `can` is the action the user can perform. The second argument
    # is the controller name they can perform that action on. You can pass :access and :all
    # to represent any action and controller respectively. Passing an array to either of
    # these will grant permission on each item in the array.
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
    # user ||= User.new
    # can :access, :home
    #
    # if user.is?('admin')
      # can :access, :all
    # elsif user.is?('user')
      # can :index, :users
    # else
      # can :access, :home
    # end
    if user.role == "admin"
      can :access, :all
    elsif user.role == "user"
      can :access, :users
    end
    can :access, :home
  end
end
