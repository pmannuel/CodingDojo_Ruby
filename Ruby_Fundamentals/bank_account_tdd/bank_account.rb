class BankAccount
    attr_reader :account_num, :checking, :saving

    @@bank_accounts = 0

    def initialize
        @account_num = create_account
        @checking = 0
        @saving = 0
        @int_rate = 0.01
        @@bank_accounts += 1
    end

    def total
        "Total Balance: #{@saving + @checking}"
    end

    def account_info
        puts "Account No.: #{@account_num}"
        puts self.total
        puts "Checking Balance: #{self.checking}"
        puts "Saving Balance: #{self.saving}"
        puts "Interest Rate: #{@int_rate}"
    end

    def deposit(account,amount)
        if account.downcase == 'checking'
            @checking += amount
            self
        elsif account.downcase == 'saving'
            @saving += amount
            self
        else
            puts 'Invalid account type. write checking or saving'
        end
    end

    def withdrawal(account,amount)
        if account.downcase == 'checking'
            if @checking - amount < 0
                puts "Insufficient fund"
            else
                @checking -= amount
            end
        elsif account.downcase == 'saving'
            if @saving - amount < 0
                puts "Insufficient fund"
            else
                @saving -= amount
            end
        else
            puts 'Invalid account type. write checking or saving'
        end
        self
    end

    private
    def create_account
        Array.new(5) { rand(0..9) }.join
    end

end #end of class

Eric = BankAccount.new.deposit('cHecking',400).withdrawal('cHecking',300)
# Eric = BankAccount.new.deposit('Saving',200).deposit('cHecking',300).withdrawal('cHecking',300)
Eric.account_info
