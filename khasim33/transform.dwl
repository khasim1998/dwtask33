%dw 2.0
output application/json
/*
1. case one will update all the students object name with "khasim"
2. case two will update marks of students which are decimal to integer using ceil()
*/
---
payload  update {
   case .students.*student.name -> "khasim"
   case marks at .students.*student.marks if(isDecimal(marks as Number)) -> ceil(marks)
}
