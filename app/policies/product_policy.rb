class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
      scope.all # Si el usuario puede ver todos los productos
    #   scope.where(user: user) # Si el User puede solo ver sus productos
      # scope.where("name LIKE 't%'") # Ej. Si el usuario puede solo ver los productos que empiecen con `t`
    end
  end

  def my_products?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
