## i18n generators

Rails gem to provide support generation of localized language and country names for use in various localization contexts. This gem was extracted from from the gems *localized_countrues_select* and *localized_languages_select*

Please all see the following:

* [countries and languages](https://github.com/grosser/countries_and_languages)
* [i18n data](https://github.com/grosser/i18n_data)

## Installation

in Gemfile:

`gem "i18n-gen", "~> 0.2.0"`

Then run `bundle` to install.

## Usage

### Generators

`rails g`

* localized:languages_import
* localized:locale_languages

Use `-h` option for help on usage

`rails g localized:languages_import -h`

### Rake tasks

`rake -T`

#### localized_countries tasks
 
localized_countries:generate

`rake localized_countries:generate locale=de`

#### localized_languages tasks

localized_languages:generate

`rake localized_languages:generate locale=de`

## Copyright

(c) 2012 Kristian Mandrup
