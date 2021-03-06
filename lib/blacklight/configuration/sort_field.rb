module Blacklight
  class Configuration::SortField < Blacklight::Configuration::SolrField
    def normalize! blacklight_config = nil
      self.sort ||= self.field

      self.field ||= self.key
      self.field ||= self.label.try(:parameterize)
      self.field ||= self.sort

      self.key ||= self.field
      super
    end

    def validate!
      raise ArgumentError.new("Must supply a solr sort string") if self.sort.nil?
    end
  end
end
