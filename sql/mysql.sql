-- phpMyAdmin SQL Dump
-- version 3.3.10.4
-- http://www.phpmyadmin.net
--
-- 호스트: localhost
-- 처리한 시간: 18-06-25 10:23 
-- 서버 버전: 5.5.23
-- PHP 버전: 5.2.14

/* SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO"; */


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 데이터베이스: `dbpagora`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_apms_cache`
--

CREATE TABLE g5_apms_cache (
  [c_id] int NOT NULL IDENTITY,
  [c_name] varchar(255) NOT NULL,
  [c_text] varchar(max) NOT NULL,
  [c_datetime] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY ([c_id]),
  CONSTRAINT [c_name] UNIQUE  ([c_name])
)   ;

--
-- 테이블의 덤프 데이터 `g5_apms_cache`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_apms_data`
--

CREATE TABLE g5_apms_data (
  [id] int NOT NULL IDENTITY,
  [type] smallint NOT NULL DEFAULT '0',
  [data_q] varchar(255) NOT NULL DEFAULT '',
  [data_1] varchar(255) NOT NULL DEFAULT '',
  [data_2] varchar(255) NOT NULL DEFAULT '',
  [data_3] varchar(255) NOT NULL DEFAULT '',
  [data_4] varchar(255) NOT NULL DEFAULT '',
  [data_5] varchar(255) NOT NULL DEFAULT '',
  [data_6] varchar(255) NOT NULL DEFAULT '',
  [data_7] varchar(255) NOT NULL DEFAULT '',
  [data_8] varchar(255) NOT NULL DEFAULT '',
  [data_9] varchar(255) NOT NULL DEFAULT '',
  [data_10] varchar(255) NOT NULL DEFAULT '',
  [data_set] varchar(max) NOT NULL,
  PRIMARY KEY ([id])
)    ;

--
-- 테이블의 덤프 데이터 `g5_apms_data`
--
set IDENTITY_INSERT g5_apms_data ON
INSERT INTO g5_apms_data ([id], [type], [data_q], [data_1], [data_2], [data_3], [data_4], [data_5], [data_6], [data_7], [data_8], [data_9], [data_10], [data_set]) VALUES
(1, 11, '', 'Basic', 'Basic', '', '', '', '', '', '', '', '', 'a:17:{s:5:"thema";s:5:"Basic";s:6:"layout";s:0:"";s:2:"pc";s:0:"";s:4:"size";s:0:"";s:10:"background";s:0:"";s:7:"bgcolor";s:0:"";s:2:"bg";s:6:"center";s:3:"nav";s:4:"both";s:4:"subv";s:5:"slide";s:4:"subh";s:0:"";s:4:"subw";s:0:"";s:2:"mh";s:0:"";s:2:"ms";s:0:"";s:4:"allm";s:0:"";s:5:"mfile";s:10:"basic-main";s:4:"page";s:1:"9";s:5:"sfile";s:10:"basic-side";}'),
(2, 13, '', 'Basic', 'Basic', '', '', '', '', '', '', '', '', 'a:17:{s:5:"thema";s:5:"Basic";s:6:"layout";s:0:"";s:2:"pc";s:0:"";s:4:"size";s:0:"";s:10:"background";s:0:"";s:7:"bgcolor";s:0:"";s:2:"bg";s:6:"center";s:3:"nav";s:4:"both";s:4:"subv";s:5:"slide";s:4:"subh";s:0:"";s:4:"subw";s:0:"";s:2:"mh";s:0:"";s:2:"ms";s:0:"";s:4:"allm";s:0:"";s:5:"mfile";s:10:"basic-main";s:4:"page";s:1:"9";s:5:"sfile";s:10:"basic-side";}');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_apms_event`
--

CREATE TABLE g5_apms_event (
  [ev_id] int NOT NULL IDENTITY,
  [bo_table] varchar(20) NOT NULL DEFAULT '',
  [wr_id] int NOT NULL DEFAULT '0',
  [mb_id] varchar(255) NOT NULL DEFAULT '',
  [ev_point] int NOT NULL DEFAULT '0',
  [ev_win] smallint NOT NULL DEFAULT '0',
  [ev_confirm] smallint NOT NULL DEFAULT '0',
  [ev_datetime] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY ([ev_id])
)   ;
 
 CREATE INDEX [mb_id] ON g5_apms_event ([mb_id]);

--
-- 테이블의 덤프 데이터 `g5_apms_event`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_apms_like`
--

CREATE TABLE g5_apms_like (
  [id] int NOT NULL IDENTITY,
  [mb_id] varchar(255) NOT NULL DEFAULT '',
  [to_id] varchar(255) NOT NULL DEFAULT '',
  [flag] varchar(20) NOT NULL DEFAULT '',
  [regdate] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY ([id])
)   ;

--
-- 테이블의 덤프 데이터 `g5_apms_like`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_apms_page`
--

CREATE TABLE g5_apms_page (
  [id] int NOT NULL IDENTITY,
  [gr_id] varchar(20) NOT NULL DEFAULT '',
  [co_id] varchar(20) NOT NULL DEFAULT '',
  [html_id] varchar(255) NOT NULL DEFAULT '',
  [bo_subject] varchar(255) NOT NULL DEFAULT '',
  [bo_mobile_subject] varchar(255) NOT NULL DEFAULT '',
  [bo_device] VARCHAR(10) NOT NULL CHECK ([bo_device] IN('both', 'pc', 'mobile')) DEFAULT 'both',
  [as_html] INT NOT NULL DEFAULT '1',
  [as_file] varchar(255) NOT NULL DEFAULT '',
  [as_title] varchar(255) NOT NULL DEFAULT '',
  [as_desc] varchar(255) NOT NULL DEFAULT '',
  [as_icon] varchar(255) NOT NULL DEFAULT '',
  [as_mobile_icon] varchar(255) NOT NULL DEFAULT '',
  [as_link] varchar(255) NOT NULL DEFAULT '',
  [as_target] varchar(255) NOT NULL DEFAULT '',
  [as_head] varchar(255) NOT NULL DEFAULT '',
  [as_hcolor] varchar(255) NOT NULL DEFAULT '',
  [as_skin] varchar(255) NOT NULL DEFAULT '',
  [as_line] varchar(255) NOT NULL DEFAULT '',
  [as_sp] INT NOT NULL DEFAULT '0',
  [as_show] INT NOT NULL DEFAULT '0',
  [as_order] INT NOT NULL DEFAULT '0',
  [as_menu] INT NOT NULL DEFAULT '0',
  [as_menu_show] INT NOT NULL DEFAULT '0',
  [as_grade] INT NOT NULL DEFAULT '0',
  [as_equal] INT NOT NULL DEFAULT '0',
  [as_wide] INT NOT NULL DEFAULT '0',
  [as_partner] INT NOT NULL DEFAULT '0',
  [as_min] INT NOT NULL DEFAULT '0',
  [as_max] INT NOT NULL DEFAULT '0',
  [as_code] INT NOT NULL DEFAULT '0',
  [as_content] text NOT NULL,
  [as_mobile_content] text NOT NULL,
  PRIMARY KEY ([id])
) --ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 테이블의 덤프 데이터 `g5_apms_page`
--
set IDENTITY_INSERT g5_apms_data OFF
set IDENTITY_INSERT g5_apms_page ON
INSERT INTO g5_apms_page ([id], [gr_id], [co_id], [html_id], [bo_subject], [bo_mobile_subject], [bo_device], [as_html], [as_file], [as_title], [as_desc], [as_icon], [as_mobile_icon], [as_link], [as_target], [as_head], [as_hcolor], [as_skin], [as_line], [as_sp], [as_show], [as_order], [as_menu], [as_menu_show], [as_grade], [as_equal], [as_wide], [as_partner], [as_min], [as_max], [as_code], [as_content], [as_mobile_content]) VALUES
(1, '', '', 'login', '로그인', '', 'both', 0, 'bbs/login.php', '{아이콘:user} Login', '회원 로그인', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(2, '', '', 'reg', '회원가입', '', 'both', 0, 'bbs/register.php', '{아이콘:sign-in} Register', '회원가입안내', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(3, '', '', 'regform', '가입양식', '', 'both', 0, '', '{아이콘:file-text} Register Form', '회원가입 신청서 작성', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(4, '', '', 'regresult', '가입완료', '', 'both', 0, '', '{아이콘:leaf} Congratulations!', '회원가입을 축하드립니다.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(5, '', '', 'regmail', '메일변경', '', 'both', 0, '', '{아이콘:envelope-o} E-mail Certify', '메일인증 메일주소 변경', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(6, '', '', 'confirm', '회원확인', '', 'both', 0, '', '{아이콘:check-circle} Confirm', '회원 비밀번호 확인', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(7, '', '', 'password', '비밀번호', '', 'both', 0, '', '{아이콘:unlock-o} Password', '비밀번호 확인', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(8, '', '', 'faq', 'FAQ', '', 'both', 0, 'bbs/faq.php', '{아이콘:exclamation-circle} FAQ', '자주하는 질문', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(9, '', '', 'secret', '1:1 문의', '', 'both', 0, 'bbs/qalist.php', '{아이콘:exclamation-circle} Secret', '1:1 문의', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(10, '', '', 'search', '게시물검색', '', 'both', 0, 'bbs/search.php', '{아이콘:search} Post Search', '포스트 검색', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(11, '', '', 'new', '새글모음', '', 'both', 0, 'bbs/new.php', '{아이콘:refresh} New Post', '새글모음', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(12, '', '', 'connect', '현재접속자', '', 'both', 0, 'bbs/current_connect.php', '{아이콘:link} Connect', '현재접속자', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(13, '', '', 'tag', '태그박스', '', 'both', 0, 'bbs/tag.php', '{아이콘:tags} Tag Box', '태그박스', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(14, '', '', 'mypage', '마이페이지', '', 'both', 0, 'bbs/mypage.php', '{아이콘:user} My Page', '마이페이지', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(15, '', '', 'intro', '사이트 소개', '', 'both', 1, 'intro.php', '{아이콘:leaf} Introduction', '사이트 소개', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(16, '', '', 'provision', '이용약관', '', 'both', 1, 'provision.php', '{아이콘:check-circle} Provision', '사이트 이용약관', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(17, '', '', 'privacy', '개인정보처리방침', '', 'both', 1, 'privacy.php', '{아이콘:plus-circle} Privacy', '사이트 개인정보처리방침', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(18, '', '', 'noemail', '이메일 무단수집 거부', '', 'both', 1, 'noemail.php', '{아이콘:ban} Rejection of E-mail Collection', '이메일 무단수집 거부', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(19, '', '', 'disclaimer', '책임의 한계와 법적고지', '', 'both', 1, 'disclaimer.php', '{아이콘:minus-circle} Lines of Responsibility', '책임의 한계와 법적고지', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(20, '', '', 'guide', '이용안내', '', 'both', 1, 'guide.php', '{아이콘:info-circle} User Guide', '사이트 이용안내', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_apms_playlist`
--

CREATE TABLE g5_apms_playlist (
  [pl_id] int NOT NULL IDENTITY,
  [bo_table] varchar(20) NOT NULL DEFAULT '',
  [wr_id] int NOT NULL DEFAULT '0',
  [mb_id] varchar(255) NOT NULL DEFAULT '',
  [pl_order] int NOT NULL DEFAULT '0',
  [pl_flag] smallint NOT NULL DEFAULT '0',
  [pl_datetime] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY ([pl_id])
)   ;

--
-- 테이블의 덤프 데이터 `g5_apms_playlist`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_apms_poll`
--

CREATE TABLE g5_apms_poll (
  [po_id] int NOT NULL IDENTITY,
  [bo_table] varchar(20) NOT NULL DEFAULT '',
  [wr_id] int NOT NULL DEFAULT '0',
  [po_subject] varchar(255) NOT NULL DEFAULT '',
  [po_poll1] varchar(255) NOT NULL DEFAULT '',
  [po_poll2] varchar(255) NOT NULL DEFAULT '',
  [po_poll3] varchar(255) NOT NULL DEFAULT '',
  [po_poll4] varchar(255) NOT NULL DEFAULT '',
  [po_poll5] varchar(255) NOT NULL DEFAULT '',
  [po_poll6] varchar(255) NOT NULL DEFAULT '',
  [po_poll7] varchar(255) NOT NULL DEFAULT '',
  [po_poll8] varchar(255) NOT NULL DEFAULT '',
  [po_poll9] varchar(255) NOT NULL DEFAULT '',
  [po_score] int NOT NULL DEFAULT '0',
  [po_cnt] int NOT NULL DEFAULT '0',
  [po_cnt1] int NOT NULL DEFAULT '0',
  [po_cnt2] int NOT NULL DEFAULT '0',
  [po_cnt3] int NOT NULL DEFAULT '0',
  [po_cnt4] int NOT NULL DEFAULT '0',
  [po_cnt5] int NOT NULL DEFAULT '0',
  [po_cnt6] int NOT NULL DEFAULT '0',
  [po_cnt7] int NOT NULL DEFAULT '0',
  [po_cnt8] int NOT NULL DEFAULT '0',
  [po_cnt9] int NOT NULL DEFAULT '0',
  [po_use] smallint NOT NULL DEFAULT '0',
  [po_type] smallint NOT NULL DEFAULT '0',
  [po_ans] smallint NOT NULL DEFAULT '0',
  [po_end] smallint NOT NULL DEFAULT '0',
  [po_level] smallint NOT NULL DEFAULT '0',
  [po_join] int NOT NULL DEFAULT '0',
  [po_point] int NOT NULL DEFAULT '0',
  [po_datetime] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  [po_endtime] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  [po_ips] varchar(max) NOT NULL,
  [mb_ids] varchar(max) NOT NULL,
  [po_content] varchar(max) NOT NULL,
  PRIMARY KEY ([po_id])
)   ;

--
-- 테이블의 덤프 데이터 `g5_apms_poll`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_apms_response`
--

CREATE TABLE g5_apms_response (
  [id] int NOT NULL IDENTITY,
  [it_id] varchar(20) NOT NULL DEFAULT '',
  [bo_table] varchar(20) NOT NULL DEFAULT '',
  [wr_id] int NOT NULL DEFAULT '0',
  [co_id] int NOT NULL DEFAULT '0',
  [subject] varchar(255) NOT NULL DEFAULT '',
  [mb_id] varchar(255) NOT NULL DEFAULT '',
  [my_id] varchar(255) NOT NULL DEFAULT '',
  [my_name] varchar(255) NOT NULL DEFAULT '',
  [reply_cnt] int NOT NULL DEFAULT '0',
  [comment_cnt] int NOT NULL DEFAULT '0',
  [comment_reply_cnt] int NOT NULL DEFAULT '0',
  [good_cnt] int NOT NULL DEFAULT '0',
  [nogood_cnt] int NOT NULL DEFAULT '0',
  [use_cnt] int NOT NULL DEFAULT '0',
  [qa_cnt] int NOT NULL DEFAULT '0',
  [type] smallint NOT NULL DEFAULT '0',
  [confirm] smallint NOT NULL DEFAULT '0',
  [regdate] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY ([id])
)   ;
 
 CREATE INDEX [mb_id] ON g5_apms_response ([mb_id]);

--
-- 테이블의 덤프 데이터 `g5_apms_response`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_apms_shingo`
--

CREATE TABLE g5_apms_shingo (
  [id] int NOT NULL IDENTITY,
  [bo_table] varchar(20) NOT NULL DEFAULT '',
  [wr_id] int NOT NULL DEFAULT '0',
  [wr_parent] int NOT NULL DEFAULT '0',
  [mb_id] varchar(255) NOT NULL DEFAULT '',
  [flag] smallint NOT NULL DEFAULT '0',
  [datetime] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  [ip] varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY ([id]),
  CONSTRAINT [fkey1] UNIQUE  ([bo_table],[wr_id],[mb_id])
)   ;

--
-- 테이블의 덤프 데이터 `g5_apms_shingo`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_apms_tag`
--

CREATE TABLE g5_apms_tag (
  [id] int NOT NULL IDENTITY,
  [type] smallint NOT NULL DEFAULT '0',
  [idx] varchar(10) NOT NULL DEFAULT '',
  [tag] varchar(255) NOT NULL DEFAULT '',
  [cnt] int NOT NULL DEFAULT '0',
  [desc] varchar(max) NOT NULL,
  [regdate] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  [lastdate] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY ([id])
)   ;
 
 CREATE INDEX [tag] ON g5_apms_tag ([tag],[lastdate]);

--
-- 테이블의 덤프 데이터 `g5_apms_tag`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_apms_tag_log`
--

CREATE TABLE g5_apms_tag_log (
  [id] int NOT NULL IDENTITY,
  [it_id] varchar(20) NOT NULL DEFAULT '',
  [bo_table] varchar(20) NOT NULL DEFAULT '',
  [wr_id] int NOT NULL DEFAULT '0',
  [tag_id] int NOT NULL DEFAULT '0',
  [tag] varchar(255) NOT NULL DEFAULT '',
  [mb_id] varchar(255) NOT NULL DEFAULT '',
  [regdate] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  [it_time] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY ([id])
)   ;

--
-- 테이블의 덤프 데이터 `g5_apms_tag_log`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_apms_xp`
--

CREATE TABLE g5_apms_xp (
  [xp_now] smallint NOT NULL DEFAULT '0',
  [xp_point] int NOT NULL DEFAULT '1000',
  [xp_rate] decimal(9,3) NOT NULL DEFAULT '0.100',
  [xp_max] int NOT NULL DEFAULT '99',
  [xp_icon] varchar(20) NOT NULL DEFAULT 'txt',
  [xp_icon_skin] varchar(255) NOT NULL DEFAULT 'zb4',
  [xp_icon_css] varchar(255) NOT NULL DEFAULT 'basic',
  [xp_icon_admin] varchar(255) NOT NULL DEFAULT 'M',
  [xp_icon_guest] varchar(255) NOT NULL DEFAULT 'G',
  [xp_icon_special] varchar(255) NOT NULL DEFAULT 'S',
  [xp_special] varchar(255) NOT NULL DEFAULT '',
  [xp_except] varchar(255) NOT NULL DEFAULT '',
  [xp_designer] varchar(255) NOT NULL DEFAULT '',
  [xp_manager] varchar(255) NOT NULL DEFAULT '',
  [xp_photo] int NOT NULL DEFAULT '80',
  [xp_photo_url] varchar(255) NOT NULL DEFAULT '',
  [xp_grade1] varchar(255) NOT NULL DEFAULT '비회원',
  [xp_grade2] varchar(255) NOT NULL DEFAULT '실버',
  [xp_grade3] varchar(255) NOT NULL DEFAULT '골드',
  [xp_grade4] varchar(255) NOT NULL DEFAULT '로열',
  [xp_grade5] varchar(255) NOT NULL DEFAULT '프렌드',
  [xp_grade6] varchar(255) NOT NULL DEFAULT '패밀리',
  [xp_grade7] varchar(255) NOT NULL DEFAULT '스페셜',
  [xp_grade8] varchar(255) NOT NULL DEFAULT '운영자',
  [xp_grade9] varchar(255) NOT NULL DEFAULT '관리자',
  [xp_grade10] varchar(255) NOT NULL DEFAULT '최고관리자',
  [xp_auto1] smallint NOT NULL DEFAULT '0',
  [xp_auto2] smallint NOT NULL DEFAULT '0',
  [xp_auto3] smallint NOT NULL DEFAULT '0',
  [xp_auto4] smallint NOT NULL DEFAULT '0',
  [xp_auto5] smallint NOT NULL DEFAULT '0',
  [xp_auto6] smallint NOT NULL DEFAULT '0',
  [xp_auto7] smallint NOT NULL DEFAULT '0',
  [xp_from] smallint NOT NULL DEFAULT '0',
  [xp_to] smallint NOT NULL DEFAULT '0',
  [exp_point] smallint NOT NULL DEFAULT '0',
  [exp_login] smallint NOT NULL DEFAULT '1',
  [exp_write] smallint NOT NULL DEFAULT '1',
  [exp_comment] smallint NOT NULL DEFAULT '1',
  [exp_read] smallint NOT NULL DEFAULT '0',
  [exp_good] smallint NOT NULL DEFAULT '0',
  [exp_nogood] smallint NOT NULL DEFAULT '0',
  [exp_chulsuk] smallint NOT NULL DEFAULT '0',
  [exp_delivery] smallint NOT NULL DEFAULT '1',
  [item_cnt] smallint NOT NULL DEFAULT '0',
  [https_url] smallint NOT NULL DEFAULT '0',
  [editor_img] smallint NOT NULL DEFAULT '1',
  [comment_limit] int NOT NULL DEFAULT '0',
  [lucky_point] int NOT NULL DEFAULT '50',
  [lucky_dice] smallint NOT NULL DEFAULT '10',
  [lucky_msg] varchar(max) NOT NULL,
  [auto_size] varchar(255) NOT NULL DEFAULT '800px',
  [jwplayer_key] varchar(255) NOT NULL DEFAULT '',
  [facebook_token] varchar(255) NOT NULL DEFAULT '',
  [google_map_key] varchar(255) NOT NULL DEFAULT '',
  [seo_img] varchar(255) NOT NULL DEFAULT '',
  [seo_key] varchar(max) NOT NULL,
  [seo_desc] varchar(max) NOT NULL
) ;

--
-- 테이블의 덤프 데이터 `g5_apms_xp`
--
set IDENTITY_INSERT g5_apms_page OFF
--set IDENTITY_INSERT g5_apms_xp ON
INSERT INTO g5_apms_xp ([xp_now], [xp_point], [xp_rate], [xp_max], [xp_icon], [xp_icon_skin], [xp_icon_css], [xp_icon_admin], [xp_icon_guest], [xp_icon_special], [xp_special], [xp_except], [xp_designer], [xp_manager], [xp_photo], [xp_photo_url], [xp_grade1], [xp_grade2], [xp_grade3], [xp_grade4], [xp_grade5], [xp_grade6], [xp_grade7], [xp_grade8], [xp_grade9], [xp_grade10], [xp_auto1], [xp_auto2], [xp_auto3], [xp_auto4], [xp_auto5], [xp_auto6], [xp_auto7], [xp_from], [xp_to], [exp_point], [exp_login], [exp_write], [exp_comment], [exp_read], [exp_good], [exp_nogood], [exp_chulsuk], [exp_delivery], [item_cnt], [https_url], [editor_img], [comment_limit], [lucky_point], [lucky_dice], [lucky_msg], [auto_size], [jwplayer_key], [facebook_token], [google_map_key], [seo_img], [seo_key], [seo_desc]) VALUES
(0, 1000, 0.100, 99, 'txt', 'zb4', 'basic', 'M', 'G', 'S', '', '', '', '', 80, '', '비회원', '실버', '골드', '로열', '프렌드', '패밀리', '스페셜', '운영자', '관리자', '최고관리자', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 50, 10, '', '800px', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_auth`
--

CREATE TABLE g5_auth (
  [mb_id] varchar(20) NOT NULL DEFAULT '',
  [au_menu] varchar(20) NOT NULL DEFAULT '',
  [au_auth] VARCHAR(10) NOT NULL CHECK ([au_auth] IN('r','w','d')) DEFAULT '',
  PRIMARY KEY ([mb_id],[au_menu])
) --ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_auth`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_autosave`
--

CREATE TABLE g5_autosave (
  [as_id] int NOT NULL IDENTITY,
  [mb_id] varchar(20) NOT NULL,
  [as_uid] bigint check ([as_uid] > 0) NOT NULL,
  [as_subject] varchar(255) NOT NULL,
  [as_content] varchar(max) NOT NULL,
  [as_datetime] datetime2(0) NOT NULL,
  PRIMARY KEY ([as_id]),
  CONSTRAINT [as_uid] UNIQUE  ([as_uid])
)   ;
 
 CREATE INDEX [mb_id] ON g5_autosave ([mb_id]);

--
-- 테이블의 덤프 데이터 `g5_autosave`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_board`
--

CREATE TABLE g5_board (
  [bo_table] varchar(20) NOT NULL DEFAULT '',
  [gr_id] varchar(255) NOT NULL DEFAULT '',
  [bo_subject] varchar(255) NOT NULL DEFAULT '',
  [bo_mobile_subject] varchar(255) NOT NULL DEFAULT '',
  [bo_device] VARCHAR(10) NOT NULL CHECK ([bo_device] IN('both', 'pc', 'mobile')) DEFAULT 'both',
  [bo_admin] varchar(255) NOT NULL DEFAULT '',
  [bo_list_level] INT NOT NULL DEFAULT '0',
  [bo_read_level] INT NOT NULL DEFAULT '0',
  [bo_write_level] INT NOT NULL DEFAULT '0',
  [bo_reply_level] INT NOT NULL DEFAULT '0',
  [bo_comment_level] INT NOT NULL DEFAULT '0',
  [bo_upload_level] INT NOT NULL DEFAULT '0',
  [bo_download_level] INT NOT NULL DEFAULT '0',
  [bo_html_level] INT NOT NULL DEFAULT '0',
  [bo_link_level] INT NOT NULL DEFAULT '0',
  [bo_count_delete] INT NOT NULL DEFAULT '0',
  [bo_count_modify] INT NOT NULL DEFAULT '0',
  [bo_read_point] INT NOT NULL DEFAULT '0',
  [bo_write_point] INT NOT NULL DEFAULT '0',
  [bo_comment_point] INT NOT NULL DEFAULT '0',
  [bo_download_point] INT NOT NULL DEFAULT '0',
  [bo_use_category] INT NOT NULL DEFAULT '0',
  [bo_category_list] text NOT NULL,
  [bo_use_sideview] INT NOT NULL DEFAULT '0',
  [bo_use_file_content] INT NOT NULL DEFAULT '0',
  [bo_use_secret] INT NOT NULL DEFAULT '0',
  [bo_use_dhtml_editor] INT NOT NULL DEFAULT '0',
  [bo_use_rss_view] INT NOT NULL DEFAULT '0',
  [bo_use_good] INT NOT NULL DEFAULT '0',
  [bo_use_nogood] INT NOT NULL DEFAULT '0',
  [bo_use_name] INT NOT NULL DEFAULT '0',
  [bo_use_signature] INT NOT NULL DEFAULT '0',
  [bo_use_ip_view] INT NOT NULL DEFAULT '0',
  [bo_use_list_view] INT NOT NULL DEFAULT '0',
  [bo_use_list_file] INT NOT NULL DEFAULT '0',
  [bo_use_list_content] INT NOT NULL DEFAULT '0',
  [bo_table_width] INT NOT NULL DEFAULT '0',
  [bo_subject_len] INT NOT NULL DEFAULT '0',
  [bo_mobile_subject_len] INT NOT NULL DEFAULT '0',
  [bo_page_rows] INT NOT NULL DEFAULT '0',
  [bo_mobile_page_rows] INT NOT NULL DEFAULT '0',
  [bo_new] INT NOT NULL DEFAULT '0',
  [bo_hot] INT NOT NULL DEFAULT '0',
  [bo_image_width] INT NOT NULL DEFAULT '0',
  [bo_skin] varchar(255) NOT NULL DEFAULT '',
  [bo_mobile_skin] varchar(255) NOT NULL DEFAULT '',
  [bo_include_head] varchar(255) NOT NULL DEFAULT '',
  [bo_include_tail] varchar(255) NOT NULL DEFAULT '',
  [bo_content_head] text NOT NULL,
  [bo_mobile_content_head] text NOT NULL,
  [bo_content_tail] text NOT NULL,
  [bo_mobile_content_tail] text NOT NULL,
  [bo_insert_content] text NOT NULL,
  [bo_gallery_cols] INT NOT NULL DEFAULT '0',
  [bo_gallery_width] INT NOT NULL DEFAULT '0',
  [bo_gallery_height] INT NOT NULL DEFAULT '0',
  [bo_mobile_gallery_width] INT NOT NULL DEFAULT '0',
  [bo_mobile_gallery_height] INT NOT NULL DEFAULT '0',
  [bo_upload_size] INT NOT NULL DEFAULT '0',
  [bo_reply_order] INT NOT NULL DEFAULT '0',
  [bo_use_search] INT NOT NULL DEFAULT '0',
  [bo_order] INT NOT NULL DEFAULT '0',
  [bo_count_write] INT NOT NULL DEFAULT '0',
  [bo_count_comment] INT NOT NULL DEFAULT '0',
  [bo_write_min] INT NOT NULL DEFAULT '0',
  [bo_write_max] INT NOT NULL DEFAULT '0',
  [bo_comment_min] INT NOT NULL DEFAULT '0',
  [bo_comment_max] INT NOT NULL DEFAULT '0',
  [bo_notice] text NOT NULL,
  [bo_upload_count] INT NOT NULL DEFAULT '0',
  [bo_use_email] INT NOT NULL DEFAULT '0',
  [au_auth] VARCHAR(10) NOT NULL CHECK ([au_auth] IN('r','w','d')) DEFAULT '',
  [bo_use_cert] VARCHAR(10) CHECK ([bo_use_cert] IN('','cert','adult','hp-cert','hp-adult')) DEFAULT '',
  [bo_use_sns] INT NOT NULL DEFAULT '0',
  [bo_sort_field] varchar(255) NOT NULL DEFAULT '',
  [bo_1_subj] varchar(255) NOT NULL DEFAULT '',
  [bo_2_subj] varchar(255) NOT NULL DEFAULT '',
  [bo_3_subj] varchar(255) NOT NULL DEFAULT '',
  [bo_4_subj] varchar(255) NOT NULL DEFAULT '',
  [bo_5_subj] varchar(255) NOT NULL DEFAULT '',
  [bo_6_subj] varchar(255) NOT NULL DEFAULT '',
  [bo_7_subj] varchar(255) NOT NULL DEFAULT '',
  [bo_8_subj] varchar(255) NOT NULL DEFAULT '',
  [bo_9_subj] varchar(255) NOT NULL DEFAULT '',
  [bo_10_subj] varchar(255) NOT NULL DEFAULT '',
  [bo_1] varchar(255) NOT NULL DEFAULT '',
  [bo_2] varchar(255) NOT NULL DEFAULT '',
  [bo_3] varchar(255) NOT NULL DEFAULT '',
  [bo_4] varchar(255) NOT NULL DEFAULT '',
  [bo_5] varchar(255) NOT NULL DEFAULT '',
  [bo_6] varchar(255) NOT NULL DEFAULT '',
  [bo_7] varchar(255) NOT NULL DEFAULT '',
  [bo_8] varchar(255) NOT NULL DEFAULT '',
  [bo_9] varchar(255) NOT NULL DEFAULT '',
  [bo_10] varchar(255) NOT NULL DEFAULT '',
  [as_title] varchar(255) NOT NULL DEFAULT '',
  [as_desc] varchar(255) NOT NULL DEFAULT '',
  [as_icon] varchar(255) NOT NULL DEFAULT '',
  [as_mobile_icon] varchar(255) NOT NULL DEFAULT '',
  [as_main] varchar(255) NOT NULL DEFAULT '',
  [as_link] varchar(255) NOT NULL DEFAULT '',
  [as_target] varchar(255) NOT NULL DEFAULT '',
  [as_line] varchar(255) NOT NULL DEFAULT '',
  [as_sp] INT NOT NULL DEFAULT '0',
  [as_show] INT NOT NULL DEFAULT '0',
  [as_order] INT NOT NULL DEFAULT '0',
  [as_menu] INT NOT NULL DEFAULT '0',
  [as_menu_show] INT NOT NULL DEFAULT '0',
  [as_grade] INT NOT NULL DEFAULT '0',
  [as_equal] INT NOT NULL DEFAULT '0',
  [as_wide] INT NOT NULL DEFAULT '0',
  [as_partner] INT NOT NULL DEFAULT '0',
  [as_autoplay] INT NOT NULL DEFAULT '0',
  [as_torrent] INT NOT NULL DEFAULT '0',
  [as_shingo] INT NOT NULL DEFAULT '0',
  [as_level] INT NOT NULL DEFAULT '0',
  [as_lucky] INT NOT NULL DEFAULT '0',
  [as_good] INT NOT NULL DEFAULT '0',
  [as_save] INT NOT NULL DEFAULT '0',
  [as_code] INT NOT NULL DEFAULT '0',
  [as_exif] INT NOT NULL DEFAULT '0',
  [as_loc] INT NOT NULL DEFAULT '0',
  [as_new] INT NOT NULL DEFAULT '0',
  [as_notice] INT NOT NULL DEFAULT '0',
  [as_search] INT NOT NULL DEFAULT '0',
  [as_lightbox] INT NOT NULL DEFAULT '0',
  [as_rev_cmt] INT NOT NULL DEFAULT '0',
  [as_best_cmt] INT NOT NULL DEFAULT '0',
  [as_rank_cmt] INT NOT NULL DEFAULT '3',
  [as_purifier] INT NOT NULL DEFAULT '0',
  [as_resize] INT NOT NULL DEFAULT '0',
  [as_resize_kb] INT NOT NULL DEFAULT '0',
  [as_min] INT NOT NULL DEFAULT '0',
  [as_max] INT NOT NULL DEFAULT '0',
  [as_comment_rows] INT NOT NULL DEFAULT '0',
  [as_comment_mobile_rows] INT NOT NULL DEFAULT '0',
  [as_editor] varchar(255) NOT NULL DEFAULT '',
  [as_mobile_editor] varchar(255) NOT NULL DEFAULT '',
  [as_set] text NOT NULL,
  [as_mobile_set] text NOT NULL,
  PRIMARY KEY ([bo_table])
) --ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_board`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_board_file`
--

CREATE TABLE g5_board_file (
  [bo_table] varchar(20) NOT NULL DEFAULT '',
  [wr_id] int NOT NULL DEFAULT '0',
  [bf_no] int NOT NULL DEFAULT '0',
  [bf_source] varchar(255) NOT NULL DEFAULT '',
  [bf_file] varchar(255) NOT NULL DEFAULT '',
  [bf_download] int NOT NULL,
  [bf_content] varchar(max) NOT NULL,
  [bf_filesize] int NOT NULL DEFAULT '0',
  [bf_width] int NOT NULL DEFAULT '0',
  [bf_height] smallint NOT NULL DEFAULT '0',
  [bf_type] smallint NOT NULL DEFAULT '0',
  [bf_datetime] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY ([bo_table],[wr_id],[bf_no])
) ;

--
-- 테이블의 덤프 데이터 `g5_board_file`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_board_good`
--

CREATE TABLE g5_board_good (
  [bg_id] int NOT NULL IDENTITY,
  [bo_table] varchar(20) NOT NULL DEFAULT '',
  [wr_id] int NOT NULL DEFAULT '0',
  [mb_id] varchar(20) NOT NULL DEFAULT '',
  [bg_flag] varchar(255) NOT NULL DEFAULT '',
  [bg_datetime] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
)   ;

--
-- 테이블의 덤프 데이터 `g5_board_good`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_board_new`
--

CREATE TABLE g5_board_new (
  [bn_id] int NOT NULL IDENTITY,
  [bo_table] varchar(20) NOT NULL DEFAULT '',
  [wr_id] int NOT NULL DEFAULT '0',
  [wr_parent] int NOT NULL DEFAULT '0',
  [bn_datetime] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  [mb_id] varchar(20) NOT NULL DEFAULT '',
  [as_type] smallint NOT NULL DEFAULT '0',
  [as_list] smallint NOT NULL DEFAULT '0',
  [as_secret] smallint NOT NULL DEFAULT '0',
  [as_publish] smallint NOT NULL DEFAULT '0',
  [as_extra] smallint NOT NULL DEFAULT '0',
  [as_comment] int NOT NULL DEFAULT '0',
  [as_hit] int NOT NULL DEFAULT '0',
  [as_good] int NOT NULL DEFAULT '0',
  [as_nogood] int NOT NULL DEFAULT '0',
  [as_download] int NOT NULL DEFAULT '0',
  [as_link] int NOT NULL DEFAULT '0',
  [as_poll] int NOT NULL DEFAULT '0',
  [as_event] int NOT NULL DEFAULT '0',
  [as_lucky] int NOT NULL DEFAULT '0',
  [as_reply] varchar(10) NOT NULL DEFAULT '',
  [as_re_mb] varchar(255) NOT NULL DEFAULT '',
  [as_video] varchar(255) NOT NULL DEFAULT '',
  [as_update] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY ([bn_id])
)   ;
 
 CREATE INDEX [mb_id] ON g5_board_new ([mb_id]);

--
-- 테이블의 덤프 데이터 `g5_board_new`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_cert_history`
--

CREATE TABLE g5_cert_history (
  [cr_id] int NOT NULL IDENTITY,
  [mb_id] varchar(20) NOT NULL DEFAULT '',
  [cr_company] varchar(255) NOT NULL DEFAULT '',
  [cr_method] varchar(255) NOT NULL DEFAULT '',
  [cr_ip] varchar(255) NOT NULL DEFAULT '',
  [cr_date] date NOT NULL DEFAULT '0000-00-00',
  [cr_time] time(0) NOT NULL DEFAULT '00:00:00',
  PRIMARY KEY ([cr_id])
)   ;
 
 CREATE INDEX [mb_id] ON g5_cert_history ([mb_id]);

--
-- 테이블의 덤프 데이터 `g5_cert_history`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_config`
--

CREATE TABLE g5_config (
  [cf_title] varchar(255) NOT NULL DEFAULT '',
  [cf_theme] varchar(255) NOT NULL DEFAULT '',
  [cf_admin] varchar(255) NOT NULL DEFAULT '',
  [cf_admin_email] varchar(255) NOT NULL DEFAULT '',
  [cf_admin_email_name] varchar(255) NOT NULL DEFAULT '',
  [cf_add_script] varchar(max) NOT NULL,
  [cf_use_point] smallint NOT NULL DEFAULT '0',
  [cf_point_term] int NOT NULL DEFAULT '0',
  [cf_use_copy_log] smallint NOT NULL DEFAULT '0',
  [cf_use_email_certify] smallint NOT NULL DEFAULT '0',
  [cf_login_point] int NOT NULL DEFAULT '0',
  [cf_cut_name] smallint NOT NULL DEFAULT '0',
  [cf_nick_modify] int NOT NULL DEFAULT '0',
  [cf_new_skin] varchar(255) NOT NULL DEFAULT '',
  [cf_new_rows] int NOT NULL DEFAULT '0',
  [cf_search_skin] varchar(255) NOT NULL DEFAULT '',
  [cf_connect_skin] varchar(255) NOT NULL DEFAULT '',
  [cf_faq_skin] varchar(255) NOT NULL DEFAULT '',
  [cf_read_point] int NOT NULL DEFAULT '0',
  [cf_write_point] int NOT NULL DEFAULT '0',
  [cf_comment_point] int NOT NULL DEFAULT '0',
  [cf_download_point] int NOT NULL DEFAULT '0',
  [cf_write_pages] int NOT NULL DEFAULT '0',
  [cf_mobile_pages] int NOT NULL DEFAULT '0',
  [cf_link_target] varchar(255) NOT NULL DEFAULT '',
  [cf_delay_sec] int NOT NULL DEFAULT '0',
  [cf_filter] varchar(max) NOT NULL,
  [cf_possible_ip] varchar(max) NOT NULL,
  [cf_intercept_ip] varchar(max) NOT NULL,
  [cf_analytics] varchar(max) NOT NULL,
  [cf_add_meta] varchar(max) NOT NULL,
  [cf_syndi_token] varchar(255) NOT NULL,
  [cf_syndi_except] varchar(max) NOT NULL,
  [cf_member_skin] varchar(255) NOT NULL DEFAULT '',
  [cf_use_homepage] smallint NOT NULL DEFAULT '0',
  [cf_req_homepage] smallint NOT NULL DEFAULT '0',
  [cf_use_tel] smallint NOT NULL DEFAULT '0',
  [cf_req_tel] smallint NOT NULL DEFAULT '0',
  [cf_use_hp] smallint NOT NULL DEFAULT '0',
  [cf_req_hp] smallint NOT NULL DEFAULT '0',
  [cf_use_addr] smallint NOT NULL DEFAULT '0',
  [cf_req_addr] smallint NOT NULL DEFAULT '0',
  [cf_use_signature] smallint NOT NULL DEFAULT '0',
  [cf_req_signature] smallint NOT NULL DEFAULT '0',
  [cf_use_profile] smallint NOT NULL DEFAULT '0',
  [cf_req_profile] smallint NOT NULL DEFAULT '0',
  [cf_register_level] smallint NOT NULL DEFAULT '0',
  [cf_register_point] int NOT NULL DEFAULT '0',
  [cf_icon_level] smallint NOT NULL DEFAULT '0',
  [cf_use_recommend] smallint NOT NULL DEFAULT '0',
  [cf_recommend_point] int NOT NULL DEFAULT '0',
  [cf_leave_day] int NOT NULL DEFAULT '0',
  [cf_search_part] int NOT NULL DEFAULT '0',
  [cf_email_use] smallint NOT NULL DEFAULT '0',
  [cf_email_wr_super_admin] smallint NOT NULL DEFAULT '0',
  [cf_email_wr_group_admin] smallint NOT NULL DEFAULT '0',
  [cf_email_wr_board_admin] smallint NOT NULL DEFAULT '0',
  [cf_email_wr_write] smallint NOT NULL DEFAULT '0',
  [cf_email_wr_comment_all] smallint NOT NULL DEFAULT '0',
  [cf_email_mb_super_admin] smallint NOT NULL DEFAULT '0',
  [cf_email_mb_member] smallint NOT NULL DEFAULT '0',
  [cf_email_po_super_admin] smallint NOT NULL DEFAULT '0',
  [cf_prohibit_id] varchar(max) NOT NULL,
  [cf_prohibit_email] varchar(max) NOT NULL,
  [cf_new_del] int NOT NULL DEFAULT '0',
  [cf_memo_del] int NOT NULL DEFAULT '0',
  [cf_visit_del] int NOT NULL DEFAULT '0',
  [cf_popular_del] int NOT NULL DEFAULT '0',
  [cf_optimize_date] date NOT NULL DEFAULT '0000-00-00',
  [cf_use_member_icon] smallint NOT NULL DEFAULT '0',
  [cf_member_icon_size] int NOT NULL DEFAULT '0',
  [cf_member_icon_width] int NOT NULL DEFAULT '0',
  [cf_member_icon_height] int NOT NULL DEFAULT '0',
  [cf_login_minutes] int NOT NULL DEFAULT '0',
  [cf_image_extension] varchar(255) NOT NULL DEFAULT '',
  [cf_flash_extension] varchar(255) NOT NULL DEFAULT '',
  [cf_movie_extension] varchar(255) NOT NULL DEFAULT '',
  [cf_formmail_is_member] smallint NOT NULL DEFAULT '0',
  [cf_page_rows] int NOT NULL DEFAULT '0',
  [cf_mobile_page_rows] int NOT NULL DEFAULT '0',
  [cf_visit] varchar(255) NOT NULL DEFAULT '',
  [cf_max_po_id] int NOT NULL DEFAULT '0',
  [cf_stipulation] varchar(max) NOT NULL,
  [cf_privacy] varchar(max) NOT NULL,
  [cf_open_modify] int NOT NULL DEFAULT '0',
  [cf_memo_send_point] int NOT NULL DEFAULT '0',
  [cf_mobile_new_skin] varchar(255) NOT NULL DEFAULT '',
  [cf_mobile_search_skin] varchar(255) NOT NULL DEFAULT '',
  [cf_mobile_connect_skin] varchar(255) NOT NULL DEFAULT '',
  [cf_mobile_faq_skin] varchar(255) NOT NULL DEFAULT '',
  [cf_mobile_member_skin] varchar(255) NOT NULL DEFAULT '',
  [cf_captcha_mp3] varchar(255) NOT NULL DEFAULT '',
  [cf_editor] varchar(255) NOT NULL DEFAULT '',
  [cf_cert_use] smallint NOT NULL DEFAULT '0',
  [cf_cert_ipin] varchar(255) NOT NULL DEFAULT '',
  [cf_cert_hp] varchar(255) NOT NULL DEFAULT '',
  [cf_cert_kcb_cd] varchar(255) NOT NULL DEFAULT '',
  [cf_cert_kcp_cd] varchar(255) NOT NULL DEFAULT '',
  [cf_lg_mid] varchar(255) NOT NULL DEFAULT '',
  [cf_lg_mert_key] varchar(255) NOT NULL DEFAULT '',
  [cf_cert_limit] int NOT NULL DEFAULT '0',
  [cf_cert_req] smallint NOT NULL DEFAULT '0',
  [cf_sms_use] varchar(255) NOT NULL DEFAULT '',
  [cf_sms_type] varchar(10) NOT NULL DEFAULT '',
  [cf_icode_id] varchar(255) NOT NULL DEFAULT '',
  [cf_icode_pw] varchar(255) NOT NULL DEFAULT '',
  [cf_icode_server_ip] varchar(255) NOT NULL DEFAULT '',
  [cf_icode_server_port] varchar(255) NOT NULL DEFAULT '',
  [cf_googl_shorturl_apikey] varchar(255) NOT NULL DEFAULT '',
  [cf_facebook_appid] varchar(255) NOT NULL,
  [cf_facebook_secret] varchar(255) NOT NULL,
  [cf_twitter_key] varchar(255) NOT NULL,
  [cf_twitter_secret] varchar(255) NOT NULL,
  [cf_kakao_js_apikey] varchar(255) NOT NULL,
  [cf_1_subj] varchar(255) NOT NULL DEFAULT '',
  [cf_2_subj] varchar(255) NOT NULL DEFAULT '',
  [cf_3_subj] varchar(255) NOT NULL DEFAULT '',
  [cf_4_subj] varchar(255) NOT NULL DEFAULT '',
  [cf_5_subj] varchar(255) NOT NULL DEFAULT '',
  [cf_6_subj] varchar(255) NOT NULL DEFAULT '',
  [cf_7_subj] varchar(255) NOT NULL DEFAULT '',
  [cf_8_subj] varchar(255) NOT NULL DEFAULT '',
  [cf_9_subj] varchar(255) NOT NULL DEFAULT '',
  [cf_10_subj] varchar(255) NOT NULL DEFAULT '',
  [cf_1] varchar(255) NOT NULL DEFAULT '',
  [cf_2] varchar(255) NOT NULL DEFAULT '',
  [cf_3] varchar(255) NOT NULL DEFAULT '',
  [cf_4] varchar(255) NOT NULL DEFAULT '',
  [cf_5] varchar(255) NOT NULL DEFAULT '',
  [cf_6] varchar(255) NOT NULL DEFAULT '',
  [cf_7] varchar(255) NOT NULL DEFAULT '',
  [cf_8] varchar(255) NOT NULL DEFAULT '',
  [cf_9] varchar(255) NOT NULL DEFAULT '',
  [cf_10] varchar(255) NOT NULL DEFAULT '',
  [as_thema] varchar(255) NOT NULL DEFAULT 'Basic',
  [as_color] varchar(255) NOT NULL DEFAULT 'Basic',
  [as_mobile_thema] varchar(255) NOT NULL DEFAULT 'Basic',
  [as_mobile_color] varchar(255) NOT NULL DEFAULT 'Basic',
  [as_admin] varchar(255) NOT NULL DEFAULT '',
  [as_intro] varchar(255) NOT NULL DEFAULT '',
  [as_intro_skin] varchar(255) NOT NULL DEFAULT '',
  [as_mobile_intro_skin] varchar(255) NOT NULL DEFAULT '',
  [as_tag_skin] varchar(255) NOT NULL DEFAULT 'basic',
  [as_mobile_tag_skin] varchar(255) NOT NULL DEFAULT 'basic',
  [as_misc_skin] varchar(255) NOT NULL DEFAULT 'basic',
  [as_lang] varchar(255) NOT NULL DEFAULT 'korean',
  [as_gnu] smallint NOT NULL DEFAULT '0',
  [as_xp] varchar(255) NOT NULL DEFAULT 'XP',
  [as_mp] varchar(255) NOT NULL DEFAULT 'MP'
) ;

--
-- 테이블의 덤프 데이터 `g5_config`
--

--set IDENTITY_INSERT g5_apms_xp OFF
--set IDENTITY_INSERT g5_config ON
INSERT INTO g5_config ([cf_title], [cf_theme], [cf_admin], [cf_admin_email], [cf_admin_email_name], [cf_add_script], [cf_use_point], [cf_point_term], [cf_use_copy_log], [cf_use_email_certify], [cf_login_point], [cf_cut_name], [cf_nick_modify], [cf_new_skin], [cf_new_rows], [cf_search_skin], [cf_connect_skin], [cf_faq_skin], [cf_read_point], [cf_write_point], [cf_comment_point], [cf_download_point], [cf_write_pages], [cf_mobile_pages], [cf_link_target], [cf_delay_sec], [cf_filter], [cf_possible_ip], [cf_intercept_ip], [cf_analytics], [cf_add_meta], [cf_syndi_token], [cf_syndi_except], [cf_member_skin], [cf_use_homepage], [cf_req_homepage], [cf_use_tel], [cf_req_tel], [cf_use_hp], [cf_req_hp], [cf_use_addr], [cf_req_addr], [cf_use_signature], [cf_req_signature], [cf_use_profile], [cf_req_profile], [cf_register_level], [cf_register_point], [cf_icon_level], [cf_use_recommend], [cf_recommend_point], [cf_leave_day], [cf_search_part], [cf_email_use], [cf_email_wr_super_admin], [cf_email_wr_group_admin], [cf_email_wr_board_admin], [cf_email_wr_write], [cf_email_wr_comment_all], [cf_email_mb_super_admin], [cf_email_mb_member], [cf_email_po_super_admin], [cf_prohibit_id], [cf_prohibit_email], [cf_new_del], [cf_memo_del], [cf_visit_del], [cf_popular_del], [cf_optimize_date], [cf_use_member_icon], [cf_member_icon_size], [cf_member_icon_width], [cf_member_icon_height], [cf_login_minutes], [cf_image_extension], [cf_flash_extension], [cf_movie_extension], [cf_formmail_is_member], [cf_page_rows], [cf_mobile_page_rows], [cf_visit], [cf_max_po_id], [cf_stipulation], [cf_privacy], [cf_open_modify], [cf_memo_send_point], [cf_mobile_new_skin], [cf_mobile_search_skin], [cf_mobile_connect_skin], [cf_mobile_faq_skin], [cf_mobile_member_skin], [cf_captcha_mp3], [cf_editor], [cf_cert_use], [cf_cert_ipin], [cf_cert_hp], [cf_cert_kcb_cd], [cf_cert_kcp_cd], [cf_lg_mid], [cf_lg_mert_key], [cf_cert_limit], [cf_cert_req], [cf_sms_use], [cf_sms_type], [cf_icode_id], [cf_icode_pw], [cf_icode_server_ip], [cf_icode_server_port], [cf_googl_shorturl_apikey], [cf_facebook_appid], [cf_facebook_secret], [cf_twitter_key], [cf_twitter_secret], [cf_kakao_js_apikey], [cf_1_subj], [cf_2_subj], [cf_3_subj], [cf_4_subj], [cf_5_subj], [cf_6_subj], [cf_7_subj], [cf_8_subj], [cf_9_subj], [cf_10_subj], [cf_1], [cf_2], [cf_3], [cf_4], [cf_5], [cf_6], [cf_7], [cf_8], [cf_9], [cf_10], [as_thema], [as_color], [as_mobile_thema], [as_mobile_color], [as_admin], [as_intro], [as_intro_skin], [as_mobile_intro_skin], [as_tag_skin], [as_mobile_tag_skin], [as_misc_skin], [as_lang], [as_gnu], [as_xp], [as_mp]) VALUES
('그누보드5', 'basic', 'admin', 'admin@domain.com', '그누보드5', '', 1, 0, 1, 0, 100, 15, 60, 'basic', 15, 'basic', 'basic', 'basic', 0, 0, 0, 0, 10, 5, '_blank', 30, '18아,18놈,18새끼,18뇬,18노,18것,18넘,개년,개놈,개뇬,개새,개색끼,개세끼,개세이,개쉐이,개쉑,개쉽,개시키,개자식,개좆,게색기,게색끼,광뇬,뇬,눈깔,뉘미럴,니귀미,니기미,니미,도촬,되질래,뒈져라,뒈진다,디져라,디진다,디질래,병쉰,병신,뻐큐,뻑큐,뽁큐,삐리넷,새꺄,쉬발,쉬밸,쉬팔,쉽알,스패킹,스팽,시벌,시부랄,시부럴,시부리,시불,시브랄,시팍,시팔,시펄,실밸,십8,십쌔,십창,싶알,쌉년,썅놈,쌔끼,쌩쑈,썅,써벌,썩을년,쎄꺄,쎄엑,쓰바,쓰발,쓰벌,쓰팔,씨8,씨댕,씨바,씨발,씨뱅,씨봉알,씨부랄,씨부럴,씨부렁,씨부리,씨불,씨브랄,씨빠,씨빨,씨뽀랄,씨팍,씨팔,씨펄,씹,아가리,아갈이,엄창,접년,잡놈,재랄,저주글,조까,조빠,조쟁이,조지냐,조진다,조질래,존나,존니,좀물,좁년,좃,좆,좇,쥐랄,쥐롤,쥬디,지랄,지럴,지롤,지미랄,쫍빱,凸,퍽큐,뻑큐,빠큐,ㅅㅂㄹㅁ', '', '', '', '', '', '', 'basic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1000, 2, 0, 0, 30, 10000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'admin,administrator,관리자,운영자,어드민,주인장,webmaster,웹마스터,sysop,시삽,시샵,manager,매니저,메니저,root,루트,su,guest,방문객', '', 30, 180, 180, 180, '2018-06-25', 2, 5000, 22, 22, 10, 'gif|jpg|jpeg|png', 'swf', 'asx|asf|wmv|wma|mpg|mpeg|mov|avi|mp3', 1, 15, 15, '', 0, '해당 홈페이지에 맞는 회원가입약관을 입력합니다.', '해당 홈페이지에 맞는 개인정보처리방침을 입력합니다.', 0, 500, 'basic', 'basic', 'basic', 'basic', 'basic', 'basic', 'smarteditor2', 0, '', '', '', '', '', '', 2, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Basic', 'Basic', 'Basic', 'Basic', '', '', '', '', 'basic', 'basic', 'basic', 'korean', 0, 'XP', 'MP');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_content`
--

CREATE TABLE g5_content (
  [co_id] varchar(20) NOT NULL DEFAULT '',
  [co_html] smallint NOT NULL DEFAULT '0',
  [co_subject] varchar(255) NOT NULL DEFAULT '',
  [co_content] varchar(max) NOT NULL,
  [co_mobile_content] varchar(max) NOT NULL,
  [co_skin] varchar(255) NOT NULL DEFAULT '',
  [co_mobile_skin] varchar(255) NOT NULL DEFAULT '',
  [co_tag_filter_use] smallint NOT NULL DEFAULT '0',
  [co_hit] int NOT NULL DEFAULT '0',
  [co_include_head] varchar(255) NOT NULL,
  [co_include_tail] varchar(255) NOT NULL,
  PRIMARY KEY ([co_id])
) ;

--
-- 테이블의 덤프 데이터 `g5_content`
--
--set IDENTITY_INSERT g5_config OFF
--set IDENTITY_INSERT g5_content ON
INSERT INTO g5_content ([co_id], [co_html], [co_subject], [co_content], [co_mobile_content], [co_skin], [co_mobile_skin], [co_tag_filter_use], [co_hit], [co_include_head], [co_include_tail]) VALUES
('company', 1, '회사소개', '<p align=center><b>회사소개에 대한 내용을 입력하십시오.</b></p>', '', '', '', 0, 0, '', ''),
('privacy', 1, '개인정보 처리방침', '<p align=center><b>개인정보 처리방침에 대한 내용을 입력하십시오.</b></p>', '', '', '', 0, 0, '', ''),
('provision', 1, '서비스 이용약관', '<p align=center><b>서비스 이용약관에 대한 내용을 입력하십시오.</b></p>', '', '', '', 0, 0, '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_faq`
--

CREATE TABLE g5_faq (
  [fa_id] int NOT NULL IDENTITY,
  [fm_id] int NOT NULL DEFAULT '0',
  [fa_subject] varchar(max) NOT NULL,
  [fa_content] varchar(max) NOT NULL,
  [fa_order] int NOT NULL DEFAULT '0',
  PRIMARY KEY ([fa_id])
)   ;
 
 CREATE INDEX [fm_id] ON g5_faq ([fm_id]);

--
-- 테이블의 덤프 데이터 `g5_faq`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_faq_master`
--

CREATE TABLE g5_faq_master (
  [fm_id] int NOT NULL IDENTITY,
  [fm_subject] varchar(255) NOT NULL DEFAULT '',
  [fm_head_html] varchar(max) NOT NULL,
  [fm_tail_html] varchar(max) NOT NULL,
  [fm_mobile_head_html] varchar(max) NOT NULL,
  [fm_mobile_tail_html] varchar(max) NOT NULL,
  [fm_order] int NOT NULL DEFAULT '0',
  PRIMARY KEY ([fm_id])
)    ;

--
-- 테이블의 덤프 데이터 `g5_faq_master`
--
--set IDENTITY_INSERT g5_content OFF
set IDENTITY_INSERT g5_faq_master ON
INSERT INTO g5_faq_master ([fm_id], [fm_subject], [fm_head_html], [fm_tail_html], [fm_mobile_head_html], [fm_mobile_tail_html], [fm_order]) VALUES
(1, '자주하시는 질문', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_group`
--

CREATE TABLE g5_group (
  [gr_id] varchar(10) NOT NULL DEFAULT '',
  [gr_subject] varchar(255) NOT NULL DEFAULT '',
  [bo_device] VARCHAR(10) NOT NULL CHECK ([bo_device] IN('both', 'pc', 'mobile')) DEFAULT 'both',
  [gr_admin] varchar(255) NOT NULL DEFAULT '',
  [gr_use_access] INT NOT NULL DEFAULT '0',
  [gr_order] INT NOT NULL DEFAULT '0',
  [gr_1_subj] varchar(255) NOT NULL DEFAULT '',
  [gr_2_subj] varchar(255) NOT NULL DEFAULT '',
  [gr_3_subj] varchar(255) NOT NULL DEFAULT '',
  [gr_4_subj] varchar(255) NOT NULL DEFAULT '',
  [gr_5_subj] varchar(255) NOT NULL DEFAULT '',
  [gr_6_subj] varchar(255) NOT NULL DEFAULT '',
  [gr_7_subj] varchar(255) NOT NULL DEFAULT '',
  [gr_8_subj] varchar(255) NOT NULL DEFAULT '',
  [gr_9_subj] varchar(255) NOT NULL DEFAULT '',
  [gr_10_subj] varchar(255) NOT NULL DEFAULT '',
  [gr_1] varchar(255) NOT NULL DEFAULT '',
  [gr_2] varchar(255) NOT NULL DEFAULT '',
  [gr_3] varchar(255) NOT NULL DEFAULT '',
  [gr_4] varchar(255) NOT NULL DEFAULT '',
  [gr_5] varchar(255) NOT NULL DEFAULT '',
  [gr_6] varchar(255) NOT NULL DEFAULT '',
  [gr_7] varchar(255) NOT NULL DEFAULT '',
  [gr_8] varchar(255) NOT NULL DEFAULT '',
  [gr_9] varchar(255) NOT NULL DEFAULT '',
  [gr_10] varchar(255) NOT NULL DEFAULT '',
  [as_thema] varchar(255) NOT NULL DEFAULT '',
  [as_color] varchar(255) NOT NULL DEFAULT '',
  [as_mobile_thema] varchar(255) NOT NULL DEFAULT '',
  [as_mobile_color] varchar(255) NOT NULL DEFAULT '',
  [as_icon] varchar(255) NOT NULL DEFAULT '',
  [as_mobile_icon] varchar(255) NOT NULL DEFAULT '',
  [as_main] varchar(255) NOT NULL DEFAULT '',
  [as_mobile_main] varchar(255) NOT NULL DEFAULT '',
  [as_link] varchar(255) NOT NULL DEFAULT '',
  [as_target] varchar(255) NOT NULL DEFAULT '',
  [as_show] INT NOT NULL DEFAULT '0',
  [as_shop] INT NOT NULL DEFAULT '0',
  [as_menu] INT NOT NULL DEFAULT '0',
  [as_menu_show] INT NOT NULL DEFAULT '0',
  [as_grade] INT NOT NULL DEFAULT '0',
  [as_equal] INT NOT NULL DEFAULT '0',
  [as_wide] INT NOT NULL DEFAULT '0',
  [as_multi] INT NOT NULL DEFAULT '0',
  [as_partner] INT NOT NULL DEFAULT '0',
  [as_min] INT NOT NULL DEFAULT '0',
  [as_max] INT NOT NULL DEFAULT '0',
  PRIMARY KEY ([gr_id])
) --ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_group`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_group_member`
--

CREATE TABLE g5_group_member (
  [gm_id] int NOT NULL IDENTITY,
  [gr_id] varchar(255) NOT NULL DEFAULT '',
  [mb_id] varchar(20) NOT NULL DEFAULT '',
  [gm_datetime] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY ([gm_id])
)   ;
 
 CREATE INDEX [gr_id] ON g5_group_member ([gr_id]);
 CREATE INDEX [mb_id] ON g5_group_member ([mb_id]);

--
-- 테이블의 덤프 데이터 `g5_group_member`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_login`
--

CREATE TABLE g5_login (
  [lo_ip] varchar(255) NOT NULL DEFAULT '',
  [mb_id] varchar(20) NOT NULL DEFAULT '',
  [lo_datetime] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  [lo_location] varchar(max) NOT NULL,
  [lo_url] varchar(max) NOT NULL,
  PRIMARY KEY ([lo_ip])
) ;

--
-- 테이블의 덤프 데이터 `g5_login`
--

set IDENTITY_INSERT g5_faq_master OFF
--set IDENTITY_INSERT g5_login ON
INSERT INTO g5_login ([lo_ip], [mb_id], [lo_datetime], [lo_location], [lo_url]) VALUES
('114.205.172.123', 'admin', '2018-06-25 10:18:26', '포인트관리', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_mail`
--

CREATE TABLE g5_mail (
  [ma_id] int NOT NULL IDENTITY,
  [ma_subject] varchar(255) NOT NULL DEFAULT '',
  [ma_content] varchar(max) NOT NULL,
  [ma_time] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  [ma_ip] varchar(255) NOT NULL DEFAULT '',
  [ma_last_option] varchar(max) NOT NULL,
  PRIMARY KEY ([ma_id])
)   ;

--
-- 테이블의 덤프 데이터 `g5_mail`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_member`
--

CREATE TABLE g5_member (
  [mb_no] int NOT NULL IDENTITY,
  [mb_id] varchar(20) NOT NULL DEFAULT '',
  [mb_sn] varchar(255) NOT NULL DEFAULT '',
  [mb_password] varchar(255) NOT NULL DEFAULT '',
  [mb_name] varchar(255) NOT NULL DEFAULT '',
  [mb_nick] varchar(255) NOT NULL DEFAULT '',
  [mb_nick_date] date NOT NULL DEFAULT '0000-00-00',
  [mb_email] varchar(255) NOT NULL DEFAULT '',
  [mb_homepage] varchar(255) NOT NULL DEFAULT '',
  [mb_level] smallint NOT NULL DEFAULT '0',
  [mb_sex] char(1) NOT NULL DEFAULT '',
  [mb_birth] varchar(255) NOT NULL DEFAULT '',
  [mb_tel] varchar(255) NOT NULL DEFAULT '',
  [mb_hp] varchar(255) NOT NULL DEFAULT '',
  [mb_certify] varchar(20) NOT NULL DEFAULT '',
  [mb_adult] smallint NOT NULL DEFAULT '0',
  [mb_dupinfo] varchar(255) NOT NULL DEFAULT '',
  [mb_zip1] char(3) NOT NULL DEFAULT '',
  [mb_zip2] char(3) NOT NULL DEFAULT '',
  [mb_addr1] varchar(255) NOT NULL DEFAULT '',
  [mb_addr2] varchar(255) NOT NULL DEFAULT '',
  [mb_addr3] varchar(255) NOT NULL DEFAULT '',
  [mb_addr_jibeon] varchar(255) NOT NULL DEFAULT '',
  [mb_signature] varchar(max) NOT NULL,
  [mb_recommend] varchar(255) NOT NULL DEFAULT '',
  [mb_point] int NOT NULL DEFAULT '0',
  [mb_today_login] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  [mb_login_ip] varchar(255) NOT NULL DEFAULT '',
  [mb_datetime] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  [mb_ip] varchar(255) NOT NULL DEFAULT '',
  [mb_leave_date] varchar(8) NOT NULL DEFAULT '',
  [mb_intercept_date] varchar(8) NOT NULL DEFAULT '',
  [mb_email_certify] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  [mb_email_certify2] varchar(255) NOT NULL DEFAULT '',
  [mb_memo] varchar(max) NOT NULL,
  [mb_lost_certify] varchar(255) NOT NULL,
  [mb_mailling] smallint NOT NULL DEFAULT '0',
  [mb_sms] smallint NOT NULL DEFAULT '0',
  [mb_open] smallint NOT NULL DEFAULT '0',
  [mb_open_date] date NOT NULL DEFAULT '0000-00-00',
  [mb_profile] varchar(max) NOT NULL,
  [mb_memo_call] varchar(255) NOT NULL DEFAULT '',
  [mb_1] varchar(255) NOT NULL DEFAULT '',
  [mb_2] varchar(255) NOT NULL DEFAULT '',
  [mb_3] varchar(255) NOT NULL DEFAULT '',
  [mb_4] varchar(255) NOT NULL DEFAULT '',
  [mb_5] varchar(255) NOT NULL DEFAULT '',
  [mb_6] varchar(255) NOT NULL DEFAULT '',
  [mb_7] varchar(255) NOT NULL DEFAULT '',
  [mb_8] varchar(255) NOT NULL DEFAULT '',
  [mb_9] varchar(255) NOT NULL DEFAULT '',
  [mb_10] varchar(255) NOT NULL DEFAULT '',
  [as_msg] smallint NOT NULL DEFAULT '0',
  [as_photo] smallint NOT NULL DEFAULT '0',
  [as_partner] smallint NOT NULL DEFAULT '0',
  [as_marketer] smallint NOT NULL DEFAULT '0',
  [as_exp] int NOT NULL DEFAULT '0',
  [as_level] int NOT NULL DEFAULT '1',
  [as_like] int NOT NULL DEFAULT '0',
  [as_liked] int NOT NULL DEFAULT '0',
  [as_follow] int NOT NULL DEFAULT '0',
  [as_followed] int NOT NULL DEFAULT '0',
  [as_response] int NOT NULL DEFAULT '0',
  [as_memo] int NOT NULL DEFAULT '0',
  [as_coupon] int NOT NULL DEFAULT '0',
  [as_join] int NOT NULL DEFAULT '0',
  [as_date] int NOT NULL DEFAULT '0',
  PRIMARY KEY ([mb_no]),
  CONSTRAINT [mb_id] UNIQUE  ([mb_id])
)    ;
 
 CREATE INDEX [mb_today_login] ON g5_member ([mb_today_login]);
 CREATE INDEX [mb_datetime] ON g5_member ([mb_datetime]);

--
-- 테이블의 덤프 데이터 `g5_member`
--

--set IDENTITY_INSERT g5_login OFF
set IDENTITY_INSERT g5_member ON
INSERT INTO g5_member ([mb_no], [mb_id], [mb_sn], [mb_password], [mb_name], [mb_nick], [mb_nick_date], [mb_email], [mb_homepage], [mb_level], [mb_sex], [mb_birth], [mb_tel], [mb_hp], [mb_certify], [mb_adult], [mb_dupinfo], [mb_zip1], [mb_zip2], [mb_addr1], [mb_addr2], [mb_addr3], [mb_addr_jibeon], [mb_signature], [mb_recommend], [mb_point], [mb_today_login], [mb_login_ip], [mb_datetime], [mb_ip], [mb_leave_date], [mb_intercept_date], [mb_email_certify], [mb_email_certify2], [mb_memo], [mb_lost_certify], [mb_mailling], [mb_sms], [mb_open], [mb_open_date], [mb_profile], [mb_memo_call], [mb_1], [mb_2], [mb_3], [mb_4], [mb_5], [mb_6], [mb_7], [mb_8], [mb_9], [mb_10], [as_msg], [as_photo], [as_partner], [as_marketer], [as_exp], [as_level], [as_like], [as_liked], [as_follow], [as_followed], [as_response], [as_memo], [as_coupon], [as_join], [as_date]) VALUES
(1, 'admin', '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', '최고관리자', GETDATE(), 'admin@domain.com', '', 10, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', 100, GETDATE(), '114.205.172.123', GETDATE(), '114.205.172.123', '', '', GETDATE(), '', '', '', 1, 0, 1, GETDATE(), '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_memo`
--

CREATE TABLE g5_memo (
  [me_id] int NOT NULL DEFAULT '0',
  [me_recv_mb_id] varchar(20) NOT NULL DEFAULT '',
  [me_send_mb_id] varchar(20) NOT NULL DEFAULT '',
  [me_send_datetime] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  [me_read_datetime] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  [me_memo] varchar(max) NOT NULL,
  PRIMARY KEY ([me_id])
) ;

CREATE INDEX [me_recv_mb_id] ON g5_memo ([me_recv_mb_id]);

--
-- 테이블의 덤프 데이터 `g5_memo`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_menu`
--

CREATE TABLE g5_menu (
  [me_id] int NOT NULL IDENTITY,
  [me_code] varchar(255) NOT NULL DEFAULT '',
  [me_name] varchar(255) NOT NULL DEFAULT '',
  [me_link] varchar(255) NOT NULL DEFAULT '',
  [me_target] varchar(255) NOT NULL DEFAULT '',
  [me_order] int NOT NULL DEFAULT '0',
  [me_use] smallint NOT NULL DEFAULT '0',
  [me_mobile_use] smallint NOT NULL DEFAULT '0',
  PRIMARY KEY ([me_id])
)   ;

--
-- 테이블의 덤프 데이터 `g5_menu`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_new_win`
--

CREATE TABLE g5_new_win (
  [nw_id] int NOT NULL IDENTITY,
  [nw_device] varchar(10) NOT NULL DEFAULT 'both',
  [nw_begin_time] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  [nw_end_time] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  [nw_disable_hours] int NOT NULL DEFAULT '0',
  [nw_left] int NOT NULL DEFAULT '0',
  [nw_top] int NOT NULL DEFAULT '0',
  [nw_height] int NOT NULL DEFAULT '0',
  [nw_width] int NOT NULL DEFAULT '0',
  [nw_subject] varchar(max) NOT NULL,
  [nw_content] varchar(max) NOT NULL,
  [nw_content_html] smallint NOT NULL DEFAULT '0',
  PRIMARY KEY ([nw_id])
)   ;

--
-- 테이블의 덤프 데이터 `g5_new_win`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_point`
--

CREATE TABLE g5_point (
  [po_id] int NOT NULL IDENTITY,
  [mb_id] varchar(20) NOT NULL DEFAULT '',
  [po_datetime] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  [po_content] varchar(255) NOT NULL DEFAULT '',
  [po_point] int NOT NULL DEFAULT '0',
  [po_use_point] int NOT NULL DEFAULT '0',
  [po_expired] smallint NOT NULL DEFAULT '0',
  [po_expire_date] date NOT NULL DEFAULT '0000-00-00',
  [po_mb_point] int NOT NULL DEFAULT '0',
  [po_rel_table] varchar(20) NOT NULL DEFAULT '',
  [po_rel_id] varchar(20) NOT NULL DEFAULT '',
  [po_rel_action] varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY ([po_id])
)    ;
 
 CREATE INDEX [index1] ON g5_point ([mb_id],[po_rel_table],[po_rel_id],[po_rel_action]);
 CREATE INDEX [index2] ON g5_point ([po_expire_date]);

--
-- 테이블의 덤프 데이터 `g5_point`
--
set IDENTITY_INSERT g5_member OFF
set IDENTITY_INSERT g5_point ON
INSERT INTO g5_point ([po_id], [mb_id], [po_datetime], [po_content], [po_point], [po_use_point], [po_expired], [po_expire_date], [po_mb_point], [po_rel_table], [po_rel_id], [po_rel_action]) VALUES
(1, 'admin', '2018-06-25 10:08:49', '2018-06-25 첫로그인', 100, 0, 0, '9999-12-31', 100, '@login', 'admin', '2018-06-25');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_poll`
--

CREATE TABLE g5_poll (
  [po_id] int NOT NULL IDENTITY,
  [po_subject] varchar(255) NOT NULL DEFAULT '',
  [po_poll1] varchar(255) NOT NULL DEFAULT '',
  [po_poll2] varchar(255) NOT NULL DEFAULT '',
  [po_poll3] varchar(255) NOT NULL DEFAULT '',
  [po_poll4] varchar(255) NOT NULL DEFAULT '',
  [po_poll5] varchar(255) NOT NULL DEFAULT '',
  [po_poll6] varchar(255) NOT NULL DEFAULT '',
  [po_poll7] varchar(255) NOT NULL DEFAULT '',
  [po_poll8] varchar(255) NOT NULL DEFAULT '',
  [po_poll9] varchar(255) NOT NULL DEFAULT '',
  [po_cnt1] int NOT NULL DEFAULT '0',
  [po_cnt2] int NOT NULL DEFAULT '0',
  [po_cnt3] int NOT NULL DEFAULT '0',
  [po_cnt4] int NOT NULL DEFAULT '0',
  [po_cnt5] int NOT NULL DEFAULT '0',
  [po_cnt6] int NOT NULL DEFAULT '0',
  [po_cnt7] int NOT NULL DEFAULT '0',
  [po_cnt8] int NOT NULL DEFAULT '0',
  [po_cnt9] int NOT NULL DEFAULT '0',
  [po_etc] varchar(255) NOT NULL DEFAULT '',
  [po_level] smallint NOT NULL DEFAULT '0',
  [po_point] int NOT NULL DEFAULT '0',
  [po_date] date NOT NULL DEFAULT '0000-00-00',
  [po_ips] varchar(max) NOT NULL,
  [mb_ids] varchar(max) NOT NULL,
  PRIMARY KEY ([po_id])
)   ;

--
-- 테이블의 덤프 데이터 `g5_poll`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_poll_etc`
--

CREATE TABLE g5_poll_etc (
  [pc_id] int NOT NULL DEFAULT '0',
  [po_id] int NOT NULL DEFAULT '0',
  [mb_id] varchar(20) NOT NULL DEFAULT '',
  [pc_name] varchar(255) NOT NULL DEFAULT '',
  [pc_idea] varchar(255) NOT NULL DEFAULT '',
  [pc_datetime] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY ([pc_id])
) ;

--
-- 테이블의 덤프 데이터 `g5_poll_etc`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_popular`
--

CREATE TABLE g5_popular (
  [pp_id] int NOT NULL IDENTITY,
  [pp_word] varchar(50) NOT NULL DEFAULT '',
  [pp_date] date NOT NULL DEFAULT '0000-00-00',
  [pp_ip] varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY ([pp_id]),
  CONSTRAINT [index1] UNIQUE  ([pp_date],[pp_word],[pp_ip])
)   ;

--
-- 테이블의 덤프 데이터 `g5_popular`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_qa_config`
--

CREATE TABLE g5_qa_config (
  [qa_title] varchar(255) NOT NULL DEFAULT '',
  [qa_category] varchar(255) NOT NULL DEFAULT '',
  [qa_skin] varchar(255) NOT NULL DEFAULT '',
  [qa_mobile_skin] varchar(255) NOT NULL DEFAULT '',
  [qa_use_email] smallint NOT NULL DEFAULT '0',
  [qa_req_email] smallint NOT NULL DEFAULT '0',
  [qa_use_hp] smallint NOT NULL DEFAULT '0',
  [qa_req_hp] smallint NOT NULL DEFAULT '0',
  [qa_use_sms] smallint NOT NULL DEFAULT '0',
  [qa_send_number] varchar(255) NOT NULL DEFAULT '0',
  [qa_admin_hp] varchar(255) NOT NULL DEFAULT '',
  [qa_admin_email] varchar(255) NOT NULL DEFAULT '',
  [qa_use_editor] smallint NOT NULL DEFAULT '0',
  [qa_subject_len] int NOT NULL DEFAULT '0',
  [qa_mobile_subject_len] int NOT NULL DEFAULT '0',
  [qa_page_rows] int NOT NULL DEFAULT '0',
  [qa_mobile_page_rows] int NOT NULL DEFAULT '0',
  [qa_image_width] int NOT NULL DEFAULT '0',
  [qa_upload_size] int NOT NULL DEFAULT '0',
  [qa_insert_content] varchar(max) NOT NULL,
  [qa_include_head] varchar(255) NOT NULL DEFAULT '',
  [qa_include_tail] varchar(255) NOT NULL DEFAULT '',
  [qa_content_head] varchar(max) NOT NULL,
  [qa_content_tail] varchar(max) NOT NULL,
  [qa_mobile_content_head] varchar(max) NOT NULL,
  [qa_mobile_content_tail] varchar(max) NOT NULL,
  [qa_1_subj] varchar(255) NOT NULL DEFAULT '',
  [qa_2_subj] varchar(255) NOT NULL DEFAULT '',
  [qa_3_subj] varchar(255) NOT NULL DEFAULT '',
  [qa_4_subj] varchar(255) NOT NULL DEFAULT '',
  [qa_5_subj] varchar(255) NOT NULL DEFAULT '',
  [qa_1] varchar(255) NOT NULL DEFAULT '',
  [qa_2] varchar(255) NOT NULL DEFAULT '',
  [qa_3] varchar(255) NOT NULL DEFAULT '',
  [qa_4] varchar(255) NOT NULL DEFAULT '',
  [qa_5] varchar(255) NOT NULL DEFAULT '',
  [as_admin] varchar(255) NOT NULL DEFAULT '',
  [as_editor] varchar(255) NOT NULL DEFAULT '',
  [as_mobile_editor] varchar(255) NOT NULL DEFAULT ''
) ;

--
-- 테이블의 덤프 데이터 `g5_qa_config`
--
set IDENTITY_INSERT g5_point OFF
--set IDENTITY_INSERT g5_qa_config ON
INSERT INTO g5_qa_config ([qa_title], [qa_category], [qa_skin], [qa_mobile_skin], [qa_use_email], [qa_req_email], [qa_use_hp], [qa_req_hp], [qa_use_sms], [qa_send_number], [qa_admin_hp], [qa_admin_email], [qa_use_editor], [qa_subject_len], [qa_mobile_subject_len], [qa_page_rows], [qa_mobile_page_rows], [qa_image_width], [qa_upload_size], [qa_insert_content], [qa_include_head], [qa_include_tail], [qa_content_head], [qa_content_tail], [qa_mobile_content_head], [qa_mobile_content_tail], [qa_1_subj], [qa_2_subj], [qa_3_subj], [qa_4_subj], [qa_5_subj], [qa_1], [qa_2], [qa_3], [qa_4], [qa_5], [as_admin], [as_editor], [as_mobile_editor]) VALUES
('1:1문의', '회원|포인트', 'basic', 'basic', 1, 0, 1, 0, 0, '0', '', '', 1, 60, 30, 15, 15, 600, 1048576, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_qa_content`
--

CREATE TABLE g5_qa_content (
  [qa_id] int NOT NULL IDENTITY,
  [qa_num] int NOT NULL DEFAULT '0',
  [qa_parent] int NOT NULL DEFAULT '0',
  [qa_related] int NOT NULL DEFAULT '0',
  [mb_id] varchar(20) NOT NULL DEFAULT '',
  [qa_name] varchar(255) NOT NULL DEFAULT '',
  [qa_email] varchar(255) NOT NULL DEFAULT '',
  [qa_hp] varchar(255) NOT NULL DEFAULT '',
  [qa_type] smallint NOT NULL DEFAULT '0',
  [qa_category] varchar(255) NOT NULL DEFAULT '',
  [qa_email_recv] smallint NOT NULL DEFAULT '0',
  [qa_sms_recv] smallint NOT NULL DEFAULT '0',
  [qa_html] smallint NOT NULL DEFAULT '0',
  [qa_subject] varchar(255) NOT NULL DEFAULT '',
  [qa_content] varchar(max) NOT NULL,
  [qa_status] smallint NOT NULL DEFAULT '0',
  [qa_file1] varchar(255) NOT NULL DEFAULT '',
  [qa_source1] varchar(255) NOT NULL DEFAULT '',
  [qa_file2] varchar(255) NOT NULL DEFAULT '',
  [qa_source2] varchar(255) NOT NULL DEFAULT '',
  [qa_ip] varchar(255) NOT NULL DEFAULT '',
  [qa_datetime] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  [qa_1] varchar(255) NOT NULL DEFAULT '',
  [qa_2] varchar(255) NOT NULL DEFAULT '',
  [qa_3] varchar(255) NOT NULL DEFAULT '',
  [qa_4] varchar(255) NOT NULL DEFAULT '',
  [qa_5] varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY ([qa_id])
)   ;
 
 CREATE INDEX [qa_num_parent] ON g5_qa_content ([qa_num],[qa_parent]);

--
-- 테이블의 덤프 데이터 `g5_qa_content`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_scrap`
--

CREATE TABLE g5_scrap (
  [ms_id] int NOT NULL IDENTITY,
  [mb_id] varchar(20) NOT NULL DEFAULT '',
  [bo_table] varchar(20) NOT NULL DEFAULT '',
  [wr_id] varchar(15) NOT NULL DEFAULT '',
  [ms_datetime] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY ([ms_id])
)   ;
 
 CREATE INDEX [mb_id] ON g5_scrap ([mb_id]);

--
-- 테이블의 덤프 데이터 `g5_scrap`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_uniqid`
--

CREATE TABLE g5_uniqid (
  [uq_id] bigint check ([uq_id] > 0) NOT NULL,
  [uq_ip] varchar(255) NOT NULL,
  PRIMARY KEY ([uq_id])
) ;

--
-- 테이블의 덤프 데이터 `g5_uniqid`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_visit`
--

CREATE TABLE g5_visit (
  [vi_id] int NOT NULL DEFAULT '0',
  [vi_ip] varchar(255) NOT NULL DEFAULT '',
  [vi_date] date NOT NULL DEFAULT '0000-00-00',
  [vi_time] time(0) NOT NULL DEFAULT '00:00:00',
  [vi_referer] varchar(max) NOT NULL,
  [vi_agent] varchar(255) NOT NULL DEFAULT '',
  [vi_browser] varchar(255) NOT NULL DEFAULT '',
  [vi_os] varchar(255) NOT NULL DEFAULT '',
  [vi_device] varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY ([vi_id]),
) ;

CREATE INDEX [index2] ON g5_visit ([vi_date]);

--
-- 테이블의 덤프 데이터 `g5_visit`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `g5_visit_sum`
--

CREATE TABLE g5_visit_sum (
  [vs_date] date NOT NULL DEFAULT '0000-00-00',
  [vs_count] int NOT NULL DEFAULT '0',
  PRIMARY KEY ([vs_date])
) ;

CREATE INDEX [index1] ON g5_visit_sum ([vs_count]);

--
-- 테이블의 덤프 데이터 `g5_visit_sum`
--

