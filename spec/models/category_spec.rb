require 'rails_helper'

describe Category do
  it 'does not have valid name when nil' do
    category = Category.create(name: nil)
    expect(Category.all.count).to eql(0)
  end

  it 'has many issues' do
    category = Category.create(name: 'Bearded Wonder')
    issue_one = Issue.create(title: 'Beard' , description: 'It is glorious' , category: 'Bug' , severity: 'Low', category: category)
    issue_two = Issue.create(title: 'Adam', description: 'Needs bigger beard' , category: 'Bug', severity: 'High', category: category)

    expect(category.issues.count).to eql(2)
  end
end
