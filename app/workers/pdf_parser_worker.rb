# frozen_string_literal: true

class PdfParserWorker
  include Sidekiq::Worker

  def perform
    rta = RubyTikaApp.new(Rails.root.join("public", "advanced.pdf").to_s)
    p rta.to_text
  end
end
