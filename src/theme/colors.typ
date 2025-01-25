#let theme_list = ("default", "bw", "bootstrap")
#let colors_dict = (:)
#for theme in theme_list {
  colors_dict.insert(theme, json(theme + ".json"))
}

#let env_theme = state("theme", "bootstrap")
#let colors(theme_name, env_name, color_name) = {
  return rgb(colors_dict.at(theme_name).at(env_name).at(color_name))
}
