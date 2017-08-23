require "bibtex_to_scrapbox"
require "thor"

module BibtexToScrapbox

  class CLI < Thor
    class_option :help, type: :boolean, aliases: '-h', desc: 'help message.'
    default_task :help

    desc 'convert FILES [options]', 'Convert bibtex files to scrapbox-json'
    def convert(*paths)
      if paths.length > 0
        paths.each do |path|
          BibtexToScrapbox::Converter.add(path)
        end
      else
        while path=$stdin.gets
          BibtexToScrapbox::Converter.add(path.chomp)
        end
      end
      BibtexToScrapbox::Converter.perform()
    end

    desc 'version', 'version'
    def version
      p BibtexToScrapbox::VERSION
    end
  end
end
