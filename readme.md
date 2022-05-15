
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-5-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

<h4 align="center">Simple Batch File that bootstraps a webpack project, either JS or TS</h4>

# 👋 Introducing `WebpackBootstrapper`

`WebpackBootstrapper` is an simple .BAT file to create a preconfigured, webpack framework so you don't have to worry about simple bundling....

# 🔥 Features
`WebpackBootstrapper` comes with a bundle of features already. You can do the followings with it,

## 🔢 Basic project bundling
 - Allows for JS or TS file bundling to a template.html file

## 🏗️ Import images
- Allows for images to be imported as assets

```js
import koala from './src/assets/koala.png'
```

## 📢 Allows for bundling of CSS too

```js
import styles from './src/styles.css'
```

## 💘 Like Shapes
- Liked a shape and want to add it to your shape collection? You can do that just with a click. Want to undo? That's supported as well.

## ✨ Export Shapes
- Export the shapes to use in your application.
- Export the shapes as PNG, JPEG, and SVG files.
- Single-Click Copy of the underlying CSS and clip-path property to use directly into your web app.

## 🔍 Search Shapes
- Search a shape with key-in search.

## 🎿 Sort Shapes
- Sort shapes by, most liked, recent, and oldest.

## 🔑 Authentication & Authorization
- Features like export, like, create, edit shapes need you to authenticate with the app. You can use your Gmail or GitHub credentials to authenticate to the app. It is secured and powered by `Google Firebase`.

## 📱 Responsive and mobile-friendly
- Use `TryShape` seamlessly from any device.

# 🏗️ How to Set up `TryShape` for Development?
You can run TryShape locally with a few easy steps.

1. Clone the repository

```bash
git clone https://github.com/TryShape/tryshape.git
```

2. Change the working directory

```bash
cd tryshape
```

3. Install dependencies

```bash
npm install # or, yarn install
```

4. Create `.env` file in root and add your variables

```bash
NEXT_PUBLIC_DB_URL= YOUR_HARPER_DB_DATABASE_URL
NEXT_PUBLIC_DB_AUTHORIZATION= YOUR_HARPER_DB_AUTHORIZATION_ID

NEXT_PUBLIC_FIREBASE_AUTHORIZATION=YOUR_FIREBASE_AUTH_KEY
NEXT_PUBLIC_FIREBASE_AUTH_DOMAIN=YOUR_FIREBASE_AUTH_DOMAIN
NEXT_PUBLIC_FIREBASE_PROJECT_ID=YOUR_FIREBASE_PROJECT_ID
NEXT_PUBLIC_FIREBASE_STORAGE_BUCKET=YOUR_FIREBASE_PROJECT_BUCKET
NEXT_PUBLIC_FIREBASE_MESSAGING_SERNDER_ID=YOUR_FIREBASE_MESSAGING_SERNDER_ID
NEXT_PUBLIC_FIREBASE_APP_ID=YOUR_FIREBASE_APP_ID
NEXT_PUBLIC_FIREBASE_MEASUREMENT_ID=YOUR_FIREBASE_MEASUREMENT_ID
```

5. Run the app

```bash
npm run dev # or, yarn dev
```

That's All!!! Now open [localhost:3000](http://localhost:3000/) to see the app.

# 🍔 Built With
- [Next JS](https://nextjs.org/): The coolest React-based framework on the planet
- [Harper DB](https://harperdb.io/): A flexible Data Store
- [react-icons](https://react-icons.github.io/react-icons/): One shop for all the icons
- [react-hot-toast](https://react-hot-toast.com/): Super cool toast messages
- [firebase](https://firebase.google.com/): Authentication services
- [date-fns](https://date-fns.org/): Date formatting
- [axios](https://github.com/axios/axios): Makes API calls easy
- [react-bootstrap](https://react-bootstrap.github.io/): A popular frontend framework built-for React
- [Styled Components](https://styled-components.com/): Visual primitives for the component age
- [react-clip-path](https://github.com/atapas/react-clip-path#readme): A home grown module to handle clip-path property in a React app.
- [react-draggable](https://github.com/mzabriskie/react-draggable): Make a HTML element draggable in React
- [react-loader-spinner](https://mhnpd.github.io/react-loader-spinner/): Provides simple React SVG spinner component which can be implemented for async await operation before data loads to the view
- [react-switch](https://github.com/markusenglund/react-switch#readme): A draggable toggle-switch component for React.
- [downloadjs](http://danml.com/download.html): Trigger a download from JavaScript
- [html-to-image](https://github.com/bubkoo/html-to-image#readme): Converts an HTML element to image
- [Vercel](http://vercel.com/): Best for Hosting a Next.js app

# 🛡️ License
This project is licensed under the MIT License - see the [`LICENSE`](LICENSE) file for details.

# 🦄 Upcoming Features
`TryShape` has all the potentials to grow further. Here are some of the upcoming features planned(not in any order),

- ✔️ Add the ability to create shape using SVG elements to support Curvy Node adjustments.
- ✔️ Manage your shape collection
- ✔️ Import shapes
- ✔️ Following a contributor.
- ✔️ PWA(Progressive Web App)
- ✔️ Flexible Datastore
- ✔️ Better Performance
- ✔️ Tagging a shape
- ✔️ Cloning a shape
- ✔️ Provide comment on a shape.
- ✔️ More authetication mechanisms like twitter, facebook, etc.

If you find something is missing, `TryShape` is listening. Please create a feature request [from here](https://github.com/TryShape/tryshape/issues/new/choose).

# 🏃‍♀️ Deploy

<a href="https://vercel.com/new/project?template=https://github.com/TryShape/tryshape">
<img src="https://vercel.com/button" height="37.5px" />
</a>
<a href="https://app.netlify.com/start/deploy?repository=https://github.com/TryShape/tryshape">
<img src="https://www.netlify.com/img/deploy/button.svg" height="37.5px" />
</a>


# 🤝 Contributing to `TryShape`
Any kind of positive contribution is welcome! Please help us to grow by contributing to the project.

If you wish to contribute, you can work on any features [listed here](https://github.com/TryShape/tryshape#-upcoming-features) or create one on your own. After adding your code, please send us a Pull Request.

> Please read [`CONTRIBUTING`](CONTRIBUTING.md) for details on our [`CODE OF CONDUCT`](CODE_OF_CONDUCT.md), and the process for submitting pull requests to us.

# 🙏 Support

We all need support and motivation. `TryShape` is not an exception. Please give this project a ⭐️ to encourage and show that you liked it. Don't forget to leave a star ⭐️ before you move away.

If you found the app helpful, consider supporting us with a coffee.

<a href="https://www.buymeacoffee.com/greenroots">
    <img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" height="50px">
</a>

---

<h3 align="center">
A ⭐️ to <b>TryShape</b> is to build its triceps 💪 stronger.
</h3>


## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://tapasadhikary.com"><img src="https://avatars.githubusercontent.com/u/3633137?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Tapas Adhikary</b></sub></a><br /><a href="https://github.com/TryShape/tryshape/commits?author=atapas" title="Code">💻</a> <a href="#infra-atapas" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="https://github.com/TryShape/tryshape/commits?author=atapas" title="Tests">⚠️</a> <a href="#blog-atapas" title="Blogposts">📝</a> <a href="#ideas-atapas" title="Ideas, Planning, & Feedback">🤔</a> <a href="#mentoring-atapas" title="Mentoring">🧑‍🏫</a> <a href="#platform-atapas" title="Packaging/porting to new platform">📦</a> <a href="#projectManagement-atapas" title="Project Management">📆</a></td>
    <td align="center"><a href="https://github.com/nirmalkc"><img src="https://avatars.githubusercontent.com/u/6359059?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Nirmal Kumar</b></sub></a><br /><a href="https://github.com/TryShape/tryshape/commits?author=nirmalkc" title="Tests">⚠️</a> <a href="https://github.com/TryShape/tryshape/commits?author=nirmalkc" title="Code">💻</a> <a href="#design-nirmalkc" title="Design">🎨</a></td>
    <td align="center"><a href="https://github.com/williamzhu17"><img src="https://avatars.githubusercontent.com/u/77871333?v=4?s=100" width="100px;" alt=""/><br /><sub><b>William Zhu</b></sub></a><br /><a href="https://github.com/TryShape/tryshape/commits?author=williamzhu17" title="Tests">⚠️</a> <a href="https://github.com/TryShape/tryshape/commits?author=williamzhu17" title="Code">💻</a></td>
    <td align="center"><a href="https://savio.xyz/"><img src="https://avatars.githubusercontent.com/u/61895712?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Savio Martin</b></sub></a><br /><a href="https://github.com/TryShape/tryshape/commits?author=saviomartin" title="Tests">⚠️</a> <a href="https://github.com/TryShape/tryshape/commits?author=saviomartin" title="Code">💻</a> <a href="https://github.com/TryShape/tryshape/issues?q=author%3Asaviomartin" title="Bug reports">🐛</a></td>
    <td align="center"><a href="http://www.sangamone.com"><img src="https://avatars.githubusercontent.com/u/7517545?v=4?s=100" width="100px;" alt=""/><br /><sub><b>ckuthyar</b></sub></a><br /><a href="https://github.com/TryShape/tryshape/issues?q=author%3Ackuthyar" title="Bug reports">🐛</a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
