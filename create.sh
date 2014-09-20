meteor create my_first_meteor
cp -r src/* my_first_meteor

cd my_first_meteor
rm my_first_meteor.js
meteor remove insecure
meteor remove autopublish
meteor add coffeescript

echo "run 'cd my_first_meteor && meteor '."
