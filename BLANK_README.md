<a id="readme-top"></a>
<!--
*** Blank template. Run a search & replace for these tokens, then delete this block:
***   {{github_username}}, {{repo_name}}, {{project_title}}, {{project_description}},
***   {{project_license}}, {{demo_url}}, {{your_name}}, {{twitter_handle}}, {{linkedin_username}},
***   {{email_client}}, {{email}}, {{buymeacoffee_username}}
*** `grep -n '{{' README.md` lists any you missed. Delete any section you don't need, and
*** its line in the Table of Contents. Reference-style links at the bottom stay as-is.
-->



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/{{github_username}}/{{repo_name}}">
    <img src="images/logo.svg" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">{{project_title}}</h3>

<!-- PROJECT SHIELDS — keep the blank lines around this block and no indent -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

  <p align="center">
    {{project_description}}
    <br />
    <a href="https://github.com/{{github_username}}/{{repo_name}}"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="{{demo_url}}">View Demo</a>
    &middot;
    <a href="https://github.com/{{github_username}}/{{repo_name}}/issues/new?labels=bug&template=bug-report.md">Report Bug</a>
    &middot;
    <a href="https://github.com/{{github_username}}/{{repo_name}}/issues/new?labels=enhancement&template=feature-request.md">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#features">Features</a></li>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li><a href="#quick-start">Quick Start</a></li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#configuration">Configuration</a></li>
    <li><a href="#troubleshooting">Troubleshooting</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#support">Support</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]]({{demo_url}})

What problem does this project solve? One or two sentences.

Here's why:

* Reason one
* Reason two
* Reason three

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Features

- **🌍 Feature one:** What it does in one clear line
- **🔧 Feature two:** What it does in one clear line
- **📱 Feature three:** What it does in one clear line

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With

* [![Tech][Tech-shield]][Tech-url]
* [![Tech2][Tech2-shield]][Tech2-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- QUICK START — five commands or fewer from zero to a working result -->
## Quick Start

```sh
git clone https://github.com/{{github_username}}/{{repo_name}}.git
cd {{repo_name}}
npm install
npm start
```

That's it. Open http://localhost:3000 and you should see the app running.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

Instructions for getting a local copy up and running.

### Prerequisites

* npm
  ```sh
  npm install npm@latest -g
  ```

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/{{github_username}}/{{repo_name}}.git
   ```
2. Install packages
   ```sh
   npm install
   ```
3. Configure `config.js`
   ```js
   const API_KEY = 'ENTER YOUR API';
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

Show a basic example first, then an advanced one. Include the output so readers
know what success looks like.

### Basic Example

```js
import { createApp } from '{{repo_name}}';

createApp({ port: 3000 }).start();
// Server running at http://localhost:3000
```

### Advanced Example

```js
import { createApp, plugins } from '{{repo_name}}';

createApp({
  port: process.env.APP_PORT || 3000,
  plugins: [plugins.auth(), plugins.rateLimit({ max: 100 })],
}).start();
```

_For more examples, please refer to the [Documentation]({{demo_url}})_

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONFIGURATION — delete if there is nothing to configure -->
## Configuration

| Option | Type | Default | Description |
|--------|------|---------|-------------|
| `port` | number | `3000` | Port the server listens on |
| `debug` | boolean | `false` | Print debug logs |
| `timeout` | number | `30000` | Request timeout in milliseconds |

### Environment Variables

```sh
APP_PORT=8080
APP_DEBUG=true
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- TROUBLESHOOTING — the 3 to 5 errors users actually hit -->
## Troubleshooting

**Error: `Cannot find module`**

Reinstall dependencies:

```sh
rm -rf node_modules package-lock.json
npm install
```

**Error: `Port 3000 is already in use`**

Start on another port: `APP_PORT=8080 npm start`

**Still stuck?** Search the [open issues](https://github.com/{{github_username}}/{{repo_name}}/issues)
or [open a new one](https://github.com/{{github_username}}/{{repo_name}}/issues/new?labels=bug&template=bug-report.md).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

- [ ] Feature 1
- [ ] Feature 2
    - [ ] Nested Feature

See the [open issues](https://github.com/{{github_username}}/{{repo_name}}/issues) for a full
list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community an amazing place to learn,
inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Top contributors:

<a href="https://github.com/{{github_username}}/{{repo_name}}/graphs/contributors">
  <img src="https://contrib.rocks/image?repo={{github_username}}/{{repo_name}}" alt="contrib.rocks image" />
</a>

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- SUPPORT -->
## Support

Like this project? A coffee keeps it going — every cup funds issues, fixes, and
new features.

<div align="center">
  <a href="https://www.buymeacoffee.com/{{buymeacoffee_username}}" target="_blank">
    <img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" width="217" height="60">
  </a>
</div>

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the {{project_license}} License. See `LICENSE` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

{{your_name}} - [@{{twitter_handle}}](https://twitter.com/{{twitter_handle}}) - {{email}}@{{email_client}}.com

Project Link: [https://github.com/{{github_username}}/{{repo_name}}](https://github.com/{{github_username}}/{{repo_name}})

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Choose an Open Source License](https://choosealicense.com)
* [GitHub Emoji Cheat Sheet](https://github.com/ikatyang/emoji-cheat-sheet)
* [Img Shields](https://shields.io)
* [GitHub Pages](https://pages.github.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/{{github_username}}/{{repo_name}}.svg?style=for-the-badge
[contributors-url]: https://github.com/{{github_username}}/{{repo_name}}/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/{{github_username}}/{{repo_name}}.svg?style=for-the-badge
[forks-url]: https://github.com/{{github_username}}/{{repo_name}}/network/members
[stars-shield]: https://img.shields.io/github/stars/{{github_username}}/{{repo_name}}.svg?style=for-the-badge
[stars-url]: https://github.com/{{github_username}}/{{repo_name}}/stargazers
[issues-shield]: https://img.shields.io/github/issues/{{github_username}}/{{repo_name}}.svg?style=for-the-badge
[issues-url]: https://github.com/{{github_username}}/{{repo_name}}/issues
[license-shield]: https://img.shields.io/github/license/{{github_username}}/{{repo_name}}.svg?style=for-the-badge
[license-url]: https://github.com/{{github_username}}/{{repo_name}}/blob/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/{{linkedin_username}}
[product-screenshot]: images/screenshot.svg
[Tech-shield]: https://img.shields.io/badge/Tech-000000?style=for-the-badge&logo=Tech&logoColor=white
[Tech-url]: https://example.com
[Tech2-shield]: https://img.shields.io/badge/Tech2-000000?style=for-the-badge&logo=Tech2&logoColor=white
[Tech2-url]: https://example.com
