require "pathname"

# Naive fallback asset finder for when sprockets >= 3.0 &&
# config.assets.precompile = false
# Thanks to @ryanswood for the original code:
# https://github.com/jamesmartin/inline_svg/commit/661bbb3bef7d1b4bd6ccd63f5f018305797b9509
module InlineSvg
  class StaticAssetFinder
    def self.find_asset(filename)
      new(filename)
    end

    def initialize(filename)
      @filename = filename
    end

    def pathname
      Rails.application.root.join('app', 'assets', 'images', @filename).to_s
    end
  end
end
