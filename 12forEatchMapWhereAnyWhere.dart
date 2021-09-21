/**
 * forEach
 * map
 * where
 * any
 * every
 * */

/** List */  
// main() {
//   // forEach
//   List myList = ["AAA", "BBB", "CCC"];
//   myList.forEach((element) {
//     print(element);
//   });

//   // map
//   List numList = [1, 10, 100];
//   var newNumList = numList.map((value) => value * 2);
//   print(newNumList);

//   // where
//   List whereList = [1, 3, 4, 5, 6, 7, 12];
//   var newWhereList = whereList.where((element) => element > 5);
//   print(newWhereList);

//   // any
//   List anyList = [1, 3, 4, 5, 6, 7, 12];
//   var anyResult = anyList.any((element) => element>5); //只要集合里面有满足条件的就返回true
//   print(anyResult);

//   // every
//   List everyList = [1, 3, 4, 5, 6, 7, 12];
//   var everyResult = everyList.every((element) => element>5);//每一个都满足条件，返回true
//   print(everyResult);
// }

/** map */
main() {
     var person = {
     "name":"zhangsan",
     "age":19
   };

   person.forEach((key, value) { 
     print("key = $key value = $value");
   });
} 