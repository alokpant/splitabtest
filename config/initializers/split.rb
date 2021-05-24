# frozen_string_literal: true

Split.configure do |config|
  config.allow_multiple_experiments = true
  config.redis = Redis.new
end

# Split.configure do |config|
#   config.persistence = :cookie
#   config.persistence_cookie_length = 2592000 # 30 days
# end
