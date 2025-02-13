﻿/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
USE QLTuyenDungDB
GO
/*    Tai Khoan     */
TRUNCATE TABLE tbl_TaiKhoan

INSERT INTO tbl_TaiKhoan values('ad', 'ad')

SELECT * FROM tbl_TaiKhoan
GO

/*    Phòng ban     */
TRUNCATE TABLE tbl_PhongBan

INSERT INTO tbl_PhongBan values(N'Kế toán', 'A1', '0123456789')
INSERT INTO tbl_PhongBan values(N'Marketing', 'A2', '0123456789')
INSERT INTO tbl_PhongBan values(N'Nhân sự', 'A3', '0123456789')
INSERT INTO tbl_PhongBan values(N'Kế hoạch', 'B1', '0123456789')
INSERT INTO tbl_PhongBan values(N'Quản lý', 'B2', '0123456789')
INSERT INTO tbl_PhongBan values(N'Đối ngoại', 'B3', '0123456789')

SELECT * FROM tbl_PhongBan
GO

/*    Trình độ học vấn     */
TRUNCATE TABLE tbl_TrinhDoHocVan

INSERT INTO tbl_TrinhDoHocVan values(N'Cao đẳng', 1)
INSERT INTO tbl_TrinhDoHocVan values(N'Đại học', 1)
INSERT INTO tbl_TrinhDoHocVan values(N'Thạc sĩ', 1)
INSERT INTO tbl_TrinhDoHocVan values(N'Tiến sĩ', 1)
INSERT INTO tbl_TrinhDoHocVan values(N'Cao đẳng', 2)
INSERT INTO tbl_TrinhDoHocVan values(N'Đại học', 2)
INSERT INTO tbl_TrinhDoHocVan values(N'Thạc sĩ', 2)
INSERT INTO tbl_TrinhDoHocVan values(N'Tiến sĩ', 2)
INSERT INTO tbl_TrinhDoHocVan values(N'Cao đẳng', 3)
INSERT INTO tbl_TrinhDoHocVan values(N'Đại học', 3)
INSERT INTO tbl_TrinhDoHocVan values(N'Thạc sĩ', 3)
INSERT INTO tbl_TrinhDoHocVan values(N'Tiến sĩ', 3)

SELECT * FROM tbl_TrinhDoHocVan
GO

/*    Chức vụ     */
TRUNCATE TABLE tbl_ChucVu

INSERT INTO tbl_ChucVu values(N'Nhân viên bộ phận phát triển kinh doanh', N'Bộ phận phát triển kinh doanh là bộ phận có nhiệm vụ làm cầu nối giữa khách hàng với sản phẩm, dịch vụ của doanh nghiệp. Nhân sự của bộ phận này cần phải thuyết phục, đàm phán với khách hàng, đối tác để họ trở thành người sử dụng sản phẩm, dịch vụ của doanh nghiệp mình.', N'Đối với một doanh nghiệp, bộ phận phát triển kinh doanh được coi là nòng cốt của công ty. Đây là bộ phân có khả năng đem về những khoản lợi nhuận để duy trì, nuôi dưỡng hệ thống doanh nghiệp. Bởi vậy, bộ phận này luôn giành được nhiều ưu ái nhất nhưng đòi hỏi nhân sự cũng phải là những người có thực tài nhất.')
INSERT INTO tbl_ChucVu values(N'Nhân viên bộ phận kỹ thuật sản xuất', N'Bộ phận kỹ thuật sản xuất là nơi xuất xưởng, cung cấp các sản phẩm vật chất hay dịch vụ mô hình cho bộ phận phát triển kinh doanh. Nếu không có bộ phận này, bộ phận phát triển kinh doanh cũng coi như không có vì sẽ không có sản phẩm để bán cho khách hàng. Một doanh nghiệp nếu sở hữu một đội ngũ kỹ thuật chuyên nghiệp, giàu kinh nghiệm và nhạy bén với thị trường thì coi như đã nắm chìa khóa thành công trong tay.', N'- Tổ chức thiết kế, triển khai sản xuất sản phẩm, kiểm định, kiểm soát chất lượng sản phẩm, tiến hành nghiệm thu sản phẩm.')
INSERT INTO tbl_ChucVu values(N'Nhân viên kế toán - kiểm toán', N'Kế toán là bộ phận có nhiệm vụ xác định, ghi chép, thu thập và tổng hợp các thông tin kinh tế, tạo báo cáo tài chính để trình lên ban lãnh đạo hoặc những người có thẩm quyền để đưa ra các quyết định về kinh tế - xã hội trong doanh nghiệp và đánh giá hiệu quả kinh doanh.', N'Tùy từng loại hình của công ty mà có những vị trí kế toán và kiểm toán nhất định. Chẳng hạn như những công ty chuyên làm bên lĩnh vực sản xuất thì những vị trí như kế toán kho, ')
INSERT INTO tbl_ChucVu values(N'Nhân viên hành chính văn phòng', N'Hành chính văn phòng hay còn gọi là bộ phận quản trị nhân sự. Quản trị nhân sự là bộ phận phụ trách công tác quản lý người lao động trong doanh nghiệp, đảm nhận việc tuyển dụng, đào tạo, đánh giá, khen thưởng người lao động. Ngoài ra, bộ phận hành chính văn phòng còn cần phải giám sát, theo dõi lãnh đạo và văn hóa doanh nghiệp đảm bảo phù hợp với quy định pháp luật về lao động và việc làm.', N'Quản trị nhân sự giúp cho doanh nghiệp tìm kiếm, phát triển và duy trì lực lượng lao động, đảm bảo chất lượng người lao động. Đây là vị trí rất quan trọng của doanh nghiệp vì nhân sự ở đây phụ trách về con người – yếu tố cốt lõi để doanh nghiệp có thể vận hành và hoạt động hiệu quả. Do đó nếu bạn đang có nhu cầu ')
INSERT INTO tbl_ChucVu values(N'Nhân viên kiểm soát chất lượng, an toàn, quản lý môi trường', N'Kiểm soát chất lượng, an toàn, quản lý môi trường là bộ phận có nhiệm vụ đảm bảo các sản phẩm doanh nghiệp làm ra không mắc lỗi, đảm bảo một môi trường làm việc an toàn, lành mạnh, trong sạch.', N'Đối với các doanh nghiệp sản xuất thực phẩm thì bộ phận này đặc biệt quan trọng. Họ sẽ là những người chịu trách nhiệm về việc tuân thủ các quy tắc của OSHA (Occupational Safety and Health Administration - Cơ quan quản lý an toàn và sức khỏe nghề nghiệp), tuân thủ các tiêu chuẩn, quy chuẩn, giám sát chất lượng không khí và lượng nước, chất lượng sản phẩm, đào tạo nhân viên trong từng lĩnh vực và thống kê báo cáo hàng tháng, hàng quý, hàng năm cho Nhà nước.')
INSERT INTO tbl_ChucVu values(N'Nhân viên Logistics', N'Logistic là lĩnh vực ra đời cùng xu hướng toàn cầu hóa và nhu cầu vận chuyển, lưu thông hàng hóa trên toàn thế giới ngày một gia tăng. Logistic là bộ phận chịu trách nhiệm về chuỗi cung ứng hàng hóa bao gồm các hoạt động lưu trữ, vận chuyển và các hoạt động liên quan.', N'Đối với các doanh nghiệp hoạt động trong lĩnh vực kho vận thì đây là bộ phận cơ bản, chịu trách nhiệm đóng gói, xử lý quy trình vận chuyển giao hàng, tiếp nhận vật liệu nhập và lưu kho thành phẩm, thống kê hàng tồn. Một số bộ phận khác cũng có thể kiêm nhiệm luôn chức vụ của một nhân viên logistics như nhân viên hành chính, nhân viên kế toán – kiểm toán tuy nhiên xét về mức độ chuyên nghiệp thì vẫn cần đến một nhân viên logistics cộm cán. Đó sẽ là người tính toán quy trình sắp xếp hàng hóa xuất, nhập sao cho nhanh chóng, thuận tiện nhất nhưng vẫn đảm bảo chất lượng sản phẩm.')

SELECT * FROM tbl_ChucVu
GO

/*    Chuyên môn     */
TRUNCATE TABLE tbl_ChuyenMon

INSERT INTO tbl_ChuyenMon values(N'Công nghệ thông tin')
INSERT INTO tbl_ChuyenMon values(N'Hệ thống thông tin')
INSERT INTO tbl_ChuyenMon values(N'Kỹ thuật công nghệ')

SELECT * FROM tbl_ChuyenMon
GO
