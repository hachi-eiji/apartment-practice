require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#create!' do
    it { Task.create!(name: 'test') }
  end
end
