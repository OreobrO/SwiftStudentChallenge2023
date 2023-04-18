//import SwiftUI
//
///*
//
// [1, 2, 3, 2, 3]
// 1. 인덱스 0을 1과 비교한다. 같거나 크다면 var num += 1
// 2. 인덱스 0을 2와 비교한다. 같거나 크다면 var num += 1
// 3. 인덱스 0을 3과 비교한다. 작다면 return[]배열에 추가한다.
// 4. 인덱스 4와 4를 비교한다. 마지막은 0이다.
//
// index
// 0 1,2,3,4
// 1 2,3,4
// 2 3,4
// 3 4
// 4
//
// */
//var prices: [Int] = [1, 2, 3, 2, 3]
//var returns: [Int] = []
//var num: Int = 0
//var b = 0
//
//for i in 0 ..< prices.count {
//
//    for a in (i + 1) ..< prices.count  {
//
//        if prices[i] <= prices[a] {
//            num += 1
//        } else {
//            num += 1
//          break
//        }
//    }
//    returns.append(num)
//    num = 0
//}
//
//returns


////폰켓몬
//
//import SwiftUI
//var nums = [3, 4, 6, 2, 2, 2]
//
//import SwiftUI
//var nums = [3, 4, 6, 2, 2, 2]
//
//min(nums.count / 2, Set(nums).count)


//완주하지 못한 선수

//0을 제거해본다
//비교한다. 같으면 본체 추출물
//
//이름순으로 정렬한다.
//ㅁ[0] != ㅠ[0]이면,
//ㅁ[0] return한다.
//
//var participant = ["mislav", "stanko", "mislav", "ana"]
//var completion = ["stanko", "ana", "mislav"]
//var b: [String] = []
//
//
//import SwiftUI
//
//for i in 0 ..< participant.count - 1 {
//    if participant.sorted()[i] != completion.sorted()[i] {
//        participant.sorted()[i]
//    } else if i == participant.count - 2 {
//       participant.sorted()[i + 1]
//    }
//}


//전화번호 목록

/*
 "119" ->
 */


//var phoneBook = ["119", "97674223", "1195524421"]
//
//phoneBook.min()!.count
//for i in 0 ..< phoneBook.count {
//    phoneBook[i].removeLast(phoneBook[i].count - phoneBook.min()!.count)
//}
//
//if phoneBook.count != Set(phoneBook).count {
//    false
//} else { true }

//var phoneBook = ["12","123","1235","567","88"]
//
//let sortedPhoneBook = phoneBook.sorted()  // 전화번호를 정렬합니다.
//
//   for i in 0 ..< sortedPhoneBook.count-1 {
//       if sortedPhoneBook[i+1].hasPrefix(sortedPhoneBook[i]) {
//           false
//       }
//       true
//   }
//텍스트는 아스키 코드에 따라 정렬되고, 그렇다면 반복문으로 양옆의 숫자의 앞자리 length만큼만 비교하면 된다.
 

