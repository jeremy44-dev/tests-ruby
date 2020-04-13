def time_string(secondes)
  secondes_format = secondes % 60
  minutes = (secondes / 60) % 60
  heures = secondes / (60 * 60)

  return format("%02d:%02d:%02d", heures, minutes, secondes_format)
end
