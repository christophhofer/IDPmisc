#!/bin/bash
# ---------------------------------------

set pckg=IDPmisc
set version=1.1.21

echo Removing outdated directories ------------------------------
if exist %pckg%.Rcheck rmdir %pckg%.Rcheck /S/Q


R CMD build --resave-data %pckg%
if errorlevel 1 goto error

echo ------------------------------------------------------------
echo ------------------------------------------------------------
echo Checking package -------------------------------------------
R CMD check --as-cran %pckg%_%version%.tar.gz
if errorlevel 1 goto error

echo ------------------------------------------------------------
echo ------------------------------------------------------------
echo Installing package -----------------------------------------
R CMD INSTALL --build %pckg%_%version%.tar.gz
if errorlevel 1 goto error

echo ------------------------------------------------------------
echo ------------------------------------------------------------
echo OK. Check log file for warnings!
goto End

:error
echo off
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo !!!!!!!!!!!!!! There exists at least one ERROR !!!!!!!!!!!!!
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

:End