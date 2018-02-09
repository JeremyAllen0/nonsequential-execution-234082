// Allen ISD Computer Science Assignment
// Non-sequential Project | complexATM
// Zayam Tariq
// Computer Science I, Period 2
// 2018.01.26


/*
  You're responsible for dispensing money from an ATM.  
  The ATM can only dispense $5 and $20 bills.
  
  The command line will specify the total dollar value to withdraw which must be 
  divisible by 5.
  You must print one line indicating that either a $5 or $20 bill was dispensed
  for each bill dispensed.

  For example, if the program is invoked as:  ./complexATM 75
  Your output should be:
  $20.00 dispensed
  $20.00 dispensed
  $20.00 dispensed
  $5.00 dispensed
  $5.00 dispensed
  $5.00 dispensed

  Include an assert statement for each assumption that you are making.
*/

// Continue with your code here

func dispenseBills(dollarValue:Int, typeOfBill:Int) -> Int {
    let billsToDispense = dollarValue / typeOfBill
    var moneyRemaining = dollarValue
    for _ in 0 ..< billsToDispense {
        print("$\(typeOfBill).00 dispensed")
        moneyRemaining -= typeOfBill
    }

    return moneyRemaining
}

// The following assertions make clear the assumptions that your program is making
assert(CommandLine.arguments.count == 2, "Exactly one argument is required")
assert(Int(CommandLine.arguments[1]) != nil, "Argument must be an integer")


// Read the integer value from the command line.
// Note that we've verified above, via the assertions, that we definitely have an integer argument
let dollarValueRequested = Int(CommandLine.arguments[1])!
assert(dollarValueRequested % 5 == 0, "Dollar value requested must be evenly divisible by $5.00")


var dollarValueRemaining = dollarValueRequested
dollarValueRemaining = dispenseBills(dollarValue: dollarValueRemaining, typeOfBill:100)
dollarValueRemaining = dispenseBills(dollarValue: dollarValueRemaining, typeOfBill:20)
_ = dispenseBills(dollarValue: dollarValueRemaining, typeOfBill:5)
