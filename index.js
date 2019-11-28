const backgroundColor = '#323F4E'
const borderColor = '#323F4E'
const headerColor = '#3C4C5F'
const foregroundColor = '#F8F8F2'
const cursorColor = '#c0c5ce'

const colors = {
  black: backgroundColor,
  red: '#bf616a',
  green: '#a3be8c',
  yellow: '#F1FA8C',
  blue: '#56687E',
  magenta: '#BD99FF',
  cyan: '#92B6F4',
  white: foregroundColor,
  lightblack: backgroundColor,
  lightRed: '#bf616a',
  lightGreen: '#a3be8c',
  lightYellow: '#ebcb8b',
  lightBlue: '#3C4C5F',
  lightMagenta: '#b48ead',
  lightCyan: '#96b5b4',
  lightWhite: foregroundColor
}

exports.decorateConfig = config =>
  Object.assign({}, config, {
    colors,
    backgroundColor,
    foregroundColor,
    borderColor,
    cursorColor,
    css: `
      ${config.css || ''}
      /* Main background color */
      .hyperterm_main {
        background-color: ${backgroundColor} !important;
      }

      /* Tab colors */
      .tab_tab {
        color: ${foregroundColor} !important;
        background-color: ${headerColor} !important;
        border: none !important;
        border-right: 1px solid transparent !important;
        border-left: 1px solid transparent !important;
        border-bottom: 1px solid transparent !important;
        transition: border-color .4s ease !important;
        transition: background-color .4s ease !important;
      }

      /* Header colors */
      .header_header {
        background-color: ${headerColor} !important;
      }

      /* Tab emphasized when active */
      .tab_active {
        background-color: ${backgroundColor} !important;
        transition: background-color .4s ease !important;
      }
    `
  })
