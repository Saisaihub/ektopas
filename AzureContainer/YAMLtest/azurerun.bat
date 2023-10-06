@echo off

az container create --resource-group ektopasrun --name topasrungroup --file testrunfull.yml

pause