import globals from "globals";
import pluginJs from "@eslint/js";
// import { FlatCompat } from "@eslint/eslintrc";

export default [
  {files: ["**/*.js"], languageOptions: {sourceType: "script"}},
  {languageOptions: { globals: globals.node }},
  {ignores: ["src/test/"]},
  pluginJs.configs.recommended,
];