class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user_id: @user.try(:id))
    end
  end

  def show?
  end

  def edit?
    @user.try(:admin) == true
  end

  def destroy?
    @user.try(:admin) == true
  end
end
