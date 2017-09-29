class TrashController < ApplicationController
  access user: :all, admin: :all
  def home
  end
end
