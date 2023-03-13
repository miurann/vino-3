module.exports = {
  theme: {
    extend: {
      colors: {
        "redwine": "#db2777",
        "whitewine": "#a3e635",
        "rosewine": "#fb7185",
        "otherwine": "#fbbf24"
      },
      fontFamily: {
        kalam: ["Kalam"],
        mplus: ["'M PLUS Rounded 1c'"]
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
          "primary": "#a8a29e",
          "secondary": "#fb7185",
          "accent": "#ec4899",
          "neutral": "#fcd34d",
          "base-100": "#f4ebe4",
          "info": "#93E6FB",
          "success": "#2dd4bf",
          "warning": "#fbbf24",
          "error": "#db2777",
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
  plugins: [require("@tailwindcss/typography"), require("daisyui")]
}
