@echo off  
title MyBatis�����������Զ����нű�
color 0a  
echo.  
echo =====================================================
echo		MyBatis�����������Զ����нű�
echo                     --Start--
echo =====================================================
echo.  
echo ��ʾ��
java -jar mybatis-generator-core-1.4.0.jar -configfile generatorConfig.xml -overwrite
echo =====================================================
echo			--End--
echo =====================================================
pause