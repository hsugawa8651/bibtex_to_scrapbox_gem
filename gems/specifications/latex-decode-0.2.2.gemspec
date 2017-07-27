# -*- encoding: utf-8 -*-
# stub: latex-decode 0.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "latex-decode".freeze
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sylvester Keil".freeze]
  s.date = "2015-04-03"
  s.description = "Decodes strings formatted in LaTeX to equivalent Unicode strings.".freeze
  s.email = ["http://sylvester.keil.or.at".freeze]
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "http://github.com/inukshuk/latex-decode".freeze
  s.licenses = ["GPL-3".freeze]
  s.rdoc_options = ["--line-numbers".freeze, "--inline-source".freeze, "--title".freeze, "\"LaTeX-Decode Documentation\"".freeze, "--main".freeze, "README.md".freeze, "--webcvs=http://github.com/inukshuk/latex-decode/tree/master/".freeze]
  s.rubygems_version = "2.6.12".freeze
  s.summary = "Decodes LaTeX to Unicode.".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<unicode>.freeze, ["~> 0.4"])
    else
      s.add_dependency(%q<unicode>.freeze, ["~> 0.4"])
    end
  else
    s.add_dependency(%q<unicode>.freeze, ["~> 0.4"])
  end
end
