import 'dart:math';

class BrainResult {
  BrainResult({this.height, this.weight});
  final int? height;
  final int? weight;

 double _bmi = 100;

  String calculateBmi(){
     _bmi = weight! / pow(height!/100 , 1);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if (_bmi >= 25){
        return 'OVERWEIGHT';
    } else if (_bmi > 18.5){
      return 'NORMAL';
    } else{
      return 'UNDERWEIGHT';
    }
  }

  String getComment(){
    if (_bmi >= 25){
        return  'You have a higher than normal bodyweight. Try to excercise more!';
    } else if (_bmi >= 18.5){
      return 'You have a normal body Weight. Good Job!';
    } else{
      return 'You have a lower than normal bodyweight. Try to eat bit more!';
    }
  }
}

// enum GenderCard { male, female }

// class  SelectedGender{

//     Color maleCardColour = inactiveColor;
//   Color femaleCardColour = inactiveColor;

//   SelectedGender({required this.maleGenderCard, required this.femaleGenderCard});

//   final Color maleGenderCard;
//   final Color femaleGenderCard;
  
//   Color getMale(){
//     if(gender == GenderCard.male) {
//         if(maleCardColour == inactiveColor){
//      return     maleCardColour = grColor1;
//           femaleCardColour = inactiveColor;
//         } else {
//           maleCardColour = inactiveColor;
//         }
     
//   }

//   Color getFemale{
//      } if (gender == GenderCard.female) {
//         if(femaleCardColour == inactiveColor) {
//           femaleCardColour = grColor1; 
//           maleCardColour = inactiveColor;
//         }else {
//           femaleCardColour = inactiveColor;
//         }
//       }
//   }
// }


// enum GenderCard { male, female }

// class SelectedGender{
//   SelectedGender({required this.male, required this.female});

//    bool? male;
//    bool? female;

//   bool updateMaleGender(){
//     if (male = GenderCard.male as bool) {
//       return GenderCard.male
//     } else print('not selected');
//   } 
//   bool updateFemaleGender(){
//     if (female = GenderCard.female as bool) {
//       return ('female selected');
//     } else print('not selected');
//   }
// }