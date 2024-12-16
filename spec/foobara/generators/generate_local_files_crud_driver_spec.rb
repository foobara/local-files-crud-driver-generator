RSpec.describe Foobara::Generators::LocalFilesCrudDriverGenerator::GenerateLocalFilesCrudDriver do
  let(:inputs) do
    {}
  end
  let(:command) { described_class.new(inputs) }
  let(:outcome) { command.run }
  let(:result) { outcome.result }

  it "generates a local_files_crud_driver" do
    expect(outcome).to be_success

    expect(result.keys).to include("boot/crud.rb")
  end
end
