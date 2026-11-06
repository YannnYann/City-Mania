package io.blueflower.stapel2d.drawing;

import com.badlogic.gdx.Gdx;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class Texture {
    public boolean dirty;
    public int format;
    public int height;
    public final int[] ids;
    public int internalFormat;
    public TextureSource source;
    public int units;
    public int width;
    public int currentContext = -1;
    public int minFilter = 9728;
    public int magFilter = 9728;
    public int colorDepth = 32;
    public int formatType = 5121;
    public Color clearColor = null;

    public static int findSize(int i) {
        int i2 = 16;
        while (i2 < i) {
            i2 *= 2;
        }
        return i2;
    }

    public Texture(TextureSource textureSource) {
        this.source = textureSource;
        textureSource.init(this);
        this.width = findSize(textureSource.getWidth());
        this.height = findSize(textureSource.getHeight());
        int units = textureSource.getUnits();
        this.units = units;
        this.ids = new int[units];
        this.format = 6408;
        setAlphaMode(true);
    }

    public void setColorDepth(int i) {
        if (i != 16 && i != 32) {
            throw new IllegalArgumentException("Depth must be 16 or 32, but was " + i);
        }
        this.colorDepth = i;
        this.formatType = i == 32 ? 5121 : 32819;
    }

    public void setAlphaMode(boolean z) {
        int i = z ? 6408 : 6407;
        this.internalFormat = i;
        this.format = i;
    }

    public void setFiltering(int i, int i2) {
        this.minFilter = i;
        this.magFilter = i2;
    }

    public boolean setUp(int i) {
        GLUtil.checkError("texture.setup:before", this);
        if (this.source.postponeSetup()) {
            return false;
        }
        this.currentContext = i;
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(this.units * 4);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        Gdx.gl.glGenTextures(this.units, byteBufferAllocateDirect.asIntBuffer());
        byteBufferAllocateDirect.asIntBuffer().get(this.ids);
        GLUtil.checkError("texture.setup:gen", this);
        for (int i2 = 0; i2 < this.units; i2++) {
            Gdx.gl.glBindTexture(3553, this.ids[i2]);
            GLUtil.checkError("texture.setup:bind", this);
            Gdx.gl.glTexParameterf(3553, 10241, this.minFilter);
            Gdx.gl.glTexParameterf(3553, 10240, this.magFilter);
            GLUtil.checkError("texture.setup:parameters", this);
            Gdx.gl.glTexImage2D(3553, 0, this.format, this.width, this.height, 0, this.internalFormat, this.formatType, null);
            GLUtil.checkError("texture.setup:teximg2d", this);
        }
        return true;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public void upload() {
        Color color = this.clearColor;
        if (color != null) {
            clear(color);
        }
        GLUtil.checkError("texture.upload:cls", this);
        this.source.start();
        GLUtil.checkError("texture.upload:source.start", this);
        this.dirty = false;
    }

    public void clear(Color color) {
        Runtime.getRuntime().gc();
        int i = this.width;
        int i2 = this.height;
        int i3 = i;
        while (i3 > 256) {
            i3 /= 2;
        }
        int i4 = i2;
        while (i4 > 256) {
            i4 /= 2;
        }
        int[] iArr = new int[i3 * i4];
        Arrays.fill(iArr, color.toABGR());
        IntBuffer intBufferWrap = IntBuffer.wrap(iArr);
        for (int i5 = 0; i5 < this.units; i5++) {
            bindUnit(i5);
            for (int i6 = 0; i6 < this.height; i6 += i4) {
                for (int i7 = 0; i7 < this.width; i7 += i3) {
                    Gdx.gl20.glTexSubImage2D(3553, 0, i7, i6, i3, i4, this.internalFormat, 5121, intBufferWrap);
                }
            }
        }
    }

    public void release() {
        if (this.currentContext == -1) {
            return;
        }
        this.currentContext = -1;
        GLUtil.checkError("release:before", this);
        this.source.release(this);
        GLUtil.checkError("release:source", this);
        for (int i : this.ids) {
            Gdx.gl.glDeleteTexture(i);
        }
        GLUtil.checkError("release:ids", this);
    }

    public void setSource(TextureSource textureSource) {
        this.source = textureSource;
        textureSource.init(this);
    }

    public TextureSource getSource() {
        return this.source;
    }

    public void bind() {
        for (int i = 0; i < this.units; i++) {
            Gdx.gl20.glActiveTexture(33984 + i);
            Gdx.gl20.glBindTexture(3553, this.ids[i]);
        }
        Gdx.gl20.glActiveTexture(33984);
    }

    public void bindUnit(int i) {
        Gdx.gl20.glBindTexture(3553, this.ids[i]);
    }

    public void setDirty() {
        this.dirty = true;
    }

    public int getCurrentContext() {
        return this.currentContext;
    }

    public String toString() {
        return "Texture " + this.width + 'x' + this.height + ", depth:" + this.colorDepth + ", units:" + this.units + ", intformat:" + this.internalFormat + ", formattype:" + this.formatType;
    }

    public static boolean probeSize(int i, int i2) {
        int iGlGenTexture = Gdx.gl.glGenTexture();
        Gdx.gl.glBindTexture(3553, iGlGenTexture);
        Gdx.gl.glTexImage2D(3553, 0, 6408, i, i2, 0, 6408, 5121, null);
        int iGlGetError = Gdx.gl.glGetError();
        Gdx.gl.glDeleteTexture(iGlGenTexture);
        return iGlGetError == 0;
    }
}
