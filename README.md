# Astro frameworks experiment
```
npm i
npm start
```
The inital Elm compilation succeeds, but then an error is thrown claiming not to be able to find `components/elm/Counter.elm`

However, the basic Hello World example works. To see this:

in `src/pages/index.astro`
- Uncomment lines 3 and 11
- Comment lines 4 and 10
- Save
- Run `npm start`

Related docs:
- [Astro frameworks docs](https://docs.astro.build/en/core-concepts/framework-components/)
- [Astro Elm integration docs](https://github.com/angusjf/astro-integration-elm) - see the advanced section