# frozen_string_literal: true

class GroupsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    second_column = sort_column == 'state' ? 'country' : 'state'
    not_null_groups = Group.where("#{sort_column} <> ''")
                           .order("#{sort_column} #{sort_direction}")
    null_groups = Group.where("#{sort_column} = ''")
                       .order("#{second_column} #{sort_direction}")
    @groups = not_null_groups + null_groups
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
