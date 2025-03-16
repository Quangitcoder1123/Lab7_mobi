import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
        storyTitle:
        'Bạn là một nhà thám hiểm, đang khám phá một ngôi đền cổ trong rừng rậm. Khi bạn bước vào sảnh chính, cánh cửa đá phía sau bất ngờ đóng sập lại. Trước mặt bạn là hai lối đi: một hành lang tối om có tiếng nước chảy và một cầu thang đá dẫn xuống tầng hầm.',
        choice1: 'Đi vào hành lang tối',
        choice2: 'Xuống cầu thang đá'),
    Story(
        storyTitle: 'Bạn bước vào hành lang tối và cảm nhận được độ ẩm xung quanh. Bỗng nhiên, sàn nhà rung chuyển, và bạn thấy một cánh cửa đá đang từ từ hạ xuống phía trước!',
        choice1: 'Chạy nhanh qua cửa trước khi nó đóng lại!',
        choice2: 'Quay lại và tìm lối khác.'),
    Story(
        storyTitle:
        'Bạn xuống cầu thang và thấy một căn phòng có một bức tượng đá khổng lồ. Một viên ngọc phát sáng nằm trong tay tượng. Khi bạn tiến lại gần, đôi mắt tượng sáng lên màu đỏ rực!',
        choice1: 'Cầm viên ngọc và chạy!',
        choice2: 'Quay lưng bỏ chạy trước khi có chuyện xảy ra.'),
    Story(
        storyTitle:
        'Bạn chạy qua cửa nhưng không kịp! Cửa đá rơi xuống, bạn bị mắc kẹt và không còn đường lui.',
        choice1: 'Khởi động lại',
        choice2: ''),
    Story(
        storyTitle:
        'Bạn quyết định chạy đi trước khi bức tượng có thể làm gì. Khi quay lại, bạn trượt chân rơi xuống một cái bẫy chông!',
        choice1: 'Khởi động lại',
        choice2: ''),
    Story(
        storyTitle:
        'Bạn lấy viên ngọc và bất ngờ cánh cửa bí mật mở ra. Bạn tìm thấy lối thoát và rời khỏi ngôi đền an toàn, mang theo kho báu quý giá!',
        choice1: 'Khởi động lại',
        choice2: '')
  ];

  int _storyNumber = 0;

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 5;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    return _storyNumber < 3;
  }
}
