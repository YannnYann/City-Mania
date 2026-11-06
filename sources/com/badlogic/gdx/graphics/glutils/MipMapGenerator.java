package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.utils.GdxRuntimeException;

/* JADX INFO: loaded from: classes.dex */
public class MipMapGenerator {
    public static boolean useHWMipMap = true;

    public static void generateMipMap(int i, Pixmap pixmap, int i2, int i3) {
        if (!useHWMipMap) {
            generateMipMapCPU(i, pixmap, i2, i3);
        } else if (Gdx.app.getType() == Application.ApplicationType.Android || Gdx.app.getType() == Application.ApplicationType.WebGL || Gdx.app.getType() == Application.ApplicationType.iOS) {
            generateMipMapGLES20(i, pixmap);
        } else {
            generateMipMapDesktop(i, pixmap, i2, i3);
        }
    }

    public static void generateMipMapGLES20(int i, Pixmap pixmap) {
        Gdx.gl.glTexImage2D(i, 0, pixmap.getGLInternalFormat(), pixmap.getWidth(), pixmap.getHeight(), 0, pixmap.getGLFormat(), pixmap.getGLType(), pixmap.getPixels());
        Gdx.gl20.glGenerateMipmap(i);
    }

    public static void generateMipMapDesktop(int i, Pixmap pixmap, int i2, int i3) {
        if (Gdx.graphics.supportsExtension("GL_ARB_framebuffer_object") || Gdx.graphics.supportsExtension("GL_EXT_framebuffer_object") || Gdx.gl20.getClass().getName().equals("com.badlogic.gdx.backends.lwjgl3.angle.Lwjgl3GLES20") || Gdx.gl30 != null) {
            Gdx.gl.glTexImage2D(i, 0, pixmap.getGLInternalFormat(), pixmap.getWidth(), pixmap.getHeight(), 0, pixmap.getGLFormat(), pixmap.getGLType(), pixmap.getPixels());
            Gdx.gl20.glGenerateMipmap(i);
        } else {
            generateMipMapCPU(i, pixmap, i2, i3);
        }
    }

    public static void generateMipMapCPU(int i, Pixmap pixmap, int i2, int i3) {
        Gdx.gl.glTexImage2D(i, 0, pixmap.getGLInternalFormat(), pixmap.getWidth(), pixmap.getHeight(), 0, pixmap.getGLFormat(), pixmap.getGLType(), pixmap.getPixels());
        if (Gdx.gl20 == null && i2 != i3) {
            throw new GdxRuntimeException("texture width and height must be square when using mipmapping.");
        }
        int width = pixmap.getWidth() / 2;
        int height = pixmap.getHeight() / 2;
        Pixmap pixmap2 = pixmap;
        int i4 = width;
        int i5 = 1;
        while (true) {
            int i6 = height;
            Pixmap pixmap3 = new Pixmap(i4, i6, pixmap2.getFormat());
            pixmap3.setBlending(Pixmap.Blending.None);
            pixmap3.drawPixmap(pixmap2, 0, 0, pixmap2.getWidth(), pixmap2.getHeight(), 0, 0, i4, i6);
            if (i5 > 1) {
                pixmap2.dispose();
            }
            int i7 = i5;
            Gdx.gl.glTexImage2D(i, i7, pixmap3.getGLInternalFormat(), pixmap3.getWidth(), pixmap3.getHeight(), 0, pixmap3.getGLFormat(), pixmap3.getGLType(), pixmap3.getPixels());
            int width2 = pixmap3.getWidth() / 2;
            height = pixmap3.getHeight() / 2;
            if (width2 == 0 && height == 0) {
                return;
            }
            i4 = width2 == 0 ? 1 : width2;
            if (height == 0) {
                height = 1;
            }
            i5 = i7 + 1;
            pixmap2 = pixmap3;
        }
    }
}
