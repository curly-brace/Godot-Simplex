# Simplex Noise Shaders For Godot Engine 3.0

In `test_3d` scene, there were artifacts in sampled values (but `Sprite` itself was fine though), like inverted steps. Fixed this by setting `Viewport` to "3D mode". Now everything works (but not as easy as expected).

Actually, I've came with temp solution. To use simplex for your needs, you have to assign viewport's texture first to another `Spite` and then sample _its_ texture for values. So the `test_3d` scene shows how to use simplex to create a field with `MultiMeshInstance` (that is a bunch of cubes actually. unlike a plane, distorted by a vertex shader).

**Warning!** The `test_3d` scene does not work due to the current bugs with (I think) `ViewportTexture`. And I have no idea how to sample `Sprite` node in different way.

2dsimplex.tres - a 2d simplex shader (canvas_item) - is something I was going to use as a fast simplex generator, using a `Sprite` node and sampling it for different tasks, like terrain generation.

vert_simplex.tres - is a 3d simplex (spatial), which uses a vertex shader to transform vertices of the mesh, depending on a 3D simplex noise function (up is animated using **time**).

[![screenshot3](/screen3.png)](https://godotengine.org)
[![screenshot1](/screen1.png)](https://godotengine.org)
[![screenshot2](/screen2.png)](https://godotengine.org)
