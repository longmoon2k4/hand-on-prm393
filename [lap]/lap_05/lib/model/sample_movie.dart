//      ____            _ _        ____
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V /
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/
//

import 'package:lap_05/model/movie.dart';
import 'package:lap_05/model/trailer.dart';

final List<Movie> sampleMovies = [
  Movie(
    id: '1',
    title: 'Spider-Man: No Way Home',
    posterUrl: 'https://static-cgv.vncdn.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/s/n/snwh_new_fb1080x1350_1_.jpg',
    overview: 'Trong phim Người Nhện: Không Còn Nhà, thân phận Người Nhện của Peter bị tiết lộ trước báo chí, khiến cuộc sống của anh trở nên hỗn loạn. Anh cầu cứu sự giúp đỡ từ Doctor Strange và cả hai bắt tay vào một cuộc phiêu lưu nguy hiểm khi họ cố gắng sử dụng một phép thuật cổ xưa để khôi phục lại thế giới của Peter.',
    genres: ['Action', 'Adventure', 'Fantasy'],
    rating: 8.6,
    trailers: [
      Trailer(title: 'Official Trailer'),
      Trailer(title: 'Behind the Scenes'),
    ],
  ),
  Movie(
    id: '2',
    title: "Doraemon: Nobita's Art World Tales",
    posterUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8oty4HeJxvxgL6Bz0zLwSrZjice9X9B_Iw3K8EM9ED5CVoQ1iTr1C-vQ&s=10',
    overview: 'TBộ phim Doraemon: Nobita Và Cuộc Phiêu Lưu Vào Thế Giới Trong Tranh là một tác phẩm hoạt hình thú vị dành cho khán giả nhí. Phim được lồng tiếng bởi các diễn viên nổi tiếng Wasabi Mizuta, Megumi Ouhara và Yumi Kakazu. Cốt truyện của phim xoay quanh chuyến phiêu lưu đến thế giới trong một bức tranh nổi tiếng của nhóm bạn Doraemon. Ban đầu, họ nghĩ rằng sẽ có những trải nghiệm vui vẻ và thú vị. Tuy nhiên, họ lại phát hiện ra một truyền thuyết kinh hoàng về sự hủy diệt thế giới. Để ngăn chặn điều này, Doraemon và các bạn phải đối mặt với nhiều thử thách khó khăn và nguy hiểm. Nhân vật chính trong bộ phim là Doraemon - chú mèo máy thông minh và tài ba, luôn sẵn lòng giúp đỡ Nobita - cậu bé lười biếng nhưng đầy lòng tốt. Cùng với nhóm bạn gồm Shizuka, Gian và Suneo, họ đã cùng nhau trải qua hàng loạt cuộc phiêu lưu đầy kịch tính và ý nghĩa. Với sự kết hợp giữa câu chuyện hấp dẫn, hình ảnh đẹp mắt và âm nhạc sống động, Doraemon: Nobita Và Cuộc Phiêu Lưu Vào Thế Giới Trong Tranh chắc chắn sẽ mang lại niềm vui và kỷ niệm không quên cho khán giả mọi lứa tuổi.',
    genres: ['Adventure', 'Animation', 'Family', 'Cartoon',],
    rating: 8.3,
    trailers: [
      Trailer(title: 'Official Trailer'),
      Trailer(title: 'Behind the Scenes'),
    ],
  ),
];
