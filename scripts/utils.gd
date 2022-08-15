class_name Utils

static func humanize_size(height):
	var height_human = stepify(height,0.01)
	if height < 1000:
		return str(height_human) + "m"
	elif height >= 1000:
		return str(height_human) + "km"
