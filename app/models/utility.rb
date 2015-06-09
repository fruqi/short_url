class Utility

  RAND_CHARS = ('a'..'z').to_a.concat((0..9).to_a).concat(('A'..'Z').to_a)

  def self.generate_random_chars
    RAND_CHARS.shuffle[0..7].join
  end

end