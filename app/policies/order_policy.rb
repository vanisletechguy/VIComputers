class OrderPolicy < ApplicationPolicy
  cattr_accessor :current_user
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    @user.present?
  end

end
