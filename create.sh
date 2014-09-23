meteor create my_first_meteor
rm my_first_meteor/my_first_meteor.html
cp -r src/* my_first_meteor

cd my_first_meteor
rm my_first_meteor.js
meteor remove insecure autopublish
meteor add coffeescript accounts-password accounts-ui mquandalle:jade

echo "run 'cd my_first_meteor && meteor '."
