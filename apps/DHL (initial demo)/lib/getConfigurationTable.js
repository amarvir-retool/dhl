return Object.keys({{getCalendar.value}}).map(datum => ({
      'mhe_time': datum,
      'subweeks': {{ getCalendar.value }}[datum],
      'adj_mhe': 0,
      'app_mhe': 0
}))