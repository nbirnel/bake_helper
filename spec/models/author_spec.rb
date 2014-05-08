require 'spec_helper'

describe Author do
  let(:author) { Author.new() }
  let(:author_named) { Author.new(name: 'Joe Schmoe') }

  context 'name validation' do
    it 'is invalid without a name' do
      expect(author.valid?).to be_false
    end

    it 'is valid with a name' do
      expect(author_named.valid?).to be_true
    end

  end

end

