module Foobara
  module Generators
    module LocalFilesCrudDriverGenerator
      module Generators
        # Kind of tricky... for the first time we will be loading an existing file in the working directory
        # and modifying it.
        class GemfileGenerator < LocalFilesCrudDriverGenerator
          def applicable?
            gemfile_contents !~ /^\s*gem\s*["']foobara-local-files-crud-driver\b/
          end

          def template_path
            "Gemfile"
          end

          def target_path
            "Gemfile"
          end

          def generate(_elements_to_generate)
            match = gemfile_contents.match(/^gem /)

            if match
              # TODO: move this to .gemspec?
              new_entry = 'gem "foobara-local-files-crud-driver"'
              "#{match.pre_match}\n#{new_entry}\n#{match}#{match.post_match}"
            else
              # TODO: maybe print a warning and return the original Gemfile
              # :nocov:
              raise "Not sure how to inject local_files_crud_driver into the Gemfile"
              # :nocov:
            end
          end

          def gemfile_contents
            File.read(template_path)
          end
        end
      end
    end
  end
end
