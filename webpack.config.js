let path = require("path");

let bundleTarget = process.env.target === "node" ? "node" : "web";
console.log("Bundle target:", bundleTarget);

module.exports = {
  entry: "./main.js",
  target: bundleTarget,
  mode: "development",
  devtool: "hidden-source-map",
  output: {
    path: path.resolve(__dirname, "js-out/"),
    filename: "bundle.js",
  },
};
