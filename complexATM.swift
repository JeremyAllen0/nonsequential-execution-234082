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

assert(CommandLine.arguments.count == 2, "Exactly one argument is required")
assert(Int(CommandLine.arguments[1]) != nil, "Argument must be an integer") 
let moneyRequested = Int(CommandLine.arguments[1])!
print("ATM WILL NOW DISPENSE YOUR MONEY FOR YOU!!!! WARNING, IF THE NUMBER IS NOT A MULTIPLE OF 5, IT WILL NOT WORK")


if moneyRequested % 5 == 0
{
    if moneyRequested < 20 {
    let numberBills = moneyRequested/5
    for BillValue5 in 1...numberBills{
        print("$5.00")
    }
    }

    




    if  moneyRequested >= 20 {
        let numberBills = moneyRequested/20
        for BillValue20 in 1...numberBills{
        print("20.00")
        }
        let moneyRemaining =  moneyRequested % 20
        if moneyRemaining <= 15 {
            let numberBills = moneyRemaining/5
            for BillValue5 in 1...numberBills{
                print("$5.00")

            
            }  
        } 
    }
}
else {
    print("ERROR, MONEY CAN NOT BE PRINTED:choose an amount thats a multiple of 5")


}
