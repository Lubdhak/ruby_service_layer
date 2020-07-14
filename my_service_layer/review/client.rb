module MyServiceLayer
  module Review
    class Client
      puts MyServiceLayer.methods - Object.methods
      # attr_accessor :previous_client
      # def_delegators :previous_client, :user_details,:current_class_details

      
      def initialize(caller_class_instance,review_service_id)
        @previous_client = caller_class_instance
        @review_service_id = review_service_id
        # current_class_details(self)
      end

      def retriever
      end

      def saver
      end

      def saver
      end

      def review_details
        {
          review_service_id: @review_service_id,
          review_count: 5
        }
      end

    end
  end
end