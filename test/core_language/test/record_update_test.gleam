import should

pub type Person {
  Person(
    name: String,
    age: Int,
    country: String
  )
}

pub fn record_update_test() {
  let past = Person("Quinn", 27, "Canada")
  let present = #Person(..past, country: "USA", age: past.age + 1)

  should.equal(present, Person("Quinn", 28, "USA"))
}
