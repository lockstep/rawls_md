# frozen_string_literal: true

class Group < ApplicationRecord

  def show_state_or_country
    state.present? ? state : country
  end
end
