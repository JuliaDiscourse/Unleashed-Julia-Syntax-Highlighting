/* eslint-disable no-unused-vars */

import { apiInitializer } from "discourse/lib/api";
import { julia } from "./languages/julia.js";
import { juliaRepl } from "./languages/julia-repl.js";

export default apiInitializer((api) => {
  api.registerHighlightJSLanguage("julia", julia);
  api.registerHighlightJSLanguage("julia-repl", juliaRepl);
  // Register meta-language that auto-detects between julia and julia-repl
  api.registerHighlightJSLanguage("julia-auto", function (hljs) {
    return {
      case_insensitive: false,
      aliases: ["julia-detect"],
      subLanguage: ["julia", "julia-repl"],
    };
  });
});
