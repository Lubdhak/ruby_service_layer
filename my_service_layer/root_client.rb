module MyServiceLayer
  # Process starts with initializing this class & Module base class
  
  class RootClient
    def initialize(username,password)
      # Auth at Gateway level, can also be at each service level
      @username = username
      if @username+password == "hi123"
        require_all
        current_class_details(self)
      else
        raise StandardError.new("#{error("Login")}")
      end
    end

    def user_details
      # @user_obj ||= User.find(@username)
      {
        name: "Lubi",
        username: @username,
        review_service_id: "review_si_001",
        rating_service_id: "rating_si_001"
      }
    end

    def review(review_service_id)
      @reviews ||= ::MyServiceLayer::Review::Client.new(self,review_service_id)
    end

    def rating(rating_service_id)
      @ratings ||= ::MyServiceLayer::Rating::Client.new(self,rating_service_id)
    end

    private
    # Common Module methods

    def error(type)
      {
        type: "#{type}Error",
        status: 401
      }
    end

    def current_class_details(instance)
      x = {
            class_name: instance.class,
            available_methods: instance.methods - Object.methods
          }
      puts x
    end


    def require_all
      Dir["#{__dir__}/**/*.rb"].each{ |f| require f }
    end

    

  end
end