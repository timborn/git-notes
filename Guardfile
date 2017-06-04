# A sample Guardfile
# More info at https://github.com/guard/guard#readme

## Uncomment and set this to only include directories you want to watch
# directories %w(app lib config test spec features) \
#  .select{|d| Dir.exists?(d) ? d : UI.warning("Directory #{d} does not exist")}

## Note: if you are using the `directories` clause above and you are not
## watching the project directory ('.'), then you will want to move
## the Guardfile to a watched dir and symlink it back, e.g.
#
#  $ mkdir config
#  $ mv Guardfile config/
#  $ ln -s config/Guardfile .
#
# and, you'll have to watch "config/Guardfile" instead of "Guardfile"

# Sample guardfile block for Guard::Asciidoctor
# You can use some options to change guard-asciidoctor configuration

#guard :asciidoctor do
#  watch(/^.+(\.asciidoc)$/)
#  watch(/^.+(\.adoc)$/)
#end

# Add files and commands to this file, like the example:
#   watch(%r{file/path}) { `command(s)` }
#
guard :shell do
  # watch(/(.*).txt/) {|m| `tail #{m[0]}` }
  watch(/(.*).adoc/) {|m| `asciidoctor  #{m[0]}` }
end
