class Url < ActiveRecord::Base

  before_create :shorten_url

  validates :original, presence: true,
                       format:  { 
                        with: URI.regexp, 
                        message: "Invalid url, make sure http:// or https:// exists before everthing else yo." 
                      }

  def shorten_url
    self.short = Utility.generate_random_chars
  end

  

end
