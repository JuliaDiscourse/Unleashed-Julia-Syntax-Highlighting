import DiscourseRecommendedTheme from "@discourse/lint-configs/eslint-theme";

export default [
  {
    ignores: ["src/languages/*.js"]
  },
  ...DiscourseRecommendedTheme
];
