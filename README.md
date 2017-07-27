# BibtexToScrapbox

The BibTeX http://bibtex.org is a tool and a file format used to
describe and process lists of references in conjunction with LaTeX documents.

Scrapbox http://scrapbox.io is a novel note-taking service for teams.

This tool converts bibtex files to json file suitable for import to scrapbox.

## Installation

This tool, written in Ruby, is distributed via rubygem. https://rubygems.org/gems/bibtex_to_scrapbox

To install, invoke gem install command:

```ruby
gem install bibtex_to_scrapbox
```

## Usage

Input files are bibtex files. (file extension = .bib)

Invoke this tool by:

```ruby
    $ bundle exec bibtex_to_scrapbox convert FILES > scrapbox.json
```

To import `scrapbox.json` to scrapbox, follow the instruction of "import pages" tool of "scrapbox" at the url:
    https://scrapbox.io/help/インポート・エクスポートする

Specify `scrapbox.json` created by this tool.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hsugawa8651/bibtex_to_scrapbox_gem.
