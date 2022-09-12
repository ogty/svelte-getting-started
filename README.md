<h1 align="center">Svelte Getting Started</h1>

```zsh
$ npm install
$ npm run astro add svelte
$ npm install --save-dev prettier-plugin-svelte prettier
```

**`.prettierrc.js`**

```diff
  module.exports = {
    printWidth: 100,
    tabWidth: 2,
    singleQuote: true,
    semi: true,
    trailingComma: 'all',
-   plugins: [require.resolve('prettier-plugin-astro')],
+   plugins: [
+     require.resolve('prettier-plugin-astro'),
+     require.resolve('prettier-plugin-svelte'),
+   ],
  };
```

**`package.json`**

```diff
    ...
    "scripts": {
      "dev": "astro dev",
      "start": "astro dev",
      "build": "astro build",
      "preview": "astro preview",
      "astro": "astro",
-       "format": "prettier --write \"src/**/*.astro\""
+       "format": "prettier --write \"src/**/*.{astro,svelte}\""
    },
    ...
```
