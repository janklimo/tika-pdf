# frozen_string_literal: true

class HomeController < ActionController::Base
  def landing
    rta = RubyTikaApp.new(Rails.root.join("public", "advanced.pdf").to_s)
    @text = rta.to_text
    PdfParserWorker.perform_async
  end

  def pdf
    path = Rails.root.join("public", "advanced.pdf").to_s
    send_file(path)
  end
end
