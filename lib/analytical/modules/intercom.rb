module Analytical
  module Modules
    class Intercom
      include Analytical::Modules::Base

      def initialize(options={})
        super
        # TODO Add the initializer. For the moment we have installed intercom-rails
        # that already append their JS code.
      end

      def event(name, *args)
        data = args.first || {}
        "Intercom('trackEvent', \"#{name}\", #{data.to_json});"
      end
    end
  end
end
