module VCAP

end

module VCAP::CloudController
  module Dea
    class Runner
      def initialize()
        p "initialize"
      end

      def scale
        p "scale"
      end

      def start(staging_result={})

      end

      def stop

      end

      def update_routes
      end

      def desire_app_message
      end

      def stop_index(index)
      end
    end
  end
end

runner = VCAP::CloudController::Dea::Runner.new

runner.scale