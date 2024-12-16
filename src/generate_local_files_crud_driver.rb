require "pathname"

require_relative "local_files_crud_driver_config"

module Foobara
  module Generators
    module LocalFilesCrudDriverGenerator
      class GenerateLocalFilesCrudDriver < Foobara::Generators::Generate
        class MissingManifestError < RuntimeError; end

        possible_error MissingManifestError

        inputs LocalFilesCrudDriverConfig

        def execute
          include_non_templated_files

          add_initial_elements_to_generate

          each_element_to_generate do
            generate_element
          end

          paths_to_source_code
        end

        attr_accessor :manifest_data

        def base_generator
          Generators::LocalFilesCrudDriverGenerator
        end

        # TODO: delegate this to base_generator
        def templates_dir
          # TODO: implement this?
          # :nocov:
          "#{__dir__}/../templates"
          # :nocov:
        end

        def add_initial_elements_to_generate
          elements_to_generate << local_files_crud_driver_config
        end

        def local_files_crud_driver_config
          @local_files_crud_driver_config ||= LocalFilesCrudDriverConfig.new(inputs)
        end
      end
    end
  end
end
