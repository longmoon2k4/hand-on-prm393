import 'package:exercise_02/models/Developer.dart';

void main() {
	List<Developer>? SeniorTeam = [Developer(name: "Long"), Developer(name: "Bảo")];
	List<Developer>? JuniorTeam = [Developer(name: "Phúc"), Developer(name: "Quyền"), Developer(name: "Đạt")];

	List<Developer> Team = [...SeniorTeam, ...JuniorTeam];

	for (final i in Team ) {
		i.checkIn();
	}
}

