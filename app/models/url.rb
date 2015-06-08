class Url < ActiveRecord::Base

  validates :original, presence: true,
                       format:  { with: URI.regexp, message: "Invalid url, make sure http:// or https:// exists before everthing else yo." }
end
