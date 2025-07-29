import DiscourseRecommendedTheme from "@discourse/lint-configs/eslint-theme";

export default [
  {
    ignores: ["javascripts/discourse/api-initializers/languages/*.js"]
  },
  ...DiscourseRecommendedTheme
];
