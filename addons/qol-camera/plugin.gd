tool
extends EditorPlugin

var inspector_plugin
var camera

func handles(object):
    return object is Camera

func forward_spatial_gui_input(camera, event):
    self.camera = camera
    return false

func _enter_tree():
    inspector_plugin = CameraInspectorPlugin.new()
    inspector_plugin.plugin = self
    add_inspector_plugin(inspector_plugin)

func _exit_tree():
    remove_inspector_plugin(inspector_plugin)
