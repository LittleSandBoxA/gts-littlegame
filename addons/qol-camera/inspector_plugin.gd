tool
extends EditorInspectorPlugin

class_name CameraInspectorPlugin

var plugin

func can_handle(object):
    return object is Camera

func parse_category(object, category):
    if category == 'Camera':
        var prop = ViewLockProperty.new()
        prop.plugin = plugin
        prop.camera = object
        add_custom_control(prop)
