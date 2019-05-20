# frozen_string_literal: true

class HomeController < ActionController::Base
  def landing
    rta = RubyTikaApp.new(Rails.root.join("public", "ruby_tika_app.pdf").to_s)
    @text = rta.to_xml
  end
end
