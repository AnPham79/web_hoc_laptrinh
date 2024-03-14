-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th3 14, 2024 lúc 06:04 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webhoclaptrinhmienphi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `noidung_binhluan` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FK_ma_khoahoc` bigint UNSIGNED NOT NULL,
  `FK_ma_nguoidung` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `noidung_binhluan`, `FK_ma_khoahoc`, `FK_ma_nguoidung`, `created_at`, `updated_at`) VALUES
(3, 'Khóa học khá tuyệt, bài giảng khá hay, các bạn nên mua thử nhé <3', 8, 3, '2024-03-13 22:12:13', '2024-03-13 22:12:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `courses`
--

CREATE TABLE `courses` (
  `id` bigint UNSIGNED NOT NULL,
  `tieude_khoahoc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anhminhhoa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota_khoahoc` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_khoahoc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tacgia_khoahoc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FK_ma_danhmuc` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `courses`
--

INSERT INTO `courses` (`id`, `tieude_khoahoc`, `anhminhhoa`, `mota_khoahoc`, `gia_khoahoc`, `tacgia_khoahoc`, `FK_ma_danhmuc`, `created_at`, `updated_at`) VALUES
(5, 'Khóa học lập trình JS cơ bản', 'img/uoxPRogqj0xuKVJVkHjd7o6fKPDdM5289abDORQB.png', 'Bạn đã bao giờ muốn tạo ra các trang web động và ứng dụng web hoạt động một cách linh hoạt chưa? Nếu có, thì khóa học lập trình cơ bản với JavaScript chính là điểm bắt đầu hoàn hảo cho bạn!  JavaScript là ngôn ngữ lập trình phổ biến nhất trên thế giới và đó là lựa chọn hàng đầu cho việc phát triển các ứng dụng web đa dạng. Khóa học này sẽ giúp bạn tiếp cận và hiểu rõ về cú pháp cơ bản của JavaScript, cũng như cách sử dụng nó để tạo ra các chức năng động trên trang web của bạn.  Trong khóa học, bạn sẽ học được:  Cú pháp cơ bản của JavaScript: Biến, hàm, điều kiện, vòng lặp và nhiều hơn nữa. Xử lý sự kiện và tương tác người dùng: Lắng nghe sự kiện, xử lý dữ liệu đầu vào từ người dùng. DOM (Document Object Model): Cách tương tác với HTML và CSS để thay đổi nội dung và giao diện của trang web. AJAX và Fetch API: Gửi yêu cầu đến máy chủ và xử lý dữ liệu phản hồi mà không cần tải lại trang.', '399000', 'Bảo An', 1, '2024-03-13 20:41:00', '2024-03-13 20:41:00'),
(6, 'Khóa học HTML CSS Pro', 'img/KxhN1ORrd8gIo0W9gIUZq5RQfnSeHrdqBMKRsA6x.png', 'Trong khóa học này, chúng tôi sẽ dẫn dắt bạn qua một hành trình sâu sắc vào thế giới của HTML và CSS, hai công nghệ cơ bản nhưng không thể phủ nhận quan trọng trong việc xây dựng bất kỳ trang web nào. Chúng tôi cam kết đem đến cho bạn không chỉ kiến thức cơ bản mà còn những kỹ năng và chiến lược để bạn có thể xây dựng những trang web đẹp mắt và chức năng.  Trong khóa học, bạn sẽ được học:  HTML: Cú pháp cơ bản và tiên tiến, các phần tử cơ bản và tiên tiến, cách xây dựng cấu trúc đúng cho một trang web. CSS: Cách sử dụng CSS để thiết kế giao diện trực quan, áp dụng các kiểu và hiệu ứng để làm cho trang web của bạn nổi bật. Responsive Design: Cách tạo ra các trang web linh hoạt, tương thích trên mọi thiết bị, từ máy tính đến điện thoại di động. Flexbox và Grid: Cách sử dụng Flexbox và Grid để tạo ra giao diện linh hoạt và dễ bảo trì. Sử dụng công cụ và thực hành dự án: Thực hành thông qua các bài tập và dự án thực tế để củng cố kiến thức và kỹ năng của bạn.', '1190000', 'Bảo An', 5, '2024-03-13 20:46:19', '2024-03-13 20:46:19'),
(7, 'Khóa học kiến thức nền tảng về lập trình', 'img/LA556lUppGgPyirzeqle4VXJTMezJ0kkORJXsqJm.png', 'Khóa học \"Kiến Thức Nền Tảng về Lập Trình\" là một hành trình hoàn hảo để bắt đầu sự nghiệp của bạn trong lĩnh vực lập trình. Được thiết kế đặc biệt cho người mới bắt đầu, khóa học này sẽ giúp bạn hiểu rõ về các nguyên lý cơ bản của lập trình và chuẩn bị bạn cho những thử thách phức tạp hơn trong tương lai.  Trong khóa học này, bạn sẽ học được:  Ngôn Ngữ Lập Trình Cơ Bản: Bạn sẽ tìm hiểu về cú pháp và nguyên lý hoạt động của ngôn ngữ lập trình, bao gồm các khái niệm như biến, kiểu dữ liệu, toán tử, và câu lệnh điều kiện và vòng lặp.  Thuật Toán và Cấu Trúc Dữ Liệu: Khóa học sẽ giới thiệu cho bạn các khái niệm cơ bản về thuật toán và cấu trúc dữ liệu, giúp bạn hiểu rõ về cách tổ chức và xử lý dữ liệu một cách hiệu quả.  Giải Quyết Vấn Đề: Bạn sẽ học cách phân tích vấn đề và thiết kế giải pháp thông qua việc áp dụng các kỹ thuật lập trình.  Thực Hành và Dự Án', '79000', 'Phạm An', 5, '2024-03-13 20:49:53', '2024-03-13 20:49:53'),
(8, 'Khóa học C++ cơ bản', 'img/vNlvhsWD53krlTRiWLiZ70ZrlK4YhBbF75ySt3A8.png', 'Khóa học \"Lập Trình C++ Cơ Bản và Nâng Cao\" là sự lựa chọn hoàn hảo cho những ai muốn học lập trình C++ từ cơ bản đến nâng cao. C++ là một ngôn ngữ lập trình mạnh mẽ và linh hoạt được sử dụng rộng rãi trong nhiều lĩnh vực, từ phát triển phần mềm đến game và hệ thống nhúng.  Trong khóa học này, bạn sẽ học được:  Cú Pháp và Cấu Trúc Cơ Bản của C++: Từ khái niệm về biến, hàm, lớp và đối tượng, bạn sẽ hiểu cách sử dụng cú pháp của C++ để tạo ra các chương trình cơ bản.  Thư Viện Chuẩn của C++ (STL): Khóa học sẽ giới thiệu cho bạn về các thành phần quan trọng trong thư viện chuẩn của C++, bao gồm các cấu trúc dữ liệu như vector, list, map, và các thuật toán xử lý dữ liệu.  Lập Trình Hướng Đối Tượng (OOP): Bạn sẽ học cách áp dụng các nguyên lý của lập trình hướng đối tượng như kế thừa, đa hình và đóng gói trong việc thiết kế và triển khai các lớp và đối tượng trong C++.', '299000', 'Phạm An', 4, '2024-03-13 20:54:14', '2024-03-13 20:54:14'),
(9, 'Khóa học responsive', 'img/z540ZI3Jm0BPnNLOIZmR8QYgNM23PirWi4DNAZQk.png', 'Khóa học \"Responsive Web Design: Xây Dựng Trang Web Tương Thích Mọi Thiết Bị\" là một hành trình đầy hấp dẫn giúp bạn hiểu và áp dụng các kỹ thuật thiết kế đáp ứng để tạo ra các trang web linh hoạt và tương thích trên mọi thiết bị, từ máy tính để bàn đến điện thoại di động.  Trong khóa học này, bạn sẽ học được:  Cơ Bản về Responsive Web Design: Bạn sẽ hiểu rõ về các nguyên lý cơ bản của responsive web design và tại sao nó quan trọng trong thế giới ngày nay.  Media Queries và CSS Flexbox/Grid: Khóa học sẽ hướng dẫn bạn cách sử dụng media queries, Flexbox và Grid để tạo ra giao diện linh hoạt và dễ bảo trì cho trang web của bạn trên các thiết bị khác nhau.  Optimization và Performance: Bạn sẽ học cách tối ưu hóa và cải thiện hiệu suất của trang web đáp ứng, từ việc quản lý hình ảnh đến tối ưu hóa tốc độ tải trang.', '299000', 'Phạm An', 5, '2024-03-13 20:57:39', '2024-03-13 20:57:39'),
(10, 'Khóa học lập trình JS nâng cao', 'img/fZRDriDRjZCJTONQplr3uTPwM3XxrEaStwUwG5DP.png', 'JavaScript là một ngôn ngữ lập trình phổ biến trong lĩnh vực phát triển web, giúp bạn thêm tính tương tác vào trang web của mình. Khóa học này sẽ đưa bạn qua những kiến thức cơ bản như cú pháp, cấu trúc dữ liệu, và các khái niệm quan trọng của JavaScript.  Trong suốt khóa học, bạn sẽ học được cách sử dụng JavaScript để thao tác với các phần tử trên trang web, xử lý sự kiện từ người dùng, và tạo ra các hiệu ứng động hấp dẫn. Bạn sẽ cũng được làm quen với các công cụ phát triển và các kỹ thuật debugging để phát triển ứng dụng JavaScript hiệu quả.  Dù bạn là một người mới bắt đầu hoặc đã có kinh nghiệm với lập trình, khóa học này sẽ cung cấp cho bạn nền tảng vững chắc để tiếp tục học tập và phát triển kỹ năng JavaScript của mình.  Nếu bạn muốn thêm tính tương tác và sức mạnh vào trang web của mình, không có gì tuyệt vời hơn việc bắt đầu học JavaScript ngay hôm nay!', '399000', 'Phạm An', 1, '2024-03-13 20:58:45', '2024-03-13 20:58:45'),
(11, 'Khóa học React JS cơ bản', 'img/KN8U975syyPtC7ajEsCWnTTZdflbJyaogJA9at3O.png', 'Khóa học \"Lập Trình ứng dụng Web với ReactJS\" là hành trình tuyệt vời để bạn hiểu và thực hành một trong những thư viện JavaScript phổ biến nhất để phát triển ứng dụng web hiện đại - ReactJS. ReactJS không chỉ giúp bạn xây dựng các ứng dụng web đẹp mắt mà còn cung cấp một cách tiếp cận linh hoạt và hiệu quả trong việc quản lý giao diện người dùng.  Trong khóa học này, bạn sẽ học được:  Cơ Bản về ReactJS: Bạn sẽ hiểu cách ReactJS hoạt động, cú pháp cơ bản của nó và tại sao nó trở thành một trong những công cụ phổ biến nhất cho việc phát triển ứng dụng web.  Component-Based Development: Khóa học sẽ giúp bạn hiểu và thực hành mô hình phát triển dựa trên các thành phần của ReactJS, giúp bạn tái sử dụng mã và quản lý giao diện người dùng một cách hiệu quả.  State Management và Lifecycle Methods: Bạn sẽ học cách quản lý trạng thái của ứng dụng và sử dụng các phương thức lifecycle của ReactJS để tương tác với các thành phần trong quá trình vòng đời của chúng.', '399000', 'Phạm An', 1, '2024-03-13 21:02:02', '2024-03-13 21:02:02'),
(12, 'Khóa học Node JS', 'img/BEYFDZwoKHYe6aGN8n9wUzlE2Yxma2feUjWHoy8G.png', 'Khóa học \"Phát Triển Ứng Dụng Backend với Node.js\" là một hành trình tuyệt vời để bạn khám phá và hiểu sâu về Node.js, một nền tảng phát triển backend phổ biến và mạnh mẽ dựa trên JavaScript. Node.js cho phép bạn xây dựng các ứng dụng web và dịch vụ server-side hiệu quả với hiệu suất cao.  Trong khóa học này, bạn sẽ học được:  Cơ Bản về Node.js và JavaScript: Bạn sẽ hiểu rõ về cách Node.js hoạt động và cách sử dụng JavaScript để phát triển các ứng dụng backend.  Express.js Framework: Khóa học sẽ giúp bạn làm quen với Express.js, một framework phổ biến cho phát triển ứng dụng web Node.js, và cách sử dụng nó để xây dựng các API và routes.  Cơ Sở Dữ Liệu và CRUD Operations: Bạn sẽ học cách kết nối và tương tác với cơ sở dữ liệu, thực hiện các hoạt động CRUD (Create, Read, Update, Delete) sử dụng Node.js.  Authentication và Authorization: Khóa học cung cấp kiến thức về cách xác thực và ủy quyền người dùng trong ứng dụng Node.js, bảo vệ các tài nguyên và endpoints của ứng dụng.', '399000', 'Phạm An', 1, '2024-03-13 21:04:02', '2024-03-13 21:04:02'),
(13, 'khóa học MongoDB', 'img/u3gTG7ogIhZvG3r9QFEPGga6zs4ZzGlLapsNVNoU.jpg', 'MongoDB là một hệ quản trị cơ sở dữ liệu phi quan hệ (NoSQL) mã nguồn mở, phát triển dựa trên mô hình tài liệu. Thay vì lưu trữ dữ liệu trong các bảng như trong hệ quản trị cơ sở dữ liệu quan hệ truyền thống, MongoDB lưu trữ dữ liệu dưới dạng các tài liệu JSON có thể nhúng các tài liệu khác bên trong chúng. Điều này tạo ra một cấu trúc dữ liệu linh hoạt và dễ dàng mở rộng.  Đặc Điểm Chính của MongoDB:  Tài Liệu JSON: Dữ liệu được lưu trữ trong MongoDB dưới dạng các tài liệu JSON, gọi là BSON (Binary JSON), cho phép lưu trữ dữ liệu có cấu trúc phong phú và linh hoạt.  Tính Linh Hoạt và Dễ Mở Rộng: MongoDB cho phép bạn dễ dàng mở rộng hệ thống của mình bằng cách thêm mới các nút vào cụm máy chủ và phân tán dữ liệu trên nhiều máy chủ.  Query Mạnh Mẽ: MongoDB cung cấp một ngôn ngữ truy vấn linh hoạt và mạnh mẽ, cho phép bạn thực hiện các truy vấn phức tạp và hiệu quả.', '299000', 'Phạm An', 1, '2024-03-13 21:07:09', '2024-03-13 21:07:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_categories`
--

CREATE TABLE `course_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `tendanhmuc_khoahoc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `course_categories`
--

INSERT INTO `course_categories` (`id`, `tendanhmuc_khoahoc`, `created_at`, `updated_at`) VALUES
(1, 'Javascript', '2024-03-11 21:25:51', '2024-03-11 21:25:51'),
(2, 'PHP', '2024-03-11 21:25:55', '2024-03-11 21:25:55'),
(3, 'Python', '2024-03-11 21:26:03', '2024-03-11 21:26:03'),
(4, 'C++', '2024-03-13 20:24:02', '2024-03-13 20:24:02'),
(5, 'HTML CSS', '2024-03-13 20:41:30', '2024-03-13 20:41:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_users`
--

CREATE TABLE `course_users` (
  `id` bigint UNSIGNED NOT NULL,
  `FK_ma_khoahoc` bigint UNSIGNED NOT NULL,
  `FK_ma_nguoidung` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `course_users`
--

INSERT INTO `course_users` (`id`, `FK_ma_khoahoc`, `FK_ma_nguoidung`, `status`, `created_at`, `updated_at`) VALUES
(2, 8, 3, 1, '2024-03-13 21:31:34', '2024-03-13 22:48:39'),
(3, 5, 3, 1, '2024-03-13 22:49:35', '2024-03-13 22:49:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint UNSIGNED NOT NULL,
  `tieude_baihoc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_baihoc` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung_baihoc` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FK_ma_khoahoc` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lessons`
--

INSERT INTO `lessons` (`id`, `tieude_baihoc`, `video_baihoc`, `noidung_baihoc`, `FK_ma_khoahoc`, `created_at`, `updated_at`) VALUES
(8, 'Bắt Đầu với Javascript (P1)', 'https://www.youtube.com/watch?v=k3Pv3P8TE1s', 'Bài Học 1: Giới Thiệu JavaScript và Cú Pháp Cơ Bản\r\n\r\nI. Giới Thiệu về JavaScript:\r\n\r\nJavaScript là một ngôn ngữ lập trình thông dịch, phổ biến trên web.\r\nĐược sử dụng để thêm các tính năng tương tác vào trang web, như xử lý sự kiện, thay đổi nội dung và tương tác với người dùng.\r\nII. Cú Pháp Cơ Bản:\r\n\r\nBiến (Variables):\r\n\r\nSử dụng từ khóa var, let hoặc const để khai báo biến.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nvar age = 30;\r\nlet name = \"John\";\r\nconst PI = 3.14;\r\nKiểu Dữ Liệu (Data Types):\r\n\r\nJavaScript có các kiểu dữ liệu cơ bản như Number, String, Boolean, Array, Object, và Null.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet num = 10;\r\nlet str = \"Hello\";\r\nlet isTrue = true;\r\nlet arr = [1, 2, 3];\r\nlet obj = { name: \"John\", age: 30 };\r\nlet empty = null;\r\nToán Tử (Operators):\r\n\r\nCó các toán tử như +, -, *, /, %, ++, --, ==, ===, >, <, >=, <=, &&, ||, etc.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet result = 10 + 5; // Kết quả: 15\r\nlet isGreater = 10 > 5; // Kết quả: true\r\nBiểu Thức (Expressions) và Câu Lệnh (Statements):\r\n\r\nBiểu thức là một phần của mã có thể đánh giá được thành một giá trị.\r\nCâu lệnh là một phần của mã thực hiện một hành động nhất định.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet x = 5 * 10; // Biểu thức\r\nif (x > 50) { // Câu lệnh\r\n    console.log(\"X is greater than 50\");\r\n}\r\nIII. Bài Tập:\r\n\r\nKhai báo một biến name và gán giá trị của nó là tên của bạn.\r\nTạo một mảng numbers chứa các số từ 1 đến 5.\r\nTính tổng của 3 số đầu tiên trong mảng numbers và in ra kết quả.\r\nIV. Tổng Kết:\r\nTrong bài học này, chúng ta đã tìm hiểu về JavaScript và cú pháp cơ bản của nó bao gồm biến, kiểu dữ liệu, toán tử, biểu thức và câu lệnh. Hãy tiếp tục học và thực hành để trở thành một lập trình viên JavaScript giỏi.', 5, '2024-03-13 21:39:51', '2024-03-13 21:39:51'),
(9, 'Đắng cay cuộc đời', 'https://www.youtube.com/watch?v=k3Pv3P8TE1s', 'Bài Học 1: Giới Thiệu JavaScript và Cú Pháp Cơ Bản\r\n\r\nI. Giới Thiệu về JavaScript:\r\n\r\nJavaScript là một ngôn ngữ lập trình thông dịch, phổ biến trên web.\r\nĐược sử dụng để thêm các tính năng tương tác vào trang web, như xử lý sự kiện, thay đổi nội dung và tương tác với người dùng.\r\nII. Cú Pháp Cơ Bản:\r\n\r\nBiến (Variables):\r\n\r\nSử dụng từ khóa var, let hoặc const để khai báo biến.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nvar age = 30;\r\nlet name = \"John\";\r\nconst PI = 3.14;\r\nKiểu Dữ Liệu (Data Types):\r\n\r\nJavaScript có các kiểu dữ liệu cơ bản như Number, String, Boolean, Array, Object, và Null.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet num = 10;\r\nlet str = \"Hello\";\r\nlet isTrue = true;\r\nlet arr = [1, 2, 3];\r\nlet obj = { name: \"John\", age: 30 };\r\nlet empty = null;\r\nToán Tử (Operators):\r\n\r\nCó các toán tử như +, -, *, /, %, ++, --, ==, ===, >, <, >=, <=, &&, ||, etc.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet result = 10 + 5; // Kết quả: 15\r\nlet isGreater = 10 > 5; // Kết quả: true\r\nBiểu Thức (Expressions) và Câu Lệnh (Statements):\r\n\r\nBiểu thức là một phần của mã có thể đánh giá được thành một giá trị.\r\nCâu lệnh là một phần của mã thực hiện một hành động nhất định.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet x = 5 * 10; // Biểu thức\r\nif (x > 50) { // Câu lệnh\r\n    console.log(\"X is greater than 50\");\r\n}\r\nIII. Bài Tập:\r\n\r\nKhai báo một biến name và gán giá trị của nó là tên của bạn.\r\nTạo một mảng numbers chứa các số từ 1 đến 5.\r\nTính tổng của 3 số đầu tiên trong mảng numbers và in ra kết quả.\r\nIV. Tổng Kết:\r\nTrong bài học này, chúng ta đã tìm hiểu về JavaScript và cú pháp cơ bản của nó bao gồm biến, kiểu dữ liệu, toán tử, biểu thức và câu lệnh. Hãy tiếp tục học và thực hành để trở thành một lập trình viên JavaScript giỏi.', 5, '2024-03-13 21:40:10', '2024-03-13 21:40:10'),
(10, 'Làm quen với C++', 'https://www.youtube.com/watch?v=k3Pv3P8TE1s', 'Bài Học 1: Giới Thiệu JavaScript và Cú Pháp Cơ Bản\r\n\r\nI. Giới Thiệu về JavaScript:\r\n\r\nJavaScript là một ngôn ngữ lập trình thông dịch, phổ biến trên web.\r\nĐược sử dụng để thêm các tính năng tương tác vào trang web, như xử lý sự kiện, thay đổi nội dung và tương tác với người dùng.\r\nII. Cú Pháp Cơ Bản:\r\n\r\nBiến (Variables):\r\n\r\nSử dụng từ khóa var, let hoặc const để khai báo biến.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nvar age = 30;\r\nlet name = \"John\";\r\nconst PI = 3.14;\r\nKiểu Dữ Liệu (Data Types):\r\n\r\nJavaScript có các kiểu dữ liệu cơ bản như Number, String, Boolean, Array, Object, và Null.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet num = 10;\r\nlet str = \"Hello\";\r\nlet isTrue = true;\r\nlet arr = [1, 2, 3];\r\nlet obj = { name: \"John\", age: 30 };\r\nlet empty = null;\r\nToán Tử (Operators):\r\n\r\nCó các toán tử như +, -, *, /, %, ++, --, ==, ===, >, <, >=, <=, &&, ||, etc.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet result = 10 + 5; // Kết quả: 15\r\nlet isGreater = 10 > 5; // Kết quả: true\r\nBiểu Thức (Expressions) và Câu Lệnh (Statements):\r\n\r\nBiểu thức là một phần của mã có thể đánh giá được thành một giá trị.\r\nCâu lệnh là một phần của mã thực hiện một hành động nhất định.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet x = 5 * 10; // Biểu thức\r\nif (x > 50) { // Câu lệnh\r\n    console.log(\"X is greater than 50\");\r\n}\r\nIII. Bài Tập:\r\n\r\nKhai báo một biến name và gán giá trị của nó là tên của bạn.\r\nTạo một mảng numbers chứa các số từ 1 đến 5.\r\nTính tổng của 3 số đầu tiên trong mảng numbers và in ra kết quả.\r\nIV. Tổng Kết:\r\nTrong bài học này, chúng ta đã tìm hiểu về JavaScript và cú pháp cơ bản của nó bao gồm biến, kiểu dữ liệu, toán tử, biểu thức và câu lệnh. Hãy tiếp tục học và thực hành để trở thành một lập trình viên JavaScript giỏi.', 8, '2024-03-13 21:40:25', '2024-03-13 21:40:25'),
(11, 'Các biến trong C++', 'https://www.youtube.com/watch?v=k3Pv3P8TE1s', 'Bài Học 1: Giới Thiệu JavaScript và Cú Pháp Cơ Bản\r\n\r\nI. Giới Thiệu về JavaScript:\r\n\r\nJavaScript là một ngôn ngữ lập trình thông dịch, phổ biến trên web.\r\nĐược sử dụng để thêm các tính năng tương tác vào trang web, như xử lý sự kiện, thay đổi nội dung và tương tác với người dùng.\r\nII. Cú Pháp Cơ Bản:\r\n\r\nBiến (Variables):\r\n\r\nSử dụng từ khóa var, let hoặc const để khai báo biến.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nvar age = 30;\r\nlet name = \"John\";\r\nconst PI = 3.14;\r\nKiểu Dữ Liệu (Data Types):\r\n\r\nJavaScript có các kiểu dữ liệu cơ bản như Number, String, Boolean, Array, Object, và Null.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet num = 10;\r\nlet str = \"Hello\";\r\nlet isTrue = true;\r\nlet arr = [1, 2, 3];\r\nlet obj = { name: \"John\", age: 30 };\r\nlet empty = null;\r\nToán Tử (Operators):\r\n\r\nCó các toán tử như +, -, *, /, %, ++, --, ==, ===, >, <, >=, <=, &&, ||, etc.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet result = 10 + 5; // Kết quả: 15\r\nlet isGreater = 10 > 5; // Kết quả: true\r\nBiểu Thức (Expressions) và Câu Lệnh (Statements):\r\n\r\nBiểu thức là một phần của mã có thể đánh giá được thành một giá trị.\r\nCâu lệnh là một phần của mã thực hiện một hành động nhất định.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet x = 5 * 10; // Biểu thức\r\nif (x > 50) { // Câu lệnh\r\n    console.log(\"X is greater than 50\");\r\n}\r\nIII. Bài Tập:\r\n\r\nKhai báo một biến name và gán giá trị của nó là tên của bạn.\r\nTạo một mảng numbers chứa các số từ 1 đến 5.\r\nTính tổng của 3 số đầu tiên trong mảng numbers và in ra kết quả.\r\nIV. Tổng Kết:\r\nTrong bài học này, chúng ta đã tìm hiểu về JavaScript và cú pháp cơ bản của nó bao gồm biến, kiểu dữ liệu, toán tử, biểu thức và câu lệnh. Hãy tiếp tục học và thực hành để trở thành một lập trình viên JavaScript giỏi.', 8, '2024-03-13 21:40:40', '2024-03-13 21:40:40'),
(12, 'Ôn tập html css', 'https://www.youtube.com/watch?v=k3Pv3P8TE1s', 'Bài Học 1: Giới Thiệu JavaScript và Cú Pháp Cơ Bản\r\n\r\nI. Giới Thiệu về JavaScript:\r\n\r\nJavaScript là một ngôn ngữ lập trình thông dịch, phổ biến trên web.\r\nĐược sử dụng để thêm các tính năng tương tác vào trang web, như xử lý sự kiện, thay đổi nội dung và tương tác với người dùng.\r\nII. Cú Pháp Cơ Bản:\r\n\r\nBiến (Variables):\r\n\r\nSử dụng từ khóa var, let hoặc const để khai báo biến.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nvar age = 30;\r\nlet name = \"John\";\r\nconst PI = 3.14;\r\nKiểu Dữ Liệu (Data Types):\r\n\r\nJavaScript có các kiểu dữ liệu cơ bản như Number, String, Boolean, Array, Object, và Null.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet num = 10;\r\nlet str = \"Hello\";\r\nlet isTrue = true;\r\nlet arr = [1, 2, 3];\r\nlet obj = { name: \"John\", age: 30 };\r\nlet empty = null;\r\nToán Tử (Operators):\r\n\r\nCó các toán tử như +, -, *, /, %, ++, --, ==, ===, >, <, >=, <=, &&, ||, etc.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet result = 10 + 5; // Kết quả: 15\r\nlet isGreater = 10 > 5; // Kết quả: true\r\nBiểu Thức (Expressions) và Câu Lệnh (Statements):\r\n\r\nBiểu thức là một phần của mã có thể đánh giá được thành một giá trị.\r\nCâu lệnh là một phần của mã thực hiện một hành động nhất định.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet x = 5 * 10; // Biểu thức\r\nif (x > 50) { // Câu lệnh\r\n    console.log(\"X is greater than 50\");\r\n}\r\nIII. Bài Tập:\r\n\r\nKhai báo một biến name và gán giá trị của nó là tên của bạn.\r\nTạo một mảng numbers chứa các số từ 1 đến 5.\r\nTính tổng của 3 số đầu tiên trong mảng numbers và in ra kết quả.\r\nIV. Tổng Kết:\r\nTrong bài học này, chúng ta đã tìm hiểu về JavaScript và cú pháp cơ bản của nó bao gồm biến, kiểu dữ liệu, toán tử, biểu thức và câu lệnh. Hãy tiếp tục học và thực hành để trở thành một lập trình viên JavaScript giỏi.', 6, '2024-03-13 21:40:58', '2024-03-13 21:40:58'),
(13, 'Animation', 'https://www.youtube.com/watch?v=k3Pv3P8TE1s', 'Bài Học 1: Giới Thiệu JavaScript và Cú Pháp Cơ Bản\r\n\r\nI. Giới Thiệu về JavaScript:\r\n\r\nJavaScript là một ngôn ngữ lập trình thông dịch, phổ biến trên web.\r\nĐược sử dụng để thêm các tính năng tương tác vào trang web, như xử lý sự kiện, thay đổi nội dung và tương tác với người dùng.\r\nII. Cú Pháp Cơ Bản:\r\n\r\nBiến (Variables):\r\n\r\nSử dụng từ khóa var, let hoặc const để khai báo biến.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nvar age = 30;\r\nlet name = \"John\";\r\nconst PI = 3.14;\r\nKiểu Dữ Liệu (Data Types):\r\n\r\nJavaScript có các kiểu dữ liệu cơ bản như Number, String, Boolean, Array, Object, và Null.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet num = 10;\r\nlet str = \"Hello\";\r\nlet isTrue = true;\r\nlet arr = [1, 2, 3];\r\nlet obj = { name: \"John\", age: 30 };\r\nlet empty = null;\r\nToán Tử (Operators):\r\n\r\nCó các toán tử như +, -, *, /, %, ++, --, ==, ===, >, <, >=, <=, &&, ||, etc.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet result = 10 + 5; // Kết quả: 15\r\nlet isGreater = 10 > 5; // Kết quả: true\r\nBiểu Thức (Expressions) và Câu Lệnh (Statements):\r\n\r\nBiểu thức là một phần của mã có thể đánh giá được thành một giá trị.\r\nCâu lệnh là một phần của mã thực hiện một hành động nhất định.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet x = 5 * 10; // Biểu thức\r\nif (x > 50) { // Câu lệnh\r\n    console.log(\"X is greater than 50\");\r\n}\r\nIII. Bài Tập:\r\n\r\nKhai báo một biến name và gán giá trị của nó là tên của bạn.\r\nTạo một mảng numbers chứa các số từ 1 đến 5.\r\nTính tổng của 3 số đầu tiên trong mảng numbers và in ra kết quả.\r\nIV. Tổng Kết:\r\nTrong bài học này, chúng ta đã tìm hiểu về JavaScript và cú pháp cơ bản của nó bao gồm biến, kiểu dữ liệu, toán tử, biểu thức và câu lệnh. Hãy tiếp tục học và thực hành để trở thành một lập trình viên JavaScript giỏi.', 6, '2024-03-13 21:41:18', '2024-03-13 21:41:18'),
(14, 'Lập trình là gì', 'https://www.youtube.com/watch?v=k3Pv3P8TE1s', 'Bài Học 1: Giới Thiệu JavaScript và Cú Pháp Cơ Bản\r\n\r\nI. Giới Thiệu về JavaScript:\r\n\r\nJavaScript là một ngôn ngữ lập trình thông dịch, phổ biến trên web.\r\nĐược sử dụng để thêm các tính năng tương tác vào trang web, như xử lý sự kiện, thay đổi nội dung và tương tác với người dùng.\r\nII. Cú Pháp Cơ Bản:\r\n\r\nBiến (Variables):\r\n\r\nSử dụng từ khóa var, let hoặc const để khai báo biến.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nvar age = 30;\r\nlet name = \"John\";\r\nconst PI = 3.14;\r\nKiểu Dữ Liệu (Data Types):\r\n\r\nJavaScript có các kiểu dữ liệu cơ bản như Number, String, Boolean, Array, Object, và Null.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet num = 10;\r\nlet str = \"Hello\";\r\nlet isTrue = true;\r\nlet arr = [1, 2, 3];\r\nlet obj = { name: \"John\", age: 30 };\r\nlet empty = null;\r\nToán Tử (Operators):\r\n\r\nCó các toán tử như +, -, *, /, %, ++, --, ==, ===, >, <, >=, <=, &&, ||, etc.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet result = 10 + 5; // Kết quả: 15\r\nlet isGreater = 10 > 5; // Kết quả: true\r\nBiểu Thức (Expressions) và Câu Lệnh (Statements):\r\n\r\nBiểu thức là một phần của mã có thể đánh giá được thành một giá trị.\r\nCâu lệnh là một phần của mã thực hiện một hành động nhất định.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet x = 5 * 10; // Biểu thức\r\nif (x > 50) { // Câu lệnh\r\n    console.log(\"X is greater than 50\");\r\n}\r\nIII. Bài Tập:\r\n\r\nKhai báo một biến name và gán giá trị của nó là tên của bạn.\r\nTạo một mảng numbers chứa các số từ 1 đến 5.\r\nTính tổng của 3 số đầu tiên trong mảng numbers và in ra kết quả.\r\nIV. Tổng Kết:\r\nTrong bài học này, chúng ta đã tìm hiểu về JavaScript và cú pháp cơ bản của nó bao gồm biến, kiểu dữ liệu, toán tử, biểu thức và câu lệnh. Hãy tiếp tục học và thực hành để trở thành một lập trình viên JavaScript giỏi.', 7, '2024-03-13 21:41:32', '2024-03-13 21:41:32'),
(15, 'Các yếu tố để trở thành 1 lập trình viên giỏi', 'https://www.youtube.com/watch?v=k3Pv3P8TE1s', 'Bài Học 1: Giới Thiệu JavaScript và Cú Pháp Cơ Bản\r\n\r\nI. Giới Thiệu về JavaScript:\r\n\r\nJavaScript là một ngôn ngữ lập trình thông dịch, phổ biến trên web.\r\nĐược sử dụng để thêm các tính năng tương tác vào trang web, như xử lý sự kiện, thay đổi nội dung và tương tác với người dùng.\r\nII. Cú Pháp Cơ Bản:\r\n\r\nBiến (Variables):\r\n\r\nSử dụng từ khóa var, let hoặc const để khai báo biến.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nvar age = 30;\r\nlet name = \"John\";\r\nconst PI = 3.14;\r\nKiểu Dữ Liệu (Data Types):\r\n\r\nJavaScript có các kiểu dữ liệu cơ bản như Number, String, Boolean, Array, Object, và Null.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet num = 10;\r\nlet str = \"Hello\";\r\nlet isTrue = true;\r\nlet arr = [1, 2, 3];\r\nlet obj = { name: \"John\", age: 30 };\r\nlet empty = null;\r\nToán Tử (Operators):\r\n\r\nCó các toán tử như +, -, *, /, %, ++, --, ==, ===, >, <, >=, <=, &&, ||, etc.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet result = 10 + 5; // Kết quả: 15\r\nlet isGreater = 10 > 5; // Kết quả: true\r\nBiểu Thức (Expressions) và Câu Lệnh (Statements):\r\n\r\nBiểu thức là một phần của mã có thể đánh giá được thành một giá trị.\r\nCâu lệnh là một phần của mã thực hiện một hành động nhất định.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet x = 5 * 10; // Biểu thức\r\nif (x > 50) { // Câu lệnh\r\n    console.log(\"X is greater than 50\");\r\n}\r\nIII. Bài Tập:\r\n\r\nKhai báo một biến name và gán giá trị của nó là tên của bạn.\r\nTạo một mảng numbers chứa các số từ 1 đến 5.\r\nTính tổng của 3 số đầu tiên trong mảng numbers và in ra kết quả.\r\nIV. Tổng Kết:\r\nTrong bài học này, chúng ta đã tìm hiểu về JavaScript và cú pháp cơ bản của nó bao gồm biến, kiểu dữ liệu, toán tử, biểu thức và câu lệnh. Hãy tiếp tục học và thực hành để trở thành một lập trình viên JavaScript giỏi.', 7, '2024-03-13 21:41:55', '2024-03-13 21:41:55'),
(16, 'Ôn tập responsive', 'https://www.youtube.com/watch?v=k3Pv3P8TE1s', 'Bài Học 1: Giới Thiệu JavaScript và Cú Pháp Cơ Bản\r\n\r\nI. Giới Thiệu về JavaScript:\r\n\r\nJavaScript là một ngôn ngữ lập trình thông dịch, phổ biến trên web.\r\nĐược sử dụng để thêm các tính năng tương tác vào trang web, như xử lý sự kiện, thay đổi nội dung và tương tác với người dùng.\r\nII. Cú Pháp Cơ Bản:\r\n\r\nBiến (Variables):\r\n\r\nSử dụng từ khóa var, let hoặc const để khai báo biến.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nvar age = 30;\r\nlet name = \"John\";\r\nconst PI = 3.14;\r\nKiểu Dữ Liệu (Data Types):\r\n\r\nJavaScript có các kiểu dữ liệu cơ bản như Number, String, Boolean, Array, Object, và Null.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet num = 10;\r\nlet str = \"Hello\";\r\nlet isTrue = true;\r\nlet arr = [1, 2, 3];\r\nlet obj = { name: \"John\", age: 30 };\r\nlet empty = null;\r\nToán Tử (Operators):\r\n\r\nCó các toán tử như +, -, *, /, %, ++, --, ==, ===, >, <, >=, <=, &&, ||, etc.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet result = 10 + 5; // Kết quả: 15\r\nlet isGreater = 10 > 5; // Kết quả: true\r\nBiểu Thức (Expressions) và Câu Lệnh (Statements):\r\n\r\nBiểu thức là một phần của mã có thể đánh giá được thành một giá trị.\r\nCâu lệnh là một phần của mã thực hiện một hành động nhất định.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet x = 5 * 10; // Biểu thức\r\nif (x > 50) { // Câu lệnh\r\n    console.log(\"X is greater than 50\");\r\n}\r\nIII. Bài Tập:\r\n\r\nKhai báo một biến name và gán giá trị của nó là tên của bạn.\r\nTạo một mảng numbers chứa các số từ 1 đến 5.\r\nTính tổng của 3 số đầu tiên trong mảng numbers và in ra kết quả.\r\nIV. Tổng Kết:\r\nTrong bài học này, chúng ta đã tìm hiểu về JavaScript và cú pháp cơ bản của nó bao gồm biến, kiểu dữ liệu, toán tử, biểu thức và câu lệnh. Hãy tiếp tục học và thực hành để trở thành một lập trình viên JavaScript giỏi.', 9, '2024-03-13 21:42:25', '2024-03-13 21:42:25'),
(17, 'Lệnh cơ bản', 'https://www.youtube.com/watch?v=k3Pv3P8TE1s', 'Bài Học 1: Giới Thiệu JavaScript và Cú Pháp Cơ Bản\r\n\r\nI. Giới Thiệu về JavaScript:\r\n\r\nJavaScript là một ngôn ngữ lập trình thông dịch, phổ biến trên web.\r\nĐược sử dụng để thêm các tính năng tương tác vào trang web, như xử lý sự kiện, thay đổi nội dung và tương tác với người dùng.\r\nII. Cú Pháp Cơ Bản:\r\n\r\nBiến (Variables):\r\n\r\nSử dụng từ khóa var, let hoặc const để khai báo biến.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nvar age = 30;\r\nlet name = \"John\";\r\nconst PI = 3.14;\r\nKiểu Dữ Liệu (Data Types):\r\n\r\nJavaScript có các kiểu dữ liệu cơ bản như Number, String, Boolean, Array, Object, và Null.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet num = 10;\r\nlet str = \"Hello\";\r\nlet isTrue = true;\r\nlet arr = [1, 2, 3];\r\nlet obj = { name: \"John\", age: 30 };\r\nlet empty = null;\r\nToán Tử (Operators):\r\n\r\nCó các toán tử như +, -, *, /, %, ++, --, ==, ===, >, <, >=, <=, &&, ||, etc.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet result = 10 + 5; // Kết quả: 15\r\nlet isGreater = 10 > 5; // Kết quả: true\r\nBiểu Thức (Expressions) và Câu Lệnh (Statements):\r\n\r\nBiểu thức là một phần của mã có thể đánh giá được thành một giá trị.\r\nCâu lệnh là một phần của mã thực hiện một hành động nhất định.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet x = 5 * 10; // Biểu thức\r\nif (x > 50) { // Câu lệnh\r\n    console.log(\"X is greater than 50\");\r\n}\r\nIII. Bài Tập:\r\n\r\nKhai báo một biến name và gán giá trị của nó là tên của bạn.\r\nTạo một mảng numbers chứa các số từ 1 đến 5.\r\nTính tổng của 3 số đầu tiên trong mảng numbers và in ra kết quả.\r\nIV. Tổng Kết:\r\nTrong bài học này, chúng ta đã tìm hiểu về JavaScript và cú pháp cơ bản của nó bao gồm biến, kiểu dữ liệu, toán tử, biểu thức và câu lệnh. Hãy tiếp tục học và thực hành để trở thành một lập trình viên JavaScript giỏi.', 9, '2024-03-13 21:42:40', '2024-03-13 21:42:40'),
(18, 'Bắt Đầu với Javascript nâng cao (P1)', 'https://www.youtube.com/watch?v=k3Pv3P8TE1s', 'Bài Học 1: Giới Thiệu JavaScript và Cú Pháp Cơ Bản\r\n\r\nI. Giới Thiệu về JavaScript:\r\n\r\nJavaScript là một ngôn ngữ lập trình thông dịch, phổ biến trên web.\r\nĐược sử dụng để thêm các tính năng tương tác vào trang web, như xử lý sự kiện, thay đổi nội dung và tương tác với người dùng.\r\nII. Cú Pháp Cơ Bản:\r\n\r\nBiến (Variables):\r\n\r\nSử dụng từ khóa var, let hoặc const để khai báo biến.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nvar age = 30;\r\nlet name = \"John\";\r\nconst PI = 3.14;\r\nKiểu Dữ Liệu (Data Types):\r\n\r\nJavaScript có các kiểu dữ liệu cơ bản như Number, String, Boolean, Array, Object, và Null.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet num = 10;\r\nlet str = \"Hello\";\r\nlet isTrue = true;\r\nlet arr = [1, 2, 3];\r\nlet obj = { name: \"John\", age: 30 };\r\nlet empty = null;\r\nToán Tử (Operators):\r\n\r\nCó các toán tử như +, -, *, /, %, ++, --, ==, ===, >, <, >=, <=, &&, ||, etc.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet result = 10 + 5; // Kết quả: 15\r\nlet isGreater = 10 > 5; // Kết quả: true\r\nBiểu Thức (Expressions) và Câu Lệnh (Statements):\r\n\r\nBiểu thức là một phần của mã có thể đánh giá được thành một giá trị.\r\nCâu lệnh là một phần của mã thực hiện một hành động nhất định.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet x = 5 * 10; // Biểu thức\r\nif (x > 50) { // Câu lệnh\r\n    console.log(\"X is greater than 50\");\r\n}\r\nIII. Bài Tập:\r\n\r\nKhai báo một biến name và gán giá trị của nó là tên của bạn.\r\nTạo một mảng numbers chứa các số từ 1 đến 5.\r\nTính tổng của 3 số đầu tiên trong mảng numbers và in ra kết quả.\r\nIV. Tổng Kết:\r\nTrong bài học này, chúng ta đã tìm hiểu về JavaScript và cú pháp cơ bản của nó bao gồm biến, kiểu dữ liệu, toán tử, biểu thức và câu lệnh. Hãy tiếp tục học và thực hành để trở thành một lập trình viên JavaScript giỏi.', 10, '2024-03-13 21:42:52', '2024-03-13 21:42:52'),
(19, 'Bắt Đầu với Javascript nâng cao (P5)', 'https://www.youtube.com/watch?v=k3Pv3P8TE1s', 'Bài Học 1: Giới Thiệu JavaScript và Cú Pháp Cơ Bản\r\n\r\nI. Giới Thiệu về JavaScript:\r\n\r\nJavaScript là một ngôn ngữ lập trình thông dịch, phổ biến trên web.\r\nĐược sử dụng để thêm các tính năng tương tác vào trang web, như xử lý sự kiện, thay đổi nội dung và tương tác với người dùng.\r\nII. Cú Pháp Cơ Bản:\r\n\r\nBiến (Variables):\r\n\r\nSử dụng từ khóa var, let hoặc const để khai báo biến.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nvar age = 30;\r\nlet name = \"John\";\r\nconst PI = 3.14;\r\nKiểu Dữ Liệu (Data Types):\r\n\r\nJavaScript có các kiểu dữ liệu cơ bản như Number, String, Boolean, Array, Object, và Null.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet num = 10;\r\nlet str = \"Hello\";\r\nlet isTrue = true;\r\nlet arr = [1, 2, 3];\r\nlet obj = { name: \"John\", age: 30 };\r\nlet empty = null;\r\nToán Tử (Operators):\r\n\r\nCó các toán tử như +, -, *, /, %, ++, --, ==, ===, >, <, >=, <=, &&, ||, etc.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet result = 10 + 5; // Kết quả: 15\r\nlet isGreater = 10 > 5; // Kết quả: true\r\nBiểu Thức (Expressions) và Câu Lệnh (Statements):\r\n\r\nBiểu thức là một phần của mã có thể đánh giá được thành một giá trị.\r\nCâu lệnh là một phần của mã thực hiện một hành động nhất định.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet x = 5 * 10; // Biểu thức\r\nif (x > 50) { // Câu lệnh\r\n    console.log(\"X is greater than 50\");\r\n}\r\nIII. Bài Tập:\r\n\r\nKhai báo một biến name và gán giá trị của nó là tên của bạn.\r\nTạo một mảng numbers chứa các số từ 1 đến 5.\r\nTính tổng của 3 số đầu tiên trong mảng numbers và in ra kết quả.\r\nIV. Tổng Kết:\r\nTrong bài học này, chúng ta đã tìm hiểu về JavaScript và cú pháp cơ bản của nó bao gồm biến, kiểu dữ liệu, toán tử, biểu thức và câu lệnh. Hãy tiếp tục học và thực hành để trở thành một lập trình viên JavaScript giỏi.', 10, '2024-03-13 21:43:08', '2024-03-13 21:43:08'),
(20, 'Ôn tập js', 'https://www.youtube.com/watch?v=k3Pv3P8TE1s', 'Bài Học 1: Giới Thiệu JavaScript và Cú Pháp Cơ Bản\r\n\r\nI. Giới Thiệu về JavaScript:\r\n\r\nJavaScript là một ngôn ngữ lập trình thông dịch, phổ biến trên web.\r\nĐược sử dụng để thêm các tính năng tương tác vào trang web, như xử lý sự kiện, thay đổi nội dung và tương tác với người dùng.\r\nII. Cú Pháp Cơ Bản:\r\n\r\nBiến (Variables):\r\n\r\nSử dụng từ khóa var, let hoặc const để khai báo biến.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nvar age = 30;\r\nlet name = \"John\";\r\nconst PI = 3.14;\r\nKiểu Dữ Liệu (Data Types):\r\n\r\nJavaScript có các kiểu dữ liệu cơ bản như Number, String, Boolean, Array, Object, và Null.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet num = 10;\r\nlet str = \"Hello\";\r\nlet isTrue = true;\r\nlet arr = [1, 2, 3];\r\nlet obj = { name: \"John\", age: 30 };\r\nlet empty = null;\r\nToán Tử (Operators):\r\n\r\nCó các toán tử như +, -, *, /, %, ++, --, ==, ===, >, <, >=, <=, &&, ||, etc.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet result = 10 + 5; // Kết quả: 15\r\nlet isGreater = 10 > 5; // Kết quả: true\r\nBiểu Thức (Expressions) và Câu Lệnh (Statements):\r\n\r\nBiểu thức là một phần của mã có thể đánh giá được thành một giá trị.\r\nCâu lệnh là một phần của mã thực hiện một hành động nhất định.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet x = 5 * 10; // Biểu thức\r\nif (x > 50) { // Câu lệnh\r\n    console.log(\"X is greater than 50\");\r\n}\r\nIII. Bài Tập:\r\n\r\nKhai báo một biến name và gán giá trị của nó là tên của bạn.\r\nTạo một mảng numbers chứa các số từ 1 đến 5.\r\nTính tổng của 3 số đầu tiên trong mảng numbers và in ra kết quả.\r\nIV. Tổng Kết:\r\nTrong bài học này, chúng ta đã tìm hiểu về JavaScript và cú pháp cơ bản của nó bao gồm biến, kiểu dữ liệu, toán tử, biểu thức và câu lệnh. Hãy tiếp tục học và thực hành để trở thành một lập trình viên JavaScript giỏi.', 11, '2024-03-13 21:43:20', '2024-03-13 21:43:20'),
(21, 'Các thẻ tag', 'https://www.youtube.com/watch?v=k3Pv3P8TE1s', 'Bài Học 1: Giới Thiệu JavaScript và Cú Pháp Cơ Bản\r\n\r\nI. Giới Thiệu về JavaScript:\r\n\r\nJavaScript là một ngôn ngữ lập trình thông dịch, phổ biến trên web.\r\nĐược sử dụng để thêm các tính năng tương tác vào trang web, như xử lý sự kiện, thay đổi nội dung và tương tác với người dùng.\r\nII. Cú Pháp Cơ Bản:\r\n\r\nBiến (Variables):\r\n\r\nSử dụng từ khóa var, let hoặc const để khai báo biến.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nvar age = 30;\r\nlet name = \"John\";\r\nconst PI = 3.14;\r\nKiểu Dữ Liệu (Data Types):\r\n\r\nJavaScript có các kiểu dữ liệu cơ bản như Number, String, Boolean, Array, Object, và Null.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet num = 10;\r\nlet str = \"Hello\";\r\nlet isTrue = true;\r\nlet arr = [1, 2, 3];\r\nlet obj = { name: \"John\", age: 30 };\r\nlet empty = null;\r\nToán Tử (Operators):\r\n\r\nCó các toán tử như +, -, *, /, %, ++, --, ==, ===, >, <, >=, <=, &&, ||, etc.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet result = 10 + 5; // Kết quả: 15\r\nlet isGreater = 10 > 5; // Kết quả: true\r\nBiểu Thức (Expressions) và Câu Lệnh (Statements):\r\n\r\nBiểu thức là một phần của mã có thể đánh giá được thành một giá trị.\r\nCâu lệnh là một phần của mã thực hiện một hành động nhất định.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet x = 5 * 10; // Biểu thức\r\nif (x > 50) { // Câu lệnh\r\n    console.log(\"X is greater than 50\");\r\n}\r\nIII. Bài Tập:\r\n\r\nKhai báo một biến name và gán giá trị của nó là tên của bạn.\r\nTạo một mảng numbers chứa các số từ 1 đến 5.\r\nTính tổng của 3 số đầu tiên trong mảng numbers và in ra kết quả.\r\nIV. Tổng Kết:\r\nTrong bài học này, chúng ta đã tìm hiểu về JavaScript và cú pháp cơ bản của nó bao gồm biến, kiểu dữ liệu, toán tử, biểu thức và câu lệnh. Hãy tiếp tục học và thực hành để trở thành một lập trình viên JavaScript giỏi.', 11, '2024-03-13 21:43:38', '2024-03-13 21:43:38'),
(22, 'Ôn tập js', 'https://www.youtube.com/watch?v=k3Pv3P8TE1s', 'Bài Học 1: Giới Thiệu JavaScript và Cú Pháp Cơ Bản\r\n\r\nI. Giới Thiệu về JavaScript:\r\n\r\nJavaScript là một ngôn ngữ lập trình thông dịch, phổ biến trên web.\r\nĐược sử dụng để thêm các tính năng tương tác vào trang web, như xử lý sự kiện, thay đổi nội dung và tương tác với người dùng.\r\nII. Cú Pháp Cơ Bản:\r\n\r\nBiến (Variables):\r\n\r\nSử dụng từ khóa var, let hoặc const để khai báo biến.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nvar age = 30;\r\nlet name = \"John\";\r\nconst PI = 3.14;\r\nKiểu Dữ Liệu (Data Types):\r\n\r\nJavaScript có các kiểu dữ liệu cơ bản như Number, String, Boolean, Array, Object, và Null.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet num = 10;\r\nlet str = \"Hello\";\r\nlet isTrue = true;\r\nlet arr = [1, 2, 3];\r\nlet obj = { name: \"John\", age: 30 };\r\nlet empty = null;\r\nToán Tử (Operators):\r\n\r\nCó các toán tử như +, -, *, /, %, ++, --, ==, ===, >, <, >=, <=, &&, ||, etc.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet result = 10 + 5; // Kết quả: 15\r\nlet isGreater = 10 > 5; // Kết quả: true\r\nBiểu Thức (Expressions) và Câu Lệnh (Statements):\r\n\r\nBiểu thức là một phần của mã có thể đánh giá được thành một giá trị.\r\nCâu lệnh là một phần của mã thực hiện một hành động nhất định.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet x = 5 * 10; // Biểu thức\r\nif (x > 50) { // Câu lệnh\r\n    console.log(\"X is greater than 50\");\r\n}\r\nIII. Bài Tập:\r\n\r\nKhai báo một biến name và gán giá trị của nó là tên của bạn.\r\nTạo một mảng numbers chứa các số từ 1 đến 5.\r\nTính tổng của 3 số đầu tiên trong mảng numbers và in ra kết quả.\r\nIV. Tổng Kết:\r\nTrong bài học này, chúng ta đã tìm hiểu về JavaScript và cú pháp cơ bản của nó bao gồm biến, kiểu dữ liệu, toán tử, biểu thức và câu lệnh. Hãy tiếp tục học và thực hành để trở thành một lập trình viên JavaScript giỏi.', 12, '2024-03-13 21:43:54', '2024-03-13 21:43:54'),
(23, 'Comming soon', 'https://www.youtube.com/watch?v=k3Pv3P8TE1s', 'Bài Học 1: Giới Thiệu JavaScript và Cú Pháp Cơ Bản\r\n\r\nI. Giới Thiệu về JavaScript:\r\n\r\nJavaScript là một ngôn ngữ lập trình thông dịch, phổ biến trên web.\r\nĐược sử dụng để thêm các tính năng tương tác vào trang web, như xử lý sự kiện, thay đổi nội dung và tương tác với người dùng.\r\nII. Cú Pháp Cơ Bản:\r\n\r\nBiến (Variables):\r\n\r\nSử dụng từ khóa var, let hoặc const để khai báo biến.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nvar age = 30;\r\nlet name = \"John\";\r\nconst PI = 3.14;\r\nKiểu Dữ Liệu (Data Types):\r\n\r\nJavaScript có các kiểu dữ liệu cơ bản như Number, String, Boolean, Array, Object, và Null.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet num = 10;\r\nlet str = \"Hello\";\r\nlet isTrue = true;\r\nlet arr = [1, 2, 3];\r\nlet obj = { name: \"John\", age: 30 };\r\nlet empty = null;\r\nToán Tử (Operators):\r\n\r\nCó các toán tử như +, -, *, /, %, ++, --, ==, ===, >, <, >=, <=, &&, ||, etc.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet result = 10 + 5; // Kết quả: 15\r\nlet isGreater = 10 > 5; // Kết quả: true\r\nBiểu Thức (Expressions) và Câu Lệnh (Statements):\r\n\r\nBiểu thức là một phần của mã có thể đánh giá được thành một giá trị.\r\nCâu lệnh là một phần của mã thực hiện một hành động nhất định.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet x = 5 * 10; // Biểu thức\r\nif (x > 50) { // Câu lệnh\r\n    console.log(\"X is greater than 50\");\r\n}\r\nIII. Bài Tập:\r\n\r\nKhai báo một biến name và gán giá trị của nó là tên của bạn.\r\nTạo một mảng numbers chứa các số từ 1 đến 5.\r\nTính tổng của 3 số đầu tiên trong mảng numbers và in ra kết quả.\r\nIV. Tổng Kết:\r\nTrong bài học này, chúng ta đã tìm hiểu về JavaScript và cú pháp cơ bản của nó bao gồm biến, kiểu dữ liệu, toán tử, biểu thức và câu lệnh. Hãy tiếp tục học và thực hành để trở thành một lập trình viên JavaScript giỏi.', 12, '2024-03-13 21:44:12', '2024-03-13 21:44:12'),
(24, 'Ôn tập csdl', 'https://www.youtube.com/watch?v=k3Pv3P8TE1s', 'Bài Học 1: Giới Thiệu JavaScript và Cú Pháp Cơ Bản\r\n\r\nI. Giới Thiệu về JavaScript:\r\n\r\nJavaScript là một ngôn ngữ lập trình thông dịch, phổ biến trên web.\r\nĐược sử dụng để thêm các tính năng tương tác vào trang web, như xử lý sự kiện, thay đổi nội dung và tương tác với người dùng.\r\nII. Cú Pháp Cơ Bản:\r\n\r\nBiến (Variables):\r\n\r\nSử dụng từ khóa var, let hoặc const để khai báo biến.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nvar age = 30;\r\nlet name = \"John\";\r\nconst PI = 3.14;\r\nKiểu Dữ Liệu (Data Types):\r\n\r\nJavaScript có các kiểu dữ liệu cơ bản như Number, String, Boolean, Array, Object, và Null.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet num = 10;\r\nlet str = \"Hello\";\r\nlet isTrue = true;\r\nlet arr = [1, 2, 3];\r\nlet obj = { name: \"John\", age: 30 };\r\nlet empty = null;\r\nToán Tử (Operators):\r\n\r\nCó các toán tử như +, -, *, /, %, ++, --, ==, ===, >, <, >=, <=, &&, ||, etc.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet result = 10 + 5; // Kết quả: 15\r\nlet isGreater = 10 > 5; // Kết quả: true\r\nBiểu Thức (Expressions) và Câu Lệnh (Statements):\r\n\r\nBiểu thức là một phần của mã có thể đánh giá được thành một giá trị.\r\nCâu lệnh là một phần của mã thực hiện một hành động nhất định.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet x = 5 * 10; // Biểu thức\r\nif (x > 50) { // Câu lệnh\r\n    console.log(\"X is greater than 50\");\r\n}\r\nIII. Bài Tập:\r\n\r\nKhai báo một biến name và gán giá trị của nó là tên của bạn.\r\nTạo một mảng numbers chứa các số từ 1 đến 5.\r\nTính tổng của 3 số đầu tiên trong mảng numbers và in ra kết quả.\r\nIV. Tổng Kết:\r\nTrong bài học này, chúng ta đã tìm hiểu về JavaScript và cú pháp cơ bản của nó bao gồm biến, kiểu dữ liệu, toán tử, biểu thức và câu lệnh. Hãy tiếp tục học và thực hành để trở thành một lập trình viên JavaScript giỏi.', 13, '2024-03-13 21:44:26', '2024-03-13 21:44:26'),
(25, 'liên kết CSDL', 'https://www.youtube.com/watch?v=k3Pv3P8TE1s', 'Bài Học 1: Giới Thiệu JavaScript và Cú Pháp Cơ Bản\r\n\r\nI. Giới Thiệu về JavaScript:\r\n\r\nJavaScript là một ngôn ngữ lập trình thông dịch, phổ biến trên web.\r\nĐược sử dụng để thêm các tính năng tương tác vào trang web, như xử lý sự kiện, thay đổi nội dung và tương tác với người dùng.\r\nII. Cú Pháp Cơ Bản:\r\n\r\nBiến (Variables):\r\n\r\nSử dụng từ khóa var, let hoặc const để khai báo biến.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nvar age = 30;\r\nlet name = \"John\";\r\nconst PI = 3.14;\r\nKiểu Dữ Liệu (Data Types):\r\n\r\nJavaScript có các kiểu dữ liệu cơ bản như Number, String, Boolean, Array, Object, và Null.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet num = 10;\r\nlet str = \"Hello\";\r\nlet isTrue = true;\r\nlet arr = [1, 2, 3];\r\nlet obj = { name: \"John\", age: 30 };\r\nlet empty = null;\r\nToán Tử (Operators):\r\n\r\nCó các toán tử như +, -, *, /, %, ++, --, ==, ===, >, <, >=, <=, &&, ||, etc.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet result = 10 + 5; // Kết quả: 15\r\nlet isGreater = 10 > 5; // Kết quả: true\r\nBiểu Thức (Expressions) và Câu Lệnh (Statements):\r\n\r\nBiểu thức là một phần của mã có thể đánh giá được thành một giá trị.\r\nCâu lệnh là một phần của mã thực hiện một hành động nhất định.\r\nVí dụ:\r\njavascript\r\nCopy code\r\nlet x = 5 * 10; // Biểu thức\r\nif (x > 50) { // Câu lệnh\r\n    console.log(\"X is greater than 50\");\r\n}\r\nIII. Bài Tập:\r\n\r\nKhai báo một biến name và gán giá trị của nó là tên của bạn.\r\nTạo một mảng numbers chứa các số từ 1 đến 5.\r\nTính tổng của 3 số đầu tiên trong mảng numbers và in ra kết quả.\r\nIV. Tổng Kết:\r\nTrong bài học này, chúng ta đã tìm hiểu về JavaScript và cú pháp cơ bản của nó bao gồm biến, kiểu dữ liệu, toán tử, biểu thức và câu lệnh. Hãy tiếp tục học và thực hành để trở thành một lập trình viên JavaScript giỏi.', 13, '2024-03-13 21:44:38', '2024-03-13 21:44:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(24, '2014_10_12_100000_create_password_resets_table', 1),
(25, '2019_08_19_000000_create_failed_jobs_table', 1),
(26, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(27, '2024_03_04_073820_course_categories', 1),
(28, '2024_03_04_080001_courses', 1),
(29, '2024_03_04_080002_create_users_table', 1),
(30, '2024_03_12_040257_coursr_users', 2),
(31, '2024_03_12_041244_lessions', 3),
(32, '2024_03_12_041524_comments', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `ten_hocvien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anhdaidien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodienthoai` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodutaikhoan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1000000',
  `FK_ma_khoahoc` bigint UNSIGNED DEFAULT NULL,
  `quyen` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `ten_hocvien`, `anhdaidien`, `email`, `matkhau`, `sodienthoai`, `sodutaikhoan`, `FK_ma_khoahoc`, `quyen`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '', 'staff@gmail.com', '$2y$10$6bx4KEX4pE6d1XucSjSQNu1Q.wMZ6KWOze6C2p4J8B/OqTzQIi/Qu', '0927553664', '1000000', NULL, 2, '2024-03-11 21:25:26', '2024-03-11 21:25:26'),
(2, 'Super Admin', '', 'Admin@gmail.com', '$2y$10$12SIrwm1t0yVOvg7vlRWc.29gWM/EyxTdXTwZZf.6Lq9tSOi1bx.C', '0927553664', '1000000', NULL, 3, '2024-03-11 21:25:26', '2024-03-11 21:25:26'),
(3, 'phạm ngọc bảo an', NULL, 'Anpnb79@gmail.com', '$2y$10$zArK909y0nLuaRbjb54T8ODA38mYhUOWGnlxTMotBiY6qt87sYM0q', '0927553664', '4967000', 5, 1, '2024-03-11 21:45:50', '2024-03-13 22:49:35'),
(4, 'Hiếu NP', NULL, 'hieudn79@gmail.com', '$2y$10$mpWRVOL0CW7CHALuRhH0Xe7Cs6csNTg5iJ6Tztz/GdEwSPqQIDXWS', '0927553664', '1000000', NULL, 1, '2024-03-12 00:12:42', '2024-03-12 00:12:42'),
(5, 'Nguyễn Thiên', NULL, 'thiennt862004@gmail.com', '$2y$10$.b6JFlBFKKV7GnrBS0qmXuIked04QdMzoVnn5TTI4YQ9LgSTNAegq', '0927553664', '1000000', NULL, 1, '2024-03-13 22:59:45', '2024-03-13 22:59:45');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_fk_ma_khoahoc_foreign` (`FK_ma_khoahoc`),
  ADD KEY `comments_fk_ma_nguoidung_foreign` (`FK_ma_nguoidung`);

--
-- Chỉ mục cho bảng `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_fk_ma_danhmuc_foreign` (`FK_ma_danhmuc`);

--
-- Chỉ mục cho bảng `course_categories`
--
ALTER TABLE `course_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `course_users`
--
ALTER TABLE `course_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_users_fk_ma_khoahoc_foreign` (`FK_ma_khoahoc`),
  ADD KEY `course_users_fk_ma_nguoidung_foreign` (`FK_ma_nguoidung`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_fk_ma_khoahoc_foreign` (`FK_ma_khoahoc`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_fk_ma_khoahoc_foreign` (`FK_ma_khoahoc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `course_categories`
--
ALTER TABLE `course_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `course_users`
--
ALTER TABLE `course_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_fk_ma_khoahoc_foreign` FOREIGN KEY (`FK_ma_khoahoc`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `comments_fk_ma_nguoidung_foreign` FOREIGN KEY (`FK_ma_nguoidung`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_fk_ma_danhmuc_foreign` FOREIGN KEY (`FK_ma_danhmuc`) REFERENCES `course_categories` (`id`);

--
-- Các ràng buộc cho bảng `course_users`
--
ALTER TABLE `course_users`
  ADD CONSTRAINT `course_users_fk_ma_khoahoc_foreign` FOREIGN KEY (`FK_ma_khoahoc`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_users_fk_ma_nguoidung_foreign` FOREIGN KEY (`FK_ma_nguoidung`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_fk_ma_khoahoc_foreign` FOREIGN KEY (`FK_ma_khoahoc`) REFERENCES `courses` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_fk_ma_khoahoc_foreign` FOREIGN KEY (`FK_ma_khoahoc`) REFERENCES `courses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
