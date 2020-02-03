//Dictionary in swift
print("----")
var dic:[String:Int]=["One":11,"Two":2,"Three":3,"Four":4]
for (key,value) in dic{
    print("The key is: \(key) :  The value is: \(value)")
}
//fetch value with reference of key
print(dic["One"])
//Empty dictionary
var edic:[String:Int]=[:]
//Adding element in the dictionary
edic["New element"]=98889
edic["New element1"]=98889
for (key,value) in edic{
    print("The key is: \(key) :  The value is: \(value)")
}
edic.updateValue(88797897, forKey: "New element1")
//Override the values
dic["One"]=1
print(dic["One"])
print(edic["New element1"])
//Comparing the dictionary (The values are case sensitive and it compares key and values together)
if dic==edic{
    print("The two dictionaries are equal")
}
else{
     print("The two dictionaries are not equal")
}
var author:[String:Any]=["Twain":8.9,"Hawthorne":5.1,"Poe":7.3]
author["Abhisekh"]=10
print(author)
var keys=["A","B","C"]
var values=[10,12,32]
var newDic=Dictionary(uniqueKeysWithValues: zip(keys, values))
print(newDic)
//Defining array elements by extracting elements from the dictionary
var student=["name":"xyz","roll_no":"101"]
var a = Array(student.values)
print(a)
var b = Array(student.keys)
print(b)
//Write a program to declare two identifier names and marks and store them in a new dictionary and show the key value of lowst and highest marks aquaried
var name=["Abhi","Amit","Prabodh"]
var marks=[90,89,93]
var stu=Dictionary(uniqueKeysWithValues: zip(name, marks))
print(stu)
marks=marks.sorted()
for (key,value) in stu{
    if marks[marks.count-1]==value{
        print("The highest mark aquaried by:",key)
    }
    else if marks[0]==value{
        print("The lowest mark aquaried by:",key)
    }
}