import Foundation

print(condog(str: "salut", prefix: " ", suffix: "ca va ?"));
print(cleanHobbits(arr: ["Frodo", "Aragorn", "Boromir", "Legolas", "Gimli", "Gandalf", "Samsaget"]));
print("2019".toDate(format: "yyyy"))
print(Date().toString(format: "yyyy"))

let email = Email(email: "zya1999@hotmail.fr")
print(email.isValidEmail())


let person = Person(firstname: "Zya", lastname: "Nassurally", gender: Gender.Male, email: "zya1999@hotmail.fr", birthdate: "04/04/1999".toDate(format: "dd/MM/YYY"))
person.show()

let api = ApiManager()

api.getRandomUser(completion: {data in
    data.show()
})

api.getRandomUserHydratedWithPerson(completion: {person in
    person.show()
})

RunLoop.main.run()