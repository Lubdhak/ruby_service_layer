require_relative './my_service_layer/root_client'
include MyServiceLayer

response = ::RootClient.new("hi","123")
review_service_id = response.user_details[:review_service_id]
rating_service_id = response.user_details[:rating_service_id]
puts response.review(review_service_id).review_details
puts response.rating(rating_service_id).rating_details


# To do
# - common methods
# - delegate methods
# -