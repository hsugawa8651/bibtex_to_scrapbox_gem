require "bibtex_to_scrapbox/version"
require "bibtex"

module BibtexToScrapbox
  # Your code goes here...
  class Converter
    @@converters=[]
    def Converter.add(path)
      @@converters.push Converter.new(path)
    end

    def Converter.perform()
      pages=[]
      @@converters.map do |converter|
        pages.concat converter.start()
      end

      result={
        "pages": pages
      }

      puts result.to_json

    end

    def initialize(path)
      @bibtex_path=File.expand_path(path)
      @bib=BibTeX.open(@bibtex_path)
    end

    def start()
      basename=File.basename(@bibtex_path)
      @bib.collect do |e|
        lines=SbPage.new()
        citekey=e.key
        lines.push_text(citekey)
        lines.push_text(e.to_s)
        lines.push_empty_text()
        lines.push_text("[bibtex]")
        lines.push_text("[#{basename}]")
        { "title": citekey,
          "lines": lines.json
        }
      end
    end
  end

  class SbPage
    def initialize()
      @sb_json=[]
    end

    def json()
      @sb_json
    end

    def push_text(s)
      s.split("\n").each do |s1|
        @sb_json << s1
      end
    end

    def push_empty_text()
      @sb_json << ""
    end
  end
end
