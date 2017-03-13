require_relative 'bank_account'

RSpec.describe BankAccount do
  before(:each) do
    @Tim = BankAccount.new
  end

  it 'has a getter method for retrieving the checking account balance' do
    expect{@Tim.checking}.not_to raise_error
  end

  it 'has a getter method for retrieving the total account balance' do
    expect(@Tim.total).to eq("Total Balance: #{@Tim.saving + @Tim.checking}")
  end

  it 'has a function that allows the user to withdraw cash' do
    expect{@Tim.withdrawal('checking',300)}.not_to raise_error
  end

  it 'raises an error if a user tries to withdraw more money than they have in the account' do
    expect{@Tim.withdrawal('checking',300)}.to output("Insufficient fund\n").to_stdout
  end

  it 'Raises an error when the user attempts to call the getter method for the number of bank accounts there are' do
    expect{@Tim.bank_accounts}.to raise_error(NoMethodError)
  end

  it 'Raises an error when the user attempts to set the interest rate' do
    expect{@Tim.int_rate = 0.3}.to raise_error(NoMethodError)
  end
end
