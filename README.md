portalpeng
==========

简单教育门户网站

依赖coo框架（主要集成SSH框架）  地址https://github.com/Jnoee/coo.git

1.把coo导入eclipse为普通项目，右键项目->Configure->Convert to Maven Project

2.coo项目右键->运行Maven install 编译coo项目（把依赖包导入本地）

3.把当前portalpeng使用git导入eclipse项目，修改部分本地化配置如jdk，直接运行即可

4.前台页面是直接打开，后台页面是/manager.html,数据库采用mysql初始化文件在resources/mysql.sql
