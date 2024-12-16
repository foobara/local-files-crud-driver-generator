require "foobara/local_files_crud_driver"

Foobara::Persistence.default_crud_driver = Foobara::LocalFilesCrudDriver.new
