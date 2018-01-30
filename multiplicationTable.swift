// Allen ISD Computer Science Assignment
// Non-sequential Project | multiplicationTable
// Zayam Tariq
// Computer Science I, Period 2
// 2018.01.26


/*
  You're responsible for printing a grid displaying a multiplication table.
  The single argument on the command line will specify the size of the grid.
  For example, if the program is invoked as:, ./multiplicationTable 3 
  Your output should be:
       1   2   3
  1    1   2   3
  2    2   4   6
  3    3   6   9

  You may assume that the maximum grid size is 20.

  Be sure that the numbers in your grid are aligned (i.e. columns are flush right)
  For example:
      3
      6
      9
     12

  Include an assert statement for each assumption that you are making.

*/

// Continue with your code here

let x = Int((CommandLine.arguments[1]))!
let i = 0
let q = 0
print(terminator:"   ")
for q in 1...x{
    if q < 10 {
        print (terminator:"   "); print(q,terminator:"")
    }
    else {print (terminator:"  "); print(q,terminator:"")}
}
print ("")
for i in 1...x {
    if i<10 {
        print (terminator:" "); print(i, " ",terminator:"")
    }
    else{ print(i, " ",terminator:"")}
    let j = 0
    for j in 1...x {
        let mo = j*i
        if mo < 10 {
            print (terminator:"  "); print (mo, terminator:" ")
        } else if 9 < mo && mo < 100 {
            print (terminator:" "); print (mo,terminator:" ")
        } else {print (mo, terminator:" ")}
    }
    print (" ")
}   
