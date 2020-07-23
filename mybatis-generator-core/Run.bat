@echo off  
title MyBatis代码生成器自动运行脚本
color 0a  
echo.  
echo =====================================================
echo		MyBatis代码生成器自动运行脚本
echo                     --Start--
echo =====================================================
echo.  
echo 提示：
java -jar mybatis-generator-core-1.4.0.jar -configfile generatorConfig.xml -overwrite
echo =====================================================
echo			--End--
echo =====================================================
pause