

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


