<!-- TROUBLESHOOTING — the 3 to 5 errors users actually hit, each with its fix.
*** Place it after Configuration (or Usage), before Roadmap. -->
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
