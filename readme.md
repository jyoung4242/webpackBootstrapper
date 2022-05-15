
[![Twitter URL](https://img.shields.io/twitter/url/https/twitter.com/bukotsunikki.svg?style=social&label=Follow%20%40jyoung424242)](https://twitter.com/jyoung424242)

<h4 align="center">Simple Batch File that bootstraps a webpack project, either JS or TS</h4>

![Screenshot](/bootstrap.png?raw=true "Screenshot")

# 👋 Introducing `WebpackBootstrapper`

`WebpackBootstrapper` is an simple .BAT file to create a preconfigured, webpack framework so you don't have to worry about simple bundling....

# Demo on Youtube
 - https://youtu.be/m1zYOhrmdKk    Javascript example
 - https://youtu.be/IRboPZac_Q8    Typescript example

# 🔥 Features
`WebpackBootstrapper` comes with a bundle of features already. You can do the followings with it,

## 🔢 Basic project bundling
 - Allows for JS or TS file bundling to a template.html file

## 🏗️ Import images
- Allows for images to be imported as assets

```js
import koala from './assets/koala.png'
```

## 📢 Allows for bundling of CSS too

```js
import './styles.css'
```

## 💘 HTML template
- Don't even need to create your HTML template, its included

```html
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Hello World</title>
    </head>
    <body></body>
</html>
```

## ✨ Builds to Javascript or TypeScript
- Prompts user for a 'J' or a 'T' at the beginning, and does all the rest for you!!!!
- Creates default webpack.config.js, package.json, and tsconfig.json files for you!
- Builds src and build folder structure, so YOU DON'T HAVE TO YEAH!!!!

## 🔍 no NPM mining
- all the NPM dev dependencies are automated
 - including:
  - css-loader, ts-loader, html-webpack-plugin, json, dev-server, cli tools... etc 

## Getting Started!!!!
1. Download .bat file from repo

2. Create new project directory and navigate to it in vscode (or your IDE of choice)

3. Place BAT file into new project directory

4. run the bat file... this can be done out of vscode

```bash
./webpackstarter.bat
```

5. Answer the prompt, T or J
6. go get a coffee, process takes about 90 seconds
7. Run dev server or build

```bash
npm run start
```
or
```bash
npm run build
```
