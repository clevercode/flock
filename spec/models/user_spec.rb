require 'spec_helper'

describe User do

  it { should have_many(:memberships).dependent(:destroy) }
  it { should have_many(:teams).through(:memberships) }

end
