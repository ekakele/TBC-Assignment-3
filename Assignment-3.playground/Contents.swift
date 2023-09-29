//Lecture 4 - Collection types: Arrays, Sets, Dictionaries

task(for: "1. შექმენით array, შემდეგ პირველ და ბოლო ელემენტს გაუცვალეთ ადგილი, გამზადებული ან უკვე არსებული ფუნქციის გარეშე.  (array-ის ტიპს არაქვს მნიშვნელობა).") {
    
    var drinks = ["Coffee", "Tea", "Juice", "Milk"]
    
    let firstDrink = drinks[0]
    drinks[0] = drinks[drinks.count - 1]
    drinks[drinks.count - 1] = firstDrink
    print(drinks)
}

task(for: "2. შექმენით array, მასში წაშალეთ ნახევარი ელემენტები, თუ კენტი რაოდენობის იქნა დატოვეთ ნაკლები და წაშალეთ მეტი.  მაგ.: თუ იყო 11 ელემენტი 5 დატოვეთ და 6 წაშალეთ. და დაბეჭდეთ მიღებული შედეგი. (array-ის ტიპს არაქვს მნიშვნელობა).") {
    
    var names = ["Ana", "Buba", "Lasha", "Saba", "Nino"]
    let length = names.count
    let halfLength = length / 2
    print(halfLength)
    
    
    if length > 0 && length % 2 == 0 {
        names.removeFirst(halfLength)
        print(names)
    } else {
        names.removeFirst(halfLength + 1)
        print(names)
    }
}

task(for: "3. შექმენით Int-ების array, შეავსეთ ის 0-იდან 10-ის ჩათვლით რიცხვებით. loop-ის  გამოყენებით დაშალეთ ეს array 2 array-იდ. ერთში გადაიტანეთ კენტი რიცხვები, მეორეში კი ლუწი რიცხვები, დაბეჭდეთ ორივე მიღებული array.") {
    
    var integers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    var evenIntegers: [Int] = []
    var oddIntegers: [Int] = []
    
    for i in integers {
        if i == 0 || i % 2 == 0 {
            evenIntegers += [integers[i]]
        } else {
            oddIntegers.append(integers[i])
        }
    }
    print(evenIntegers)
    print(oddIntegers)
}


task(for: "4. შექმენით Double-ების array, შეავსეთ ის თქვენთვის სასურველი რიცხვებით. loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ array-ში.") {
    
    let doubles = [-3.56789012, 3.1415926, -1.2345678901, 2.718281828]
    var maxValue: Double = doubles[0]
    
    for i in 0..<doubles.count {
        if maxValue < doubles[i] {
            maxValue = doubles[i]
        }
    }
    print(maxValue)
}


task(for: "5. შექმენით ორი Int-ების array, შეავსეთ პირველი array 8, 4, 9, 9, 0, 2, და მეორე array 1, 0, 9, 2, 3, 7, 0, 1 ამ რიცხვებით. გააერთიანეთ ეს ორი array ერთ დასორტილ array-ში, ანუ შედეგი უნდა მიიღოთ ასეთი: 0, 0, 0, 1, 1, 2, 2, 3, 4, 7, 8, 9, 9, არ გამოიყენოთ sorted() ან რაიმე სხვა უკვე არსებული მეთოდი swift-იდან. დაბეჭდეთ მიღებული დასორტილი array.") {
    
    let intergerArray = [8, 4, 9, 9, 0, 2]
    let intergerArray1 = [1, 0, 9, 2, 3, 7, 0, 1]
    let integratedArray = intergerArray + intergerArray1
    print(integratedArray.count)
    
    var sortedArray = integratedArray
    let arrayLength = sortedArray.count
    
    // outer loop to go through each element in the array
    for i in 0..<arrayLength {
        // inner loop to go through each element in the array after the current one in the outer loop
        for j in 0..<arrayLength - i - 1 {
            // check if the current element is greater than the next element
            if sortedArray[j] > sortedArray[j + 1] {
                let item = sortedArray[j]
                sortedArray[j] = sortedArray[j + 1]
                sortedArray[j + 1] = item
            }
        }
    }
    print(sortedArray)
}


task(for: "6. შექმენით String ტიპის ცვლადი და შეამოწმეთ არის თუ არა ყველა ჩარაქტერი ამ სტრინგში უნიკალური. გამოიყენეთ Set-ი ამ თასკის შესასრულებლად.") {
    
    let stringToCheck = "Hello World"
    let stringArray = Array(stringToCheck)
    let stringSet = Set(stringArray)
    
    if stringArray.count == stringSet.count {
        print("Characters in the string: \(stringToCheck) - are unique")
    } else {
        print("Characters in the string: \(stringToCheck) - are not unique")
    }
}

task(for: "7. შექმენით ორი Int-ების Set. გამოიყენეთ მათზე Set-ის მეთოდები როგორიცაა: union, intersection და difference. დაბეჭდეთ შედეგები.") {
    
    let intNumbers: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let evenNumbers: Set = [2, 4, 6, 8, 10]
    
    print(intNumbers.union(evenNumbers)) // all of the values in both sets
    print(intNumbers.intersection(evenNumbers)) // only the values common to both sets.
    print(intNumbers.symmetricDifference(evenNumbers)) // values in either set, but not both.
}

task(for: "8. შექმენით ორი String-ის Set. შეამოწმეთ არის თუ არა პირველი String-ის Set, მეორეს sub-Set-ი. დაბეჭდეთ შედეგი.") {
    
    let orderedFoodAllergens: Set = ["Milk", "Eggs", "Wheat", "Mustard"]
    let allAllergens: Set = [
        "Peanuts",
        "Nuts",
        "Milk",
        "Eggs",
        "Fish",
        "Crustaceans",
        "Mollusks",
        "Wheat",
        "Soybeans",
        "Sesame Seeds",
        "Celery",
        "Mustard",
        "Lupin",
        "Sulfur Dioxide and Sulfites"
    ]
    
    //check: true or false
    if orderedFoodAllergens.isSubset(of: allAllergens) {
        print("The food you ordered classifies as allergenic")
    } else {
        print("The food you ordered is free of allergenes")
    }
}


task(for: "9. შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: 'array-ში ყველა ელემენტი განსხვავებულია' ან 'array შეიცავს მსგავს ელემენტებს'  (array-ს ტიპს არაქვს მნიშვნელობა.") {
    let junkFood = ["🍕", "🍟", "🍔", "🌭", "🌯", "🌮", "🫔", "🍔"]
    let junkFoodSet = Set(junkFood)
    
    if junkFood.count == junkFoodSet.count {
        print("array-ში ყველა ელემენტი განსხვავებულია")
    } else {
        print("array შეიცავს მსგავს ელემენტებს")
    }
}



task(for: "10. შექმენით Dictionary, სადაც იქნება ფილმის სახელები და მათი რეიტინგები, რეიტინგი (0-10). დაამატეთ მინიმუმ 5 ფილმი, ამის შემდეგ გამოთვალეთ ამ Dictionary-ში არსებული ფილმების საშვალო რეიტინგი. დაბეჭდეთ მიღებული შედეგი.") {
    
    let moviesByRating2023: [String: Float] = [
        "Wedding Crushers": 7.0,
        "The Hangover": 7.7,
        "Home Alone": 7.7,
        "Anger Management": 6.2,
        "Eurotrip": 6.6,
        "Horrible Bosses": 6.9,
        "What Happens in Vegas": 6.1,
        "Bad Teacher": 5.6
    ]
    var averageRating: Float = 0.0
    
    for rating in moviesByRating2023.values {
        averageRating += rating
    }
    averageRating = averageRating / Float(moviesByRating2023.count)
    var roundedValue = String(format: "%.1f", averageRating) //  round down a number to one decimal place by converting it to a string
    
    print("The average rating of the listed movies is: \(roundedValue)")
}

