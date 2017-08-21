extends Node

func _ready():
    var test = get_node("test")
    var vp = get_node("vp")
    var s = get_node("vp/simplex")
    var t = ImageTexture.new()
    t.create(512, 512, 0, 0)
    s.texture = t
    s.get_material().set_shader_param("scale", 32.0)
    vp.size = Vector2(512, 512)
    test.texture = vp.get_texture()
