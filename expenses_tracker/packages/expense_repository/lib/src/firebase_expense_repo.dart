// import 'dart:developer';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:expense_repository/expense_repository.dart';

// abstract class FirebaseExpenseRepo implements ExpenseRepository {
//   final categoryCollection = FirebaseFirestore.instance.collection('categories');
//   final expenseCollection = FirebaseFirestore.instance.collection('expense');

//   @override
//   Future<void> createCategory(Category category) async {
//     try {
//       await categoryCollection
//         .doc(category.categoryId)
//         .set(category.toEntity().toDocument());
//     } catch (e) {
//       log(e.toString());
//       rethrow;
//     }
//   }

//     @override
//   Future<List<Category>> getCategory() async {
//     try {
//       return await categoryCollection
//         .get()
//         .then((value) => value.docs.map((e) =>
//          Category.fromEntity(CategoryEntity.fromDocument(e.data()))
//          ).toList());
//     } catch (e) {
//       log(e.toString());
//       rethrow;
//     }
//   }
  
//   @override
//   createExpense(expense) {
//     // TODO: implement createExpense
//     throw UnimplementedError();
//   }

// }