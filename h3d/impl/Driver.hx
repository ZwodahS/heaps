package h3d.impl;

#if flash
typedef IndexBuffer = flash.display3D.IndexBuffer3D;
typedef VertexBuffer = Stage3dDriver.VertexWrapper;
typedef Texture = flash.display3D.textures.TextureBase;
#elseif js
typedef IndexBuffer = js.html.webgl.Buffer;
typedef VertexBuffer = { b : js.html.webgl.Buffer, stride : Int };
typedef Texture = { t : js.html.webgl.Texture, width : Int, height : Int, fmt : Int, ?fb : js.html.webgl.Framebuffer, ?rb : js.html.webgl.Renderbuffer };
#elseif cpp
typedef IndexBuffer = openfl.gl.GLBuffer;
typedef VertexBuffer = { b : openfl.gl.GLBuffer, stride : Int };
typedef Texture = { t : openfl.gl.GLTexture };
#else
typedef IndexBuffer = Int;
typedef VertexBuffer = Int;
typedef Texture = Int;
#end

enum Feature {
	HardwareAccelerated;
	StandardDerivatives;
	FloatTextures;
	TargetDepthBuffer;
}

class Driver {

	public var logEnable : Bool;

	public function hasFeature( f : Feature ) {
		return false;
	}

	public function isDisposed() {
		return true;
	}

	public function dispose() {
	}

	public function begin( frame : Int ) {
	}

	public inline function log( str : String ) {
		#if debug
		if( logEnable ) logImpl(str);
		#end
	}

	public function getNativeShaderCode( shader : hxsl.RuntimeShader ) : String {
		return null;
	}

	function logImpl( str : String ) {
	}

	public function clear( r : Float, g : Float, b : Float, a : Float ) {
	}

	public function setCapture( bmp : hxd.BitmapData, callb : Void -> Void ) {
	}

	public function reset() {
	}

	public function getDriverName( details : Bool ) {
		return "Not available";
	}

	public function init( onCreate : Bool -> Void, forceSoftware = false ) {
	}

	public function resize( width : Int, height : Int ) {
	}

	public function selectShader( shader : hxsl.RuntimeShader ) {
		return false;
	}

	public function selectMaterial( pass : h3d.mat.Pass ) {
	}

	public function uploadShaderBuffers( buffers : h3d.shader.Buffers, which : h3d.shader.Buffers.BufferKind ) {
	}

	public function getShaderInputNames() : Array<String> {
		return null;
	}

	public function selectBuffer( buffer : VertexBuffer ) {
	}

	public function selectMultiBuffers( buffers : Buffer.BufferOffset ) {
	}

	public function draw( ibuf : IndexBuffer, startIndex : Int, ntriangles : Int ) {
	}

	public function setRenderZone( x : Int, y : Int, width : Int, height : Int ) {
	}

	public function setRenderTarget( tex : Null<h3d.mat.Texture>, clearColor : Int ) {
	}

	public function present() {
	}

	public function setDebug( b : Bool ) {
	}

	public function allocTexture( t : h3d.mat.Texture ) : Texture {
		return null;
	}

	public function allocIndexes( count : Int ) : IndexBuffer {
		return null;
	}

	public function allocVertexes( m : ManagedBuffer ) : VertexBuffer {
		return null;
	}

	public function disposeTexture( t : Texture ) {
	}

	public function disposeIndexes( i : IndexBuffer ) {
	}

	public function disposeVertexes( v : VertexBuffer ) {
	}

	public function uploadIndexBuffer( i : IndexBuffer, startIndice : Int, indiceCount : Int, buf : hxd.IndexBuffer, bufPos : Int ) {
	}

	public function uploadIndexBytes( i : IndexBuffer, startIndice : Int, indiceCount : Int, buf : haxe.io.Bytes , bufPos : Int ) {
	}

	public function uploadVertexBuffer( v : VertexBuffer, startVertex : Int, vertexCount : Int, buf : hxd.FloatBuffer, bufPos : Int ) {
	}

	public function uploadVertexBytes( v : VertexBuffer, startVertex : Int, vertexCount : Int, buf : haxe.io.Bytes, bufPos : Int ) {
	}

	public function uploadTextureBitmap( t : h3d.mat.Texture, bmp : hxd.BitmapData, mipLevel : Int, side : Int ) {
	}

	public function uploadTexturePixels( t : h3d.mat.Texture, pixels : hxd.Pixels, mipLevel : Int, side : Int ) {
	}

}