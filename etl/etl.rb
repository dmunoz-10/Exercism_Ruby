# Etl Class
class ETL
  def self.transform(old)
    old.each_with_object({}) { |(k, v), t| v.each { |x| t[x.downcase!] = k } }
  end
end
