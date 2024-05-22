class UsageFileParser
  def initialize(client, parser)
    @client = client
    @parser = parser
  end

  def parse(usage_file)
    parser.parse(usage_file)

    @client.last_parse = Time.current
    @client.save!
  end
end

class XmlParser
  def parse(usage_file)
    #this
  end
end

class CsvParser
  def parse(usage_file)
    # this
  end
end