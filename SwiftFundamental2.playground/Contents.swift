print("First part ---------->")

for i in 1...255{
    print (i)
}

print("Second part ---------->")

for i in 1...100 {
    if i%15 != 0 && (i%3 == 0 || i%5 == 0) {
        print(i)
    }
}

print("Third part ---------->")

for i in 1...100 {
    if i%15 == 0 {
        print("Fizzbuzz")
    }
    else if i%3 == 0 {
        print ("Fizz")
    }
    else if i%5 == 0 {
        print("Buzz")
    }
}
