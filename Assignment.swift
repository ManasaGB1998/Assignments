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
        details.number = String(String(details.branchCode) + "0" + String(details.schemeCode) + String(totalAccounts))
    }
    
    func accountDetails (account: AccountDetails) {
        print("---------------------------------")
        print("Account details:")
        print("---------------------------------")
        print("Name: \(account.holderName)")
        print("Account number: \(account.number)")
        print("Account type: \(account.type)")
        print("Account balance: \(account.currentBalance)")
    }
}

class  AccountDetails {
    var number: String
    let holderName: String
    let initialAmount: Float
    var type: String
    let CreationDate: String
    var currentBalance: Float
    var emailID: String?
    var mobileNumber: Int?
    let branchCode: String
    let schemeCode: String
    var tracker = [Int: String] ()
    var key = 0
    
    init(holderName: String, initialAmount: Float) {
        self.number = ""
        self.holderName = holderName
        self.initialAmount = initialAmount
        self.type = ""
        self.CreationDate = ""
        self.currentBalance = initialAmount
        self.branchCode = "123U"
        self.schemeCode = "S456"
    }
    
    func depositeAmount( amount: Float) {
        if (type == "SA" || type == "CA" || type == "RD" || type == "HL" || type == "VL" || type == "PL"){
                currentBalance = currentBalance + amount
                print("Amount credited successfully")
                key += 1
                tracker[key] = String("Deposit             " + String(amount))
                
        } else if(type == "FD") {
            print("Amount can be deposited only once for fixed deposites")
        }
               
    }
    
    func withdrawAmount(amount: Float) {
        if (type == "SA" || type == "CA") {
            currentBalance = currentBalance - amount
            print("Amount debited successfully")
             key += 1
            tracker[key] = String("Withdrawal             " + String(amount))
           
            } else if(type == "RD" || type == "HL" || type == "VL" || type == "PL" || type == "FD") {
                print("Current account type does not support withdrawal!")
            }
    }
    
    func printCurrentBalance () {
        print("Your current balance is: Rs.\(currentBalance)")
    }
    
    func calculateInterest () {
        var interest: Float
        var finalBalance: Float
        interest = 8.5
        if(type == "RD" || type == "SA" || type == "CA") {
            finalBalance = currentBalance + ( currentBalance * interest / 365)
            currentBalance = finalBalance
            } else if(type == "FD") {
                finalBalance = currentBalance + ((currentBalance * interest) / (365 * 10))
                currentBalance = finalBalance
            }
    }
    
    func printAccountStatement() {
        if(type == "RD" || type == "SA" || type == "CA" || type == "HL" || type == "VL" || type == "PL") {
            print("---------------------------------")
            print("Statement")
            print("---------------------------------")
            print(tracker)
        }
    }
}



var ba1 = AccountDetails(holderName: "Manasa", initialAmount: 20000)
ba1.mobileNumber = 8762854935
ba1.emailID = "mandu@gaiedhui"
ba1.type = "SA"
var acc = AccountManager(bankAccounts: [ba1]) 
acc.addAccount(details: ba1)
print(ba1.number)
ba1.depositeAmount(amount:1000)
ba1.printCurrentBalance()
ba1.withdrawAmount(amount:5000)
ba1.depositeAmount(amount:900)
ba1.printCurrentBalance()
acc.accountDetails(account: ba1)
ba1.withdrawAmount(amount:8000)
ba1.printAccountStatement()



