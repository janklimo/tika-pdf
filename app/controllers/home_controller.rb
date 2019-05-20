# frozen_string_literal: true

class HomeController < ActionController::Base
  def landing
    rta = RubyTikaApp.new(Rails.root.join("public", "advanced.pdf").to_s)
    @text = rta.to_text
  end
end
