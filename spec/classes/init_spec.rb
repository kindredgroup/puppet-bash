require 'spec_helper'

describe 'bash' do
  context 'with defaults for all parameters' do
    it { should compile.with_all_deps }
    it { should contain_package('bash') }
    it { should contain_package('bash-completion') }
  end
end
