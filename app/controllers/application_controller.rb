class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

def index
  # eg "Recipes - Bake Helper"
  @title = "#{self.controller_name.capitalize} - Bake Helper"
end

def show
  # eg @recipe
  item = eval "@#{self.controller_name.singularize}"
  # eg "White Bread - Bake Helper"
  @title = "#{item.name} - Bake Helper"
end

def new
  # eg "New Recipe - Bake Helper"
  @title = "New #{self.controller_name.singularize.capitalize} - Bake Helper"
end

def edit
  # eg @recipe
  item = eval "@#{self.controller_name.singularize}"
  # eg "Edit White Bread - Bake Helper"
  @title = "Edit #{item.name} - Bake Helper"
end
