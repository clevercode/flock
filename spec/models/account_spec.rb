require 'spec_helper'

describe Account do

  it { should belong_to(:team) }
  
end
