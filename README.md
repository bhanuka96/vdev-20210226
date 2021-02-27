# vdev-20210226

# You can download apk file from [here](https://drive.google.com/drive/folders/19mgLjACUnMcHVUVZxocIIxzONOlKMHX7?usp=sharing).

# Q and A
1)

```
git init
```

2)

```
echo "# new" >> README.md
```

3)

```
git commit -m "Empty project with README"
```

4)

```
git add .
```

5)

```
git branch -M main
git remote add origin https://github.com/bhanuka96/vdev-20210226.git
git push -u origin main
```

6) Guideline installation on MAC

Open terminal and create new folder called dev and clone the flutter repo from github. (you can find URL from here https://flutter.dev/docs/get-started/install/macos)

```sh
cd ~
mkdir dev
cd mkdir
git clone https://github.com/flutter/flutter.git -b stable
```

Then, you have to find which terminal you are using. you can find it from terminal title bar. if -zsh then create .zshrc file or else create .bashrc file

```sh
touch .zshrc OR touch .bashrc
```

Then open file.

```sh
open .zshrc OR open .bashrc
```

paste your flutter path and then save it.

`export PATH="$PATH:[PATH_TO_FLUTTER_GIT_DIRECTORY]/flutter/bin"`

Successfully install Flutter SDK. Now download and install android studio and xcode. afterthat open the terminal and run these command.

for Android
```sh
flutter doctor --android-licenses 
```

for Ios
```sh
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -runFirstLaunch
```

Done. check flutter doctor now.
```sh
flutter doctor -v 
```
