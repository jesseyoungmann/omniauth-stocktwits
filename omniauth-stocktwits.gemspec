# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-stocktwits/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "omniauth-stocktwits"
  gem.version       = OmniAuth::StockTwits::VERSION
  gem.description   = "Unofficial StockTwits strategy for OmniAuth"
  gem.summary       = "Unofficial StockTwits strategy for OmniAuth"
  gem.homepage      = "https://github.com/jesseyoungmann/omniauth-stocktwits"

  gem.authors       = ["Jesse Youngmann"]
  gem.email         = ["jesse.youngmann@gmail.com"]

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]


  gem.add_dependency 'omniauth-oauth2'

end
