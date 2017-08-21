# Simplex Noise Shaders For Godot Engine 3.0

In test_3d scene there were artifacts in sampled values (but Sprite itself was fine tho), like inverted steps. Fixed this by setting Viewport to 3d mode (!). Now everything works (but not as easy as expected).

Actually i've came with temp solution. To use simplex for your needs, you have to assign viewport's texture first to another Spite and then sample ITS texture for values. So test_3d scene shows how to use simplex to create a field with MultiMeshInstance (that is a bunch of cubes actually, unlike a plane, distorted by vertex shader)

WARNING!!! test_3d scene does not work due to the current bugs with ViewportTexture (i think so). And i have no idea how to sample Sprite node in different way.

2dsimplex.tres - is a 2d simplex shader (canvas_item), i was going to use as a fast simplex generator using a Sprite node and sampling it for different tasks like terrain generation.

vert_simplex.tres - is a 3d simplex (spatial) which uses vertex shader to transform vertexes of the mesh depending on 3d simplex noise function (up is animated using TIME)

[![screenshot3](/screen3.png)](https://godotengine.org)
[![screenshot1](/screen1.png)](https://godotengine.org)
[![screenshot2](/screen2.png)](https://godotengine.org)
