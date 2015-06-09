class Url < ActiveRecord::Base

  before_create :shorten_url

  validates :original, presence: { message: "Url can't be blank yo." },
                       format:  { 
                        with: URI.regexp, 
                        message: "Invalid url, please try again." 
                      }

  def shorten_url
    self.short = Utility.generate_random_chars
  end

  

end
