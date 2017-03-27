class OrderPolicy < ApplicationPolicy
  cattr_accessor :current_user
  class Scope < Scope
    def resolve
      #scope.where(user_id: @user.try(:id))
      scope
    end
  end

  def index?
    @user.present?
  end

end
