@echo off
:retry

echo Welcome to the JS/TS/REACT Bootstrapper!!!
set /p lang="Enter J for JS, or T for TS, or R for REACT: "
set tee=T
set jay=J
set react=R

if %lang% EQU %tee% GOTO START
if %lang% EQU %jay% GOTO START
if %lang% EQU %react% GOTO START

echo Invalid Entry, try again
GOTO error

:START
echo Application Directory
echo %~dp0
chdir %~dp0
echo Current Working Directory
echo %cd%


echo Install NPM modules

call npm init -y
call npm install webpack webpack-cli --save-dev
call npm install html-webpack-plugin --save-dev
call npm install css-loader style-loader --save-dev
call npm i webpack-dev-server --save-dev
call npm i json --save-dev

if %lang% EQU %tee% GOTO T1
if %lang% EQU %jay% GOTO J1

:R1
call npm install react react-dom
call npm i -D @babel/core @babel/preset-env @babel/preset-react babel-loader
GOTO J1

:T1
call npm install --save-dev typescript ts-loader

:J1

echo creating file structure
md src
md build
cd src
md assets

if %lang% EQU %tee% GOTO T2
if %lang% EQU %jay% GOTO J2

:R2
echo creating /src/index.js

echo import React from "react";>index.js
echo import ReactDOM from "react-dom";>>index.js
echo import App from "./App";>>index.js
echo ReactDOM.render(^<App /^>, document.getElementById("app"));>>index.js
GOTO NEXT2

:T2
echo creating /src/index.ts
echo import './style.css';>index.ts
echo console.log(`Hello World`);>>index.ts

echo //include all image types for TS importing>imgtypes.d.ts
echo declare module "*.jpg";>imgtypes.d.ts
echo declare module "*.jpeg";>imgtypes.d.ts
echo declare module "*.png";>imgtypes.d.ts


GOTO NEXT2

:J2
echo creating /src/index.js
echo import './style.css';>index.js
echo console.log(`Hello World`);>>index.js

:NEXT2

cd ..

echo creating webpack.config.js file in root

echo const path = require('path')>webpack.config.js 
echo const mode = process.env.NODE_ENV == "production" ? "production" : "development" >> webpack.config.js
echo const HtmlWebpackPlugin = require('html-webpack-plugin')>>webpack.config.js
echo. >>webpack.config.js
echo module.exports = {>>webpack.config.js
echo   entry: {>>webpack.config.js  
if %lang% EQU %tee% GOTO T3
if %lang% EQU %jay% GOTO J3
if %lang% EQU %react% GOTO J3
:T3
echo     index: path.resolve(__dirname, './src/index.ts')>>webpack.config.js 
GOTO next3
:J3
echo     index: path.resolve(__dirname, './src/index.js')>>webpack.config.js 
:next3
echo   },>>webpack.config.js 
echo   output: {>>webpack.config.js" 
echo       path: path.resolve(__dirname, './build'),>>webpack.config.js 
echo       filename: '[name].bundle.js'>>webpack.config.js 
echo     },>>webpack.config.js 
echo   mode: mode,>>webpack.config.js
echo   module: {>>webpack.config.js 
echo     rules: [>>webpack.config.js 
echo     {>>webpack.config.js 
echo         test: /\.css$/,>>webpack.config.js 
echo         use: ['style-loader', 'css-loader']>>webpack.config.js 
echo     },>>webpack.config.js 
echo     {>>webpack.config.js
echo         test: /\.(?:ico^|gif^|png^|jpg^|jpeg)$/i, >>webpack.config.js 
echo         type: 'asset/resource',>>webpack.config.js 
echo     },>>webpack.config.js

if %lang% EQU %tee% GOTO T4
if %lang% EQU %jay% GOTO J4

:R4
echo     {>>webpack.config.js
echo           test: /\.(js^|jsx)$/, >>webpack.config.js
echo           exclude: /node_modules/, >>webpack.config.js
echo           use: {>>webpack.config.js
echo              loader: "babel-loader",>>webpack.config.js
echo              options: {>>webpack.config.js
echo                presets: ["@babel/preset-env", "@babel/preset-react"],>>webpack.config.js
echo              },>>webpack.config.js
echo           },>>webpack.config.js
echo     },>>webpack.config.js
GOTO J4

:T4
echo     {>>webpack.config.js
echo         test: /\.tsx?$/, >>webpack.config.js 
echo         use: 'ts-loader', >>webpack.config.js 
echo         exclude: /node_modules/, >>webpack.config.js 
echo     },>>webpack.config.js

:J4
echo     ],>>webpack.config.js 
echo     },>>webpack.config.js 

if %lang% EQU %tee% GOTO T5
if %lang% EQU %jay% GOTO J5
if %lang% EQU %react% GOTO J5

:T5
echo     devtool: 'inline-source-map',>>webpack.config.js
echo     resolve: {>>webpack.config.js 
echo     extensions: ['.tsx', '.ts', '.js'],>>webpack.config.js 
echo     },>>webpack.config.js 

:J5
echo   devtool: 'inline-source-map',>>webpack.config.js
echo   plugins: [ >>webpack.config.js  
echo      new HtmlWebpackPlugin({ >>webpack.config.js  
echo      template: path.resolve(__dirname, "./src/template.html") >>webpack.config.js  
echo   }) >>webpack.config.js  
echo   ],>>webpack.config.js  
echo } >>webpack.config.js 


if %lang% EQU %tee% GOTO T6
if %lang% EQU %jay% GOTO J6
if %lang% EQU %react% GOTO R6

:T6
echo creating tsconfig.json file in root
echo {  >tsconfig.json
echo  "compilerOptions": { >>tsconfig.json
echo    "outDir": "./build/",>>tsconfig.json
echo    "sourceMap": true, >>tsconfig.json
echo    "noImplicitAny": true,>>tsconfig.json
echo    "module": "es6",>>tsconfig.json
echo    "target": "es5",>>tsconfig.json
echo    "jsx": "react",>>tsconfig.json
echo    "allowJs": true,>>tsconfig.json
echo    "moduleResolution": "node">>tsconfig.json
echo    }>>tsconfig.json
echo  }>>tsconfig.json
GOTO J6

:R6
echo creating .babelrc file in root
echo {>.babelrc 
echo   "presets": [>>.babelrc
echo     "@babel/preset-env",>>.babelrc
echo     "@babel/preset-react">>.babelrc
echo   ]>>.babelrc
echo }>>.babelrc

echo creating .eslintrc file in root
echo {>.eslintrc
echo   "parser": "babel-eslint",>>.eslintrc
echo   "extends": "react",>>.eslintrc
echo   "env": {>>.eslintrc
echo     "browser": true,>>.eslintrc
echo     "node": true>>.eslintrc
echo   },>>.eslintrc
echo   "settings": {>>.eslintrc
echo     "react": {>>.eslintrc
echo       "version": "detect">>.eslintrc
echo     }>>.eslintrc
echo   }>>.eslintrc
echo }>>.eslintrc

cd src
echo creating /src/App.js

echo import React from "react"; >App.js
echo import './style.css'; >>App.js
echo export default function App() { >>App.js
echo return ^<h1^>Hello World^</h1^>; >>App.js
echo } >>App.js
cd ..

:J6

echo creating .gitignore file

echo node_modules>.gitignore
echo build>>.gitignore
echo webpackstarter.bat>>.gitignore

echo creating /src/template.html

cd src
echo ^<!DOCTYPE html^> >template.html
echo ^<html^> >>template.html
echo ^<head^> >>template.html
echo ^<meta charset="UTF-8"^> >>template.html
if %lang% EQU %tee% echo ^<title^>Hello TYPESCRIPT^</title^> >>template.html 
if %lang% EQU %jay% echo ^<title^>Hello JAVASCRIPT^</title^> >>template.html
if %lang% EQU %react% echo ^<title^>Hello World^</title^> >>template.html   
echo ^</head^> >>template.html
echo ^<body^> >>template.html
if %lang% EQU %react% echo  ^<div id="app"^>^</div^> >>template.html
echo ^</body^> >>template.html
echo ^</html^> >>template.html

echo creating /src/style.css

echo /*style.css*/ >style.css

cd ..
call npx json -I -f package.json -e "this.scripts.build=\"webpack\""
call npx json -I -f package.json -e "this.scripts.start=\"webpack serve --open\""



if %lang% EQU %tee% GOTO T7
if %lang% EQU %jay% GOTO J7

:T7
call npx json -I -f package.json -e "this.main=\"./src/index.ts\""
GOTO next4
:J7
call npx json -I -f package.json -e "this.main=\"./src/index.js\""

:next4


npm run start
echo COMPLETED!!!!