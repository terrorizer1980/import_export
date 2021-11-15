# frozen_string_literal: true

require 'iso_country_codes'
require 'rest_client'
require 'dotenv'
require 'uri'
require 'logger'
require 'json'
require 'uuid'

require 'import_export/version'
require 'import_export/source'
require 'import_export/result'
require 'import_export/client'
require 'import_export/query'

Dotenv.load
RestClient.log = $stdout unless ENV['DEBUG'].to_s.empty?

module ImportExport
  API_BASE = 'https://data.trade.gov/consolidated_screening_list/v1/'

  def self.user_agent
    "ImportExport/#{ImportExport::VERSION}; +https://github.com/benbalter/import_export)"
  end
end
