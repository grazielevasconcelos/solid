class UsageFileParser
  def initialize(client, usage_file)
    @client = client
    @usage_file = usage_file
  end

  def parse
    case @client.usage_file_format
      when :xml
        parse_xml
      when :csv
        parse_csv
    end

    @client.last_parse = Time.current
    @client.save!
  end

  private

  def parse_xml
    # this
  end

  def parse_csv
    # this
  end
end