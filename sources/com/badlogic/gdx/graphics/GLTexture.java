package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.graphics.glutils.MipMapGenerator;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.Disposable;
import com.unity3d.services.UnityAdsConstants;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes.dex */
public abstract class GLTexture implements Disposable {
    public static float maxAnisotropicFilterLevel;
    public float anisotropicFilterLevel;
    public int glHandle;
    public final int glTarget;
    public Texture.TextureFilter magFilter;
    public Texture.TextureFilter minFilter;
    public Texture.TextureWrap uWrap;
    public Texture.TextureWrap vWrap;

    public GLTexture(int i, int i2) {
        Texture.TextureFilter textureFilter = Texture.TextureFilter.Nearest;
        this.minFilter = textureFilter;
        this.magFilter = textureFilter;
        Texture.TextureWrap textureWrap = Texture.TextureWrap.ClampToEdge;
        this.uWrap = textureWrap;
        this.vWrap = textureWrap;
        this.anisotropicFilterLevel = 1.0f;
        this.glTarget = i;
        this.glHandle = i2;
    }

    public void bind() {
        Gdx.gl.glBindTexture(this.glTarget, this.glHandle);
    }

    public void unsafeSetWrap(Texture.TextureWrap textureWrap, Texture.TextureWrap textureWrap2, boolean z) {
        if (textureWrap != null && (z || this.uWrap != textureWrap)) {
            Gdx.gl.glTexParameteri(this.glTarget, 10242, textureWrap.getGLEnum());
            this.uWrap = textureWrap;
        }
        if (textureWrap2 != null) {
            if (z || this.vWrap != textureWrap2) {
                Gdx.gl.glTexParameteri(this.glTarget, 10243, textureWrap2.getGLEnum());
                this.vWrap = textureWrap2;
            }
        }
    }

    public void setWrap(Texture.TextureWrap textureWrap, Texture.TextureWrap textureWrap2) {
        this.uWrap = textureWrap;
        this.vWrap = textureWrap2;
        bind();
        Gdx.gl.glTexParameteri(this.glTarget, 10242, textureWrap.getGLEnum());
        Gdx.gl.glTexParameteri(this.glTarget, 10243, textureWrap2.getGLEnum());
    }

    public void unsafeSetFilter(Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2, boolean z) {
        if (textureFilter != null && (z || this.minFilter != textureFilter)) {
            Gdx.gl.glTexParameteri(this.glTarget, 10241, textureFilter.getGLEnum());
            this.minFilter = textureFilter;
        }
        if (textureFilter2 != null) {
            if (z || this.magFilter != textureFilter2) {
                Gdx.gl.glTexParameteri(this.glTarget, 10240, textureFilter2.getGLEnum());
                this.magFilter = textureFilter2;
            }
        }
    }

    public void setFilter(Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2) {
        this.minFilter = textureFilter;
        this.magFilter = textureFilter2;
        bind();
        Gdx.gl.glTexParameteri(this.glTarget, 10241, textureFilter.getGLEnum());
        Gdx.gl.glTexParameteri(this.glTarget, 10240, textureFilter2.getGLEnum());
    }

    public float unsafeSetAnisotropicFilter(float f, boolean z) {
        float maxAnisotropicFilterLevel2 = getMaxAnisotropicFilterLevel();
        if (maxAnisotropicFilterLevel2 == 1.0f) {
            return 1.0f;
        }
        float fMin = Math.min(f, maxAnisotropicFilterLevel2);
        if (!z && MathUtils.isEqual(fMin, this.anisotropicFilterLevel, 0.1f)) {
            return this.anisotropicFilterLevel;
        }
        Gdx.gl20.glTexParameterf(3553, 34046, fMin);
        this.anisotropicFilterLevel = fMin;
        return fMin;
    }

    public static float getMaxAnisotropicFilterLevel() {
        float f = maxAnisotropicFilterLevel;
        if (f > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return f;
        }
        if (Gdx.graphics.supportsExtension("GL_EXT_texture_filter_anisotropic")) {
            FloatBuffer floatBufferNewFloatBuffer = BufferUtils.newFloatBuffer(16);
            floatBufferNewFloatBuffer.position(0);
            floatBufferNewFloatBuffer.limit(floatBufferNewFloatBuffer.capacity());
            Gdx.gl20.glGetFloatv(34047, floatBufferNewFloatBuffer);
            float f2 = floatBufferNewFloatBuffer.get(0);
            maxAnisotropicFilterLevel = f2;
            return f2;
        }
        maxAnisotropicFilterLevel = 1.0f;
        return 1.0f;
    }

    public static void uploadImageData(int i, TextureData textureData) {
        uploadImageData(i, textureData, 0);
    }

    public static void uploadImageData(int i, TextureData textureData, int i2) {
        boolean z;
        Pixmap pixmap;
        if (textureData == null) {
            return;
        }
        if (!textureData.isPrepared()) {
            textureData.prepare();
        }
        if (textureData.getType() == TextureData.TextureDataType.Custom) {
            textureData.consumeCustomData(i);
            return;
        }
        Pixmap pixmapConsumePixmap = textureData.consumePixmap();
        boolean zDisposePixmap = textureData.disposePixmap();
        if (textureData.getFormat() != pixmapConsumePixmap.getFormat()) {
            Pixmap pixmap2 = new Pixmap(pixmapConsumePixmap.getWidth(), pixmapConsumePixmap.getHeight(), textureData.getFormat());
            pixmap2.setBlending(Pixmap.Blending.None);
            pixmap2.drawPixmap(pixmapConsumePixmap, 0, 0, 0, 0, pixmapConsumePixmap.getWidth(), pixmapConsumePixmap.getHeight());
            if (textureData.disposePixmap()) {
                pixmapConsumePixmap.dispose();
            }
            pixmap = pixmap2;
            z = true;
        } else {
            z = zDisposePixmap;
            pixmap = pixmapConsumePixmap;
        }
        Gdx.gl.glPixelStorei(3317, 1);
        if (textureData.useMipMaps()) {
            MipMapGenerator.generateMipMap(i, pixmap, pixmap.getWidth(), pixmap.getHeight());
        } else {
            Gdx.gl.glTexImage2D(i, i2, pixmap.getGLInternalFormat(), pixmap.getWidth(), pixmap.getHeight(), 0, pixmap.getGLFormat(), pixmap.getGLType(), pixmap.getPixels());
        }
        if (z) {
            pixmap.dispose();
        }
    }
}
