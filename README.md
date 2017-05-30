# Secret-Messages
Encrypt your messages! -- Simple app that turns String into Hex and 'Encrypts' it

# What does this App do?
THis app simply converts the Text you enter into HexString and then replaces few numbers with ASCII characters and reverses the edited-hex and outputs the result
thus, creating a simple Encryption.

# What All is implemented in this App?
This app has 1) Alert-View, 2) This app follows MVC Principle, 3)Keyboard Dismisses on 'Done', 4) Data-Encapsulation, 5) Uses Constraints.

# Bugs (If Any)
1) If you enter anything other than "Encrypted String" into the Decrypt-Text-field the App will crash with a Fatal Error, reason being the while loop that converts hex into String crashes.

Fix:- 1) Catching the error in a try-catch closure. (Better and convinient Fix.)
2) Avoiding the Error by using Conditionals (If-Else) and allowing only the Encrypted data to be used in the decrypt-text-field.

# Conclusion
Made by - Raghav Vashisht
30 May 2017
