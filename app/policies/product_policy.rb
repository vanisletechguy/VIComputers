class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      #scope.where(user_id: @user.try(:id))
      scope
    end
  end

  def show?
  end

  def edit?
    user && user.admin == true
  end

  def destroy?
    user && user.admin == true
  end
end
