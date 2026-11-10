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
