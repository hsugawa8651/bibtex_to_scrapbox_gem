# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bibtex_to_scrapbox/version"

Gem::Specification.new do |spec|
  spec.name          = "bibtex_to_scrapbox"
  spec.version       = BibtexToScrapbox::VERSION
  spec.authors       = ["Hiroharu Sugawara"]
  spec.email         = ["hsugawa@tmu.ac.jp"]

  spec.summary       = %q{convert bibtex files to scrapbox-import-ready-json.}
  spec.description   = %q{convert bibtex files to scrapbox-import-ready-json.}
  spec.homepage      = %q{https://github.com/hsugawa8651/bibtex_to_scrapbox_gem}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 2.0"
  spec.add_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "thor"
  spec.add_dependency "bibtex-ruby"
end
