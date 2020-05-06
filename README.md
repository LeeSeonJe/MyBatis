# MyBatis

- 데이터의 입력, 조회, 수정, 삭제(CRUD)를 보다 편하게 하기 위해 xml로 구조화한 Mapper설정파일을 통해 JDBC를 구현한  
영속성 프레임워크

### mybatis-config.xml > DTD 등록하기

- 메뉴 Window > Preferences > XML > XML Catalog > User Specified Entries Click > Add Click
	> location : "http://mybatis.org/dtd/mybatis-3-config.dtd"
	> key : "-//mybatis.org//DTO Config 3.0//EN"


### mapper.xml > DTD 등록하기

- 메뉴 Window > Preferences > XML > XML Catalog > User Specified Entries Click > Add Click
	> location : "http://mybatis.org/dtd/mybatis-3-mapper.dtd"
	> key : "-//mybatis.org//DTO Mapper 3.0//EN"
	
	
	
### DTD 등록 후 만들기


select 결과 테이블의 컬럼 값과 vo에 만든 객체의 필드값이 다른 부분에서는 null이 나오게 된다
필