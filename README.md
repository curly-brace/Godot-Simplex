# Simplex Noise Shaders For Godot Engine 3.0

WARNING!!! test_3d scene does not work due to the current bugs with ViewportTexture (i think so). And i have no idea how to sample Sprite node in different way.

2dsimplex.tres - is a 2d simplex shader (canvas_item), i was going to use as a fast simplex generator using a Sprite node and sampling it for different tasks like terrain generation.

vert_simplex.tres - is a 3d simplex (spatial) which uses vertex shader to transform vertexes of the mesh depending on 3d simplex noise function (up is animated using TIME)


[![screenshot1](/screen1.png)](https://godotengine.org)[![screenshot2](/screen2.png)](https://godotengine.org)