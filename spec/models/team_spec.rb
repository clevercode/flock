require 'spec_helper'

describe Team do

  it { should have_many(:memberships).dependent(:destroy) }
  it { should have_many(:users).through(:memberships) }
  it { should have_many(:accounts).dependent(:destroy) }
end
