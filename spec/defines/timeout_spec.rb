require 'spec_helper'

describe 'bash::timeout' do
  context 'with title => bogus' do
    let(:title) { 'bogus' }
    it { should compile.with_all_deps }
    it { should contain_file('/home/bogus/.bash_profile') }
    it { should contain_file_line('/home/bogus/.bash_profile') }
  end
end
