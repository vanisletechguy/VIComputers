class ProductPolicy < ApplicationPolicy
  cattr_accessor :current_user
  class Scope < Scope
    def resolve
      #scope.where(user_id: @user.try(:id))
      scope
    end
  end

  def show?
  end

  def new_product?
    user && user.admin == true
  end
  def show_orders?
    current_user.present?
  end
  def order?
    current_user.present?
  end
  def edit?
    user && user.admin == true
  end

  def destroy?
    user && user.admin == true
  end
end
