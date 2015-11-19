class CountryInput < Formtastic::Inputs::CountryInput

  def to_html
    raise "To use the :country input, please install a country_select plugin, like this one: https://github.com/stefanpenner/country_select" unless builder.respond_to?(:country_select)
    input_wrapping do
      label_html <<
      builder.country_select(method, input_options, input_html_options)
    end
  end

end