// Byte Sieve micro-benchmark
//   from the Jan '83 and Aug '84 issues of Byte magazine
//   converted to Swift (Apple Xcode6-beta)  2014-Jun-07  rhn
//   revised for Swift 2.1 (Apple Xcode7.2)  2016-Feb-15  rhn
//   run in Release mode or with -Ounchecked optimization

import Foundation

func sieve() {
    let time0 : Double = NSDate.timeIntervalSinceReferenceDate()

    let loops = 100000   /* configure for between 1 and 10 seconds */
    var mySieve = [Int8](count: 8192, repeatedValue: 0)
    let sz = 8192
    var c = 0
    for _ in 1...loops {
      c = 0
      for i in 0..<sz { mySieve[i] = 1 }
      for i in 0..<sz {
        if mySieve[i] == 1 {
          let prime = i + i + 3
          for var k=i; k<sz; k+=prime { mySieve[k] = 0 }
          c++
        }
      }
    }
    print("Sieve array size = \(sz)")
    print("Primes found : \(c) * \(loops) loops = \(c * loops)")

    let dt = NSDate.timeIntervalSinceReferenceDate() - time0
    print("Elapsed Time = \(dt) seconds");
}

sieve()

// eof
