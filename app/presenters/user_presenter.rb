class UserPresenter < ApplicationPresenter
  attr_reader :user
  delegate :full_name, to: :user

  def initialize(user)
    @user = user
  end

  def full_name_with_email
    "#{user.full_name} (#{user.email})"
  end
end
