"C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE\devenv.com" Project1.sln /build Debug /project Project1.vcxproj
"C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE\devenv.com" Project1.sln /build Release /project Project1.vcxproj

mkdir package\build\native\include\Project1
copy *.h package\build\native\include\Project1

mkdir package\build\native\lib\static\v141\x64\Release
mkdir package\build\native\lib\static\v141\x64\Debug

copy x64\Debug\Project1.lib package\build\native\lib\static\v141\x64\Debug
copy x64\Debug\Project1.pdb package\build\native\lib\static\v141\x64\Debug

copy x64\Release\Project1.lib package\build\native\lib\static\v141\x64\Release



