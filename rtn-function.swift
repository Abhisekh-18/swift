func decr(_ n:Int)->Int
{
    return n-1
}
func perform()->(Int)->Int{
    return decr
}
print("Counting to 0")
var cnt = 3
let down=perform()
while cnt != 0
{
    print("Got \(cnt)")
    cnt=down(cnt)
}
print("Got 0")
