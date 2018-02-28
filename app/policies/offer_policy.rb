class OfferPolicy < ApplicationPolicy
  def new?
    true
  end

  def create?
    true
  end

  def destroy?
    record.user == user || product.user == user
  end
  def validate?
    record.product.user == user
  end
  def refused?
    record.product.user == user
  end
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
