require 'spec_helper'

describe 'bash' do
  context 'with defaults for all parameters' do
    it { should compile.with_all_deps }
    it { should contain_package('bash') }
    it { should contain_package('bash-completion') }
    it { should_not contain_file('etc_bashrc') }
  end
  context 'with bashrc => /foobar' do
    let :params do { :bashrc => '/foobar' } end
    it { should compile.with_all_deps }
    it { should contain_file('etc_bashrc') }
  end

end
