# = Localized::Countries
#
# Uses the Rails internationalization framework (I18n) for translating the names of countries.
#
# Use Rake task <tt>rake import:country_select LOCALE=de</tt> for importing country names
# from Unicode.org's CLDR repository (http://www.unicode.org/cldr/data/charts/summary/root.html)
#
#
module Localized
  module Countries
    class << self

      # Returns array with codes and localized country names (according to <tt>I18n.locale</tt>)
      # for <tt><option></tt> tags
      def localized_countries_array(options = {})
        if options[:description] == :abbreviated
          I18n.translate(:countries).map { |key, value| [key.to_s] }.sort_by { |country| country.first }
        else
          I18n.translate(:countries).map { |key, value| [value, key.to_s] }.sort_by { |country| country.first }
        end
      end

      # Return array with codes and localized country names for array of country codes passed as argument
      # == Example
      #   priority_countries_array([:tw, :cn])
      #   # => [ ['Taiwan', 'tw'], ['China', 'cn'] ]
      def priority_countries_array(country_codes = [], options = {})
        if options[:description] == :abbreviated
          country_codes.map { |code| [code.to_s] }
        else
          countries = I18n.translate(:countries)
          country_codes.map { |code| [countries[code.to_s.to_sym], code.to_s] }
        end
      end
    end
  end
end
