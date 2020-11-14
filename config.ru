# frozen_string_literal: true

require 'sass/plugin/rack'
require_relative 'app'

Sass::Plugin.options.merge!(
  css_location:      'public/stylesheets',
  template_location: 'public/stylesheets/sass',
  debug_info:        true,
  style:             :compressed
)

use Sass::Plugin::Rack

run AppName
