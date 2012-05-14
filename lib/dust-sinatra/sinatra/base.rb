module Dust
  module Sinatra
    Tilt.register DustTemplate, :dust

    def self.registered( app )
      app.helpers Dust::Sinatra::Helpers
      Dust.config.template_root ||= "/"
    end
  end
end
