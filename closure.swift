var add = {
    (n1:Int,n2:Int)->Int in return n1 + n2
}
var result = add(19,32)
print(result)
//Example of closure
var arr=["Abhisekh","Mayker","Amit","Faisal","Rohit"]
print("Number of elements in the array \(arr.count)")
print("Elements in the array \(arr)")
let new_arr={arr.remove(at:0)}
print(arr.count)
print(new_arr)
print(new_arr())
print(arr.count)
print(arr)
print(new_arr())