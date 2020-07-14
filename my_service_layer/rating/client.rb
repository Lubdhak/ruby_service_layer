module MyServiceLayer
  module Rating
    class Client
      attr_accessor :previous_client
      # delegate :current_class_details,:user_details to: :@previous_client

      def initialize(caller_class_instance,rating_service_id)
        @previous_client = caller_class_instance
        @rating_service_id = rating_service_id
        # current_class_details(self)
      end

      def retriever
      end

      def saver
      end

      def saver
      end

      def rating_details
        {
          rating_service_id: @rating_service_id,
          current_rating: 5
        }
      end


    end
  end
end