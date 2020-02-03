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