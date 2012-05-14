module Dust
  module Sinatra
    module Helpers
      def dust(*args) render( :dust, *args ) end
    end
  end
end
