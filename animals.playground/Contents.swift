//: Playground - noun: a place where people can play

import UIKit

class Animal {
  var name: String
  var health = 100
  init(name: String) {
    self.name = name
  }
  func displayHealth() {
    print("\(self.name): \(self.health)")
  }
}

// Developer will inherit from Person
class Cat: Animal {
  init(cat_name: String) {
    super.init(name: cat_name)
    self.health = 150
  }
  func run() {
    self.health -= 10
  }
  func growl() {
    print("Rawr!")
  }
}

class Cheetah: Cat {
  init(cheetah_name: String) {
    super.init(cat_name: cheetah_name)
    self.health = 200
  }
  override func run() {
    if self.health <= 0 {
      print("Not enough health to run")
    }
    else {
      print("Running fast")
      self.health -= 50
    }
  }
  func sleep() {
    self.health += 50
    if self.health > 200 {
      self.health = 200
    }
  }
}

class Lion: Cat {
  init(lion_name: String) {
    super.init(cat_name: lion_name)
    self.health = 200
  }
  override func growl() {
    print("ROAR!!! I am the King of the Jungle")
  }
}

var c1 = Cheetah(cheetah_name: "Erick")
c1.run()
c1.run()
c1.run()
c1.run()
c1.run()
c1.displayHealth()

var l1 = Lion(lion_name: "Charlie")
l1.run()
l1.run()
l1.run()
l1.growl()