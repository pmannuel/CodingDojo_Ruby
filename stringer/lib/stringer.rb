require "stringer/version"

module Stringer
  def self.spacify *strings
    string = strings.join(" ").squeeze(" ")
    string
  end

  def self.minify(string, max_l)
    words = string.split(/ +/)
    if string.length >= max_l
      m_string = words[0] + " " + words[1] + "..."
    else
      m_string = string
    end
    m_string
  end

  def self.replacify(string, spec, replacement)
    words = string.split(/ +/)
    (0...string.length).each do |i|
      if words[i] == spec
        words[i] = replacement
      end
    end
    words.join(" ").squeeze(" ")
  end

  def self.tokenize *strings
    strings[0].split(/ +/)
  end

  def self.removify(string, remove)
    words = string.split(/ +/)
    words.delete(remove)
    words.join(" ").squeeze(" ")
  end
end
