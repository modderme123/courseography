require("esbuild").build({
  entryPoints: [
    "js/search/search.jsx",
    "./js/grid/grid.jsx",
    "./js/graph/main.jsx",
    "./js/post/post.jsx",
    "./js/draw/main.jsx",
    "./js/generate/generate.jsx",
    "./style/app.css",
  ],
  outdir: "public",
  bundle: true,
  watch: true,
  plugins: [
    {
      name: "alias",
      setup(build) {
        build.onResolve({ filter: /^(react|react-dom)$/ }, () => ({
          path: require.resolve("preact/compat"),
        }))
      },
    },
  ],
})
