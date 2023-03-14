var spanish101: Set = ["Angela", "Declan", "Aldany", "Alex", "Sonny", "Alif", "Skyla"]
var german101: Set = ["Angela", "Alex", "Declan", "Kenny", "Cynara", "Adam"]
var advancedCalculus: Set = ["Cynara", "Gabby", "Angela", "Samantha", "Ana", "Aldany", "Galina", "Jasmine"]
var artHistory: Set = ["Samantha", "Vanessa", "Aldrian", "Cynara", "Kenny", "Declan", "Skyla"]
var englishLiterature: Set = ["Gabby", "Jasmine", "Alex", "Alif", "Aldrian", "Adam", "Angela"]
var computerScience: Set = ["Galina", "Kenny", "Sonny", "Alex", "Skyla"]

// Write your code below 🍎
/*
Take a look at the 6 sets in Roster.swift.

Each set contains the names of students who are currently enrolled in a specific class. Students can take multiple classes, so there is overlapping data between several of the sets.

Use the set operation .union() to combine all the students into one set called allStudents.

You may need to use the .union() several times to achieve this goal.*/

var allStudents = spanish101.union(german101).union(advancedCalculus).union(artHistory).union(englishLiterature).union(computerScience)
print(allStudents)

print("======================================")

/*
The school wants to know the names of all the students and how many students are currently enrolled in at least 1 class.

Use a for-in loop to iterate through allStudents and print() the name of each individual student.

Use print() and .count() to output the total number of students.*/
for student in allStudents {
  print(student)
}
//counting number of students in allStudents can see how many students are currently enrolled in at least 1 class works because values in a Set cannot be repeated.
print("Total number of students: \(allStudents.count)")
print("======================================")
//noLanguage = allStudents - ((spanish101+german101))
var noLanguage = allStudents.subtracting(spanish101).subtracting(german101)
print(noLanguage)
print("======================================")
var spanishOrGerman = spanish101.symmetricDifference(german101)
print(spanishOrGerman)
print("======================================")
var languageAwardWinners = spanish101.intersection(german101).intersection(englishLiterature)
print(languageAwardWinners)
print("======================================")
var sevenPlus = 0
var classSet: Set = [spanish101, german101,englishLiterature, computerScience, artHistory, advancedCalculus]
for numberOfStudents in classSet {
  if numberOfStudents.count >= 7{
    sevenPlus += 1
  }
}
print("The number of classes that have 7 or more students is \(sevenPlus).")
print("======================================")
//Q:The student "Skyla" has transferred to a new school. Use .remove() to delete the student from any classes they are currently enrolled in.
spanish101.remove("Skyla")
print(spanish101)
artHistory.remove("Skyla")
print(artHistory)
computerScience.remove("Skyla")
print(computerScience)
print("======================================")
/*Q1.The students from the computerScience class and advancedCalculus class are going on a field trip. Create a set called fieldTrip that combines these two sets using .union().
Q2.The day of the field trip, there is a test in german101. Use .subtracting() to remove any students in fieldTrip who are also in german101.*/
var fieldTrip = computerScience.union(advancedCalculus).subtracting(german101)
print(fieldTrip)

