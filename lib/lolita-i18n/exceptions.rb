module Lolita
  module I18n
    module Exceptions     
      class MissingInterpolationArgument < StandardError
        def initialize missing_arguments
          super "Translation should contain all these variables #{missing_arguments.join(', ')}"
        end
      end

      class TranslationDoesNotMatch < ArgumentError
        def initialize translation, original
          super "Translation #{translation} does not match #{original}"
        end
      end
    end
  end
end