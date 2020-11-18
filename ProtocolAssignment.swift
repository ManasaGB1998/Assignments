import Foundation
import Glibc
 
class AccountManager {
    var bankAccounts = [AccountDetails] ()
    var totalAccounts: Int
    
    init(bankAccounts: [AccountDetails]) {
        self.bankAccounts = bankAccounts
        self.totalAccounts = 1000
    }
    
    func addAccount(details: AccountDetails) {
        self.bankAccounts.append(details)
        self.totalAccounts += 1
        details.accountNumber = String(String(details.branchCode) + "0" + String(details.schemeCode) + String(totalAccounts))
    }
    
    func accountDetails (account: AccountDetails) {
        print("---------------------------------")
        print("Account details:")
        print("---------------------------------")
        print("Name: \(account.accountHolderName)")
        print("Account number: \(account.accountNumber)")
        print("Account type: \(account.accountType)")
        print("Account balance: \(account.currentBalance)")
    }
    
    func currentBalance() {
        for account in bankAccounts {
              account.printCurrentBalance()
            
        }
    }
}

protocol AccountProtocol {
    func printCurrentBalance () -> [Float]
}

class  AccountDetails {
    var accountNumber: String
    let accountHolderName: String
    let initialAmount: Float
    var accountType: String
    let accountCreationDate: String
    var currentBalance: Float
    var emailID: String?
    var mobileNumber: Int?
    let branchCode: String
    let schemeCode: String
    var tracker = [String: Float] ()
    
    init(accountHolderName: String, initialAmount: Float) {
        self.accountNumber = ""
        self.accountHolderName = accountHolderName
        self.initialAmount = initialAmount
        self.accountType = ""
        self.accountCreationDate = ""
        self.currentBalance = initialAmount
        //self.emailID = ""
        //self.mobileNumber = 0
        self.branchCode = "123U"
        self.schemeCode = "S456"
    }
    
    func depositeAmount( amount: Float) {
        if (accountType == "SA" || accountType == "CA" || accountType == "RD" || accountType == "HL" || accountType == "VL" || accountType == "PL"){
                currentBalance = currentBalance + amount
                print("Amount credited successfully")
                tracker["Deposit"] = amount
        } else if(accountType == "FD") {
            print("Amount can be deposited only once for fixed deposites")
        }
               
    }
    
    func withdrawAmount(amount: Float) {
        if (accountType == "SA" || accountType == "CA") {
            currentBalance = currentBalance - amount
            print("Amount debited successfully")
            tracker["Withdrawal"] = amount 
            } else if(accountType == "RD" || accountType == "HL" || accountType == "VL" || accountType == "PL" || accountType == "FD") {
                print("Current account type does not support withdrawal!")
            }
    }
    
    
    
    func calculateInterest () {
        var interest: Float
        var finalBalance: Float
        interest = 8.5
        if(accountType == "RD" || accountType == "SA" || accountType == "CA") {
            finalBalance = currentBalance + ( currentBalance * interest / 365)
            currentBalance = finalBalance
            } else if(accountType == "FD") {
                finalBalance = currentBalance + ((currentBalance * interest) / (365 * 10))
                currentBalance = finalBalance
            }
    }
    
    func printAccountStatement() {
            print(tracker)
    }
}

extension AccountDetails {
    func printCurrentBalance () {
        print("Your current balance is: Rs.\(currentBalance)")
    }
}


var ba1 = AccountDetails(accountHolderName: "Manasa", initialAmount: 20000)
ba1.mobileNumber = 8762854935
ba1.emailID = "mandu@gaiedhui"
ba1.accountType = "SA"
var acc = AccountManager(bankAccounts: [ba1]) 
acc.addAccount(details: ba1)
print(ba1.accountNumber)
ba1.depositeAmount(amount:1000)
ba1.withdrawAmount(amount:5000)
ba1.printCurrentBalance()
acc.accountDetails(account: ba1)
ba1.printAccountStatement()
acc.currentBalance()



