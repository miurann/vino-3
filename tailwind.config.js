module.exports = {
  theme: {
    extend: {
      colors: {
        "redwine": "#db2777",
        "whitewine": "#bef264",
      },
    },
    fontFamily: {
      body: [
        'EuphemiaUCAS',
        '"Segoe UI Emoji"',
        '"Hiragino Kaku Gothic ProN"',
        '"ヒラギノ角ゴ ProN W3"',
        '"Yu Gothic"',
        'sans-serif'
      ]
    }
  },
  daisyui: {
    themes: [
      {
        mytheme: {
          "primary": "#db2777",
          "secondary": "#bef264",
          "accent": "#fb923c",
          "neutral": "#191D24",
          "base-100": "#e7d8eb",
          "info": "#3ABFF8",
          "success": "#36D399",
          "warning": "#FBBD23",
          "error": "#F87272",
        },
      },
    ],
  },
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/assets/javascripts/**/*.js'
  ],
  plugins: [require("daisyui")]
}
