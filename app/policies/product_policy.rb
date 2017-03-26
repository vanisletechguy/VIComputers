class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def edit?
    user.admin == true
  end

  def destroy?
    user.admin == true
  end
end
