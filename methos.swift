

var str = "Hello, playground"
for i in 1...5
{
    print(i+2)
}
//empty array
var emptyArray: [Int] = []
print(emptyArray)
var arr = [1,2,3,4,5]
if arr.isEmpty{
    print("Array is empty")
}
else{
    print("Array is not empty")
}
//Append Example
var arr1:[Int] = [1,2,3,4,5]
print("the orignal array is:",arr)
for i in 6...9
{
    arr1.append(i)
}
print("The new array is",arr1)
//Using append for inserting element
var arr2:[Int] = [2,4,57,8,85]
arr2.insert(43,at:3)
arr2.insert(45,at:1)
print("The value of arr2 is",arr2)
//Remove the value from array
arr2.remove(at: 2)
print("The New array is",arr2)
//Any Keyword(We can store hetrogenious data)
var het:[Any] = [1,"Abhisekh",44.56]
print("The Use of any Keyword",het)
//Reverse of the array
arr2.reverse()
print("the reverse of tha array is: ",arr2)
var max=arr2.max()
print(max)
//Print 3rd largest and 4th smallest number from the array
var array=[12,3,354,56,55,757,7,6]
array.sort()
print("The sorted array is:",array)
print("The 3rd largest value is:",array[array.count-3])
print("The 4th smallest value =",array[3])
print("The elements below 100 is:")
for i in 0...array.count-1{
    if array[i]<100{
        print(array[i],terminator:" ")
    }
}
//print revrese of even numbers and factorial of odd numbers
var fact=1
var rev=0
var rem=0
var temp=0
var arr3:[Int]=[]
var arr4:[Int]=[]
for j in 0...array.count-1{
    
    if array[j]%2==0{
         arr3.append(array[j])
}
    else{
        arr4.append(array[j])
    }
}
//temp=arr3[i]
for i in 0...arr3.count-1{
    
    rev=rev*10+(temp%10)
    temp=temp%10
    print(rev)
}

//Use of functions
//The function can use another function as argument, Declared as func keyword and this is by default inmutable it is declared by default as let constants, we can also have variable of type function
func fir(){
    print("Hello this is the first function")
}
fir()
func name(n:String){
    print("Hello  "+n)
}
name(n:"Abhisekh")
name(n:"Prabodh")
//function with return type
func detail(age:Int,height:Int)->Int{
    return age+height
}
print(detail(age:21,height: 6))
//variable as function type, We have to assign space value after "_" when we don't want to use the variable name for asigning values if we don't want to use the variable in the function then we don't have to declare the name of the variable
func addition(_ num1:Int,_ num2:Int)->Int{
    return num1 + num2
}
var sum1:(Int,Int) -> Int = addition
    print("Result:\(sum1(23,24))")

//Default argument i function , if don't assign the value in the argument then the compiler consider the default value that is being given in the initialization time
func detail1(age:Int=10,height:Int)->Int{
    return age+height
}
print(detail(age:21,height: 6))
print(detail1(height: 6))
//Variadic Parameters in function used when it is not conform that how many arguments / variables are going to be used in the function call
func sum(numbers:Int...)->Int{
    var result = 0
    for num in numbers{
        result = result+num
    }
    return result
}
let sum2=sum(numbers: 1,2)
print("The result for 1st sum with 2 arguments",sum2)
let sum3=sum(numbers: 1,4,2,2,11,21,3)
print("The result for 2nd sum with 7 arguments",sum3)
//Return multiple values and it is not mandatory to have same return data type
func minMax(arr:[Int])->(min:Int,max:Int)
{
    var cur_min=arr[0]
    var cur_max=arr[0]
    for n in 0...arr.count-1{
        if arr[n]<cur_min{
            cur_min=arr[n]
        }
        else if arr[n]>cur_max{
            cur_max=arr[n]
        }
    }
    return (cur_min,cur_max)
}
var bound=minMax(arr: [19,22,42,4,44,33,53,535,212])
print("Smallest value is\(bound.min)")
print("Largest value is\(bound.max)")
//Returning multiple type of data with in one function
func mix_value()->(num:Int,Decimal:Float,name:String)
{
    return(56,54.43,"Abhisekh")
}
var value=mix_value()
print("The Integer value is:\(value.num)")
print("The Float value is:\(value.Decimal)")
print("The String value is:\(value.name)")
//Function returning Optional values
func minMax1(arr:[Int])->(min:Int,max:Int)?
{
    if arr.isEmpty{
        return nil;
    }
    var cur_min=arr[0]
    var cur_max=arr[0]
    for n in 0...arr.count-1{
        if arr[n]<cur_min{
            cur_min=arr[n]
        }
        else if arr[n]>cur_max{
            cur_max=arr[n]
        }
    }
    return (cur_min,cur_max)
}
if var bounds=minMax1(arr: [19,22,42,4,44,33,53,535,212]){
print("Smallest value is\(bound.min)")
print("Largest value is\(bound.max)")
}
else{
    print("Nothing there to find")
}
//In out parameters , they can not have default values and used for change the value in the function which are by default let constants , we can not have variable declared inside the function but we can declare let constants inside the functions
func swap(num1:inout Int,num2:inout Int){
   num1=num1+num2
    num2=num1-num2
    num1=num1-num2
}
var(num1,num2)=(4,7)
print("Before Swap:")
print("1st number=\(num1) and 2nd number=\(num2)")
swap(num1: &num1, num2: &num2)
print("After Swap:")
print("1st number=\(num1) and 2nd number=\(num2)")

func swap1(num11:inout Int,num22:inout Int){
  let temp=num11
    num11=num22
    num22=temp
}
var(num11,num22)=(4465,74343)
print("Before Swap:")
print("1st number=\(num11) and 2nd number=\(num22)")
swap1(num11: &num11, num22: &num22)
print("After Swap:")
print("1st number=\(num11) and 2nd number=\(num22)")
//Define a function inside a function is known as nesting of function , By default the functions have global scope as they can declare and call anywhere in the program but in nesting the function declared inside a function have local scope and can be assessed with in the function
func show(){
    func even(_ a:Int)->Int{
        return a%2
    }
    //When we declare if statement we call the function automatically
    if(even(334532)==0){
        print("Even number")
    }
    else{
        print("Odd number")
    }
}
show()
func sum(_ aa:Int,_ bb:Int)->Int{
    return aa+bb
}
func show(_ r:Int){
print("Sum of the number is \(r)")
}
show(sum(45,43))
