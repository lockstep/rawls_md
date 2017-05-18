# frozen_string_literal: true

class GroupsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @groups = Group.order("#{sort_column} #{sort_direction}")
  end

  def show
    @group = Group.find(params[:id])
  end

  private

  def sort_column
    Group.column_names.include?(params[:sort]) ? params[:sort] : 'state'
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
  end
end
