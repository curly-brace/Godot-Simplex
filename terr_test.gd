extends Node

onready var mi = get_node('terrain')
onready var vp = get_node('vp')
onready var simplex = get_node('vp/simplex')
onready var spr = get_node('test')
var size = 64
var scale = 4.0
var cur_offset = Vector2(5, 5)
var update_interval = 0.05
var timer = 0.0
var updating = true

func _ready():
    var t = ImageTexture.new()
    t.create(size, size, 0, 0)
    simplex.texture = t
    vp.size = Vector2(size, size)

    simplex.get_material().set_shader_param('scale', scale)
    simplex.get_material().set_shader_param('offset', cur_offset)
    mi.get_multimesh().instance_count = size * size

func _process(delta):
    timer += delta
    cur_offset += Vector2(delta, delta)
    if updating and timer >= update_interval:
        timer = 0.0
        update_field()
        simplex.get_material().set_shader_param('offset', cur_offset)
        #for single update
        #updating = false

func update_field():
    var mm = mi.get_multimesh()

    var t = Transform()
    #it is supposed to be direct viewporttexture, but it fails because of bugs
    #setting viewport to 2d mode shows some sort of artifacts on the values
    #but sprite's texture looks good
    var s = spr.get_texture().get_data()
    s.lock()
    var p
    for x in range(size):
        for y in range(size):
            p = s.get_pixel(x, y).r
            mm.set_instance_transform(x*size+y, t.translated(Vector3(x, (p+p)*2.0, y)))
    s.unlock()




