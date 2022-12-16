code ./report.txt 
echo "===================================================================" > report.txt
echo "### Project Cleaned ###" >> report.txt
echo "===================================================================" >> report.txt
fvm flutter clean >> report.txt 

echo "===================================================================" >> report.txt
echo "### Calling Pub Get ###" >> report.txt
echo "===================================================================" >> report.txt
fvm flutter pub get >> report.txt

echo "===================================================================" >> report.txt
echo "### Generate Localization files ###" >> report.txt
echo "===================================================================" >> report.txt
fvm flutter gen-l10n  >> report.txt

echo "===================================================================" >> report.txt
echo "### Running Build Runner for Models and Retrofit ###" >> report.txt
echo "===================================================================" >> report.txt
fvm flutter pub run build_runner build --delete-conflicting-outputs >> report.txt

echo "===================================================================" >> report.txt
echo "### Creating Launcher Icons assets ###" >> report.txt
echo "===================================================================" >> report.txt
fvm flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons* >> report.txt

echo "===================================================================" >> report.txt
echo "### Reporting code metrics, rules and anti-patterns violations ###" >> report.txt
echo "===================================================================" >> report.txt
fvm flutter pub run dart_code_metrics:metrics analyze lib  >> report.txt

echo "===================================================================" >> report.txt
echo "### Checks unused *.dart files ###" >> report.txt
echo "===================================================================" >> report.txt
fvm flutter pub run dart_code_metrics:metrics check-unused-files lib  >> report.txt

echo "===================================================================" >> report.txt
echo "### Init Process Completed ###" >> report.txt
echo "===================================================================" >> report.txt