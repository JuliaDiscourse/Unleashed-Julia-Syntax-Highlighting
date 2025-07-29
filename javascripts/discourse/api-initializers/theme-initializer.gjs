/* eslint-disable no-unused-vars */

import { apiInitializer } from "discourse/lib/api";

export default apiInitializer((api) => {
  api.registerHighlightJSLanguage("julia", function (hljs) {
    return {
      case_insensitive: false,
    };
  });
  api.registerHighlightJSLanguage("julia-repl", function (hljs) {
    return {
      case_insensitive: false,
    };
  });
  // Register meta-language that auto-detects between julia and julia-repl
  api.registerHighlightJSLanguage("julia-auto", function (hljs) {
    return {
      case_insensitive: false,
      aliases: ["julia-detect"],
      subLanguage: ["julia", "julia-repl"]
    };
  });
});
