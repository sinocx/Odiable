class ProductPolicy < ApplicationPolicy
  def index?
    true
  end
  def show?
    true
  end
  def new?
    true
  end

  def create?
    true
  end
  def edit?
    record.user == current_user
  end
  def update?
    record.user == current_user
  end

  def destroy?
    record.user == current_user
  end
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
