# startup.start
display dialog "Calculator v.1.0
Ethan Fuller" buttons {"Start"} default button ¬
	"Start" with title "Calculator v.1.0"
# startup.end



# menu.start
display dialog "Which expression do you wish to use?
(Enter corresponding letter)

a. Addition 
b. Subtraction
c. Multiplication
d. Division" default answer "a, b, c, d" buttons {"Select"} default button ¬
	"Select" with title "Calculator v.1.0"

set menu_choice to (text returned of result)
# menu.end



# menu.select.addition.start
if menu_choice is "a" then
	display dialog ¬
		"Enter two numbers (#1)" default answer "" buttons {"Enter"} default button "Enter" with title "Calculator v.1.0"
	set addition_one to (text returned of result)
	
	display dialog ¬
		"Enter two numbers (#2)" default answer "" buttons {"Enter"} default button "Enter" with title "Calculator v.1.0"
	set addition_two to (text returned of result)
	
	set addition_eq to addition_one + addition_two
	
	display dialog "Answer: " & addition_one & " + " & addition_two & " = " & addition_eq & "" buttons {"Finish"} default button "Finish" with title "Calculator v.1.0"
	
end if
# menu.select.addition.end



# menu.select.subtraction.start
if menu_choice is "b" then
	display dialog ¬
		"Enter two numbers (#1)" default answer "" buttons {"Enter"} default button "Enter" with title "Calculator v.1.0"
	set subtraction_one to (text returned of result)
	
	display dialog ¬
		"Enter two numbers (#2)" default answer "" buttons {"Enter"} default button "Enter" with title "Calculator v.1.0"
	set subtraction_two to (text returned of result)
	
	set subtraction_eq to subtraction_one - subtraction_two
	
	display dialog "Answer: " & subtraction_one & " - " & subtraction_two & " = " & subtraction_eq & "" buttons {"Finish"} default button "Finish" with title "Calculator v.1.0"
	
end if
# menu.select.subtraction.end
