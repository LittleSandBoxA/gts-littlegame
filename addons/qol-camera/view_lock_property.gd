tool
extends EditorProperty

class_name ViewLockProperty

const STORED_KEYS = [
    'keep_aspect',
    'h_offset',
    'v_offset',
    'projection',
    'fov',
    'near',
    'far',
]

var plugin
var camera

var button

var stored = {}
var locked = false

func _ready():
    label = 'Lock to view'

    button = Button.new()
    button.text = 'Lock'
    button.toggle_mode = true
    button.connect('toggled', self, 'toggle')

    add_child(button)
    add_focusable(button)


func _process(delta):
    if not locked:
        return
    var editor_camera = plugin.camera
    camera.global_transform = editor_camera.global_transform

    # offset it behind actual camera so that gizmos are not in the way
    # you can hide the camera gizmo, but I didn't find a way to hide
    # the spatial selection default gizmo
    camera.transform.origin += camera.transform.basis.z * 10

    # it resets the fov on movement
    # and if user changes camera settings through inspector
    for key in STORED_KEYS:
        editor_camera[key] = camera[key]

func toggle(state):
    var editor_camera = plugin.camera
    if not editor_camera:
        push_error('No editor camera found/received')
        return

    locked = state
    if state:
        for preview in find_previews():
            preview.hide()

        button.text = 'Unlock'
        for key in STORED_KEYS:
            stored[key] = editor_camera[key]
            editor_camera[key] = camera[key]
    else:
        for preview in find_previews():
            preview.show()

        button.text = 'Lock'
        for key in STORED_KEYS:
            editor_camera[key] = stored[key]

        # undo the behind offset so that it's actually accurately positioned
        camera.global_transform = editor_camera.global_transform

# there must be some kind of reference to that checkbox from
# the native Camera code, but nothing in GDScript it seems like

func find_first(root, cls):
    var to_check = []
    var last_idx = 0
    var last = root
    while true:
        for child in last.get_children():
            if child.get_class() == cls:
                return child
            to_check.push_back(child)
        if last_idx >= to_check.size():
            break
        last = to_check[last_idx]
        last_idx += 1

func find_previews():
    var result = []
    var editor_viewport = plugin.get_editor_interface().get_editor_viewport()
    var spatial_viewport = find_first(editor_viewport, 'SpatialEditorViewportContainer')
    if spatial_viewport:
        for child in spatial_viewport.get_children():
            var found = find_first(child, 'CheckBox')
            if found:
                result.append(found)
    return result
