require 'rails_helper'

RSpec.feature 'TransactionFeatures', type: :feature do
  before do
    log_in
  end

  it 'renders a new transaction page' do
    visit new_transaction_url
    expect(page).to have_content 'NEW TRANSACTION'
  end

  it 'can create a new transaction' do
    visit new_transaction_url
    new_transaction
    expect(page).to have_content 'transaction successfully created'
  end

  it 'shows a list of all the created transactions' do
    visit transactions_path
    expect(page).to have_content 'TRANSACTIONS'
  end

  it 'shows the details of a transaction' do
    new_transaction
    expect(page).to have_content 'DETAILS'
  end
end
