module Foobara
  module Generators
    module LocalFilesCrudDriverGenerator
      module Generators
        class LocalFilesCrudDriverGenerator < Foobara::FilesGenerator
          class << self
            def manifest_to_generator_classes(manifest)
              case manifest
              when LocalFilesCrudDriverConfig
                [
                  Generators::GemfileGenerator
                ]
              else
                # :nocov:
                raise "Not sure how build a generator for a #{manifest}"
                # :nocov:
              end
            end
          end

          alias local_files_crud_driver_config relevant_manifest

          def templates_dir
            # :nocov:
            "#{__dir__}/../../templates"
            # :nocov:
          end
        end
      end
    end
  end
end
