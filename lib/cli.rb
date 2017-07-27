require "bibtex_to_scrapbox"
require "thor"

module BibtexToScrapbox

  class CLI < Thor
    class_option :help, type: :boolean, aliases: '-h', desc: 'help message.'
    default_task :help

    desc 'convert FILES [options]', 'Convert bibtex files to scrapbox-json'
    def convert(*paths)
      paths.each do |path|
        BibtexToScrapbox::Converter.add(path)
      end
      BibtexToScrapbox::Converter.start()
    end

    desc 'version', 'version'
    def version
      p BibtexToScrapbox::VERSION
    end
  end
end
