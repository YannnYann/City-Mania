package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Texture extends GLTexture {
    public static final Map<Application, Array<Texture>> managedTextures = new HashMap();

    public enum TextureFilter {
        Nearest(9728),
        Linear(9729),
        MipMap(9987),
        MipMapNearestNearest(9984),
        MipMapLinearNearest(9985),
        MipMapNearestLinear(9986),
        MipMapLinearLinear(9987);

        public final int glEnum;

        TextureFilter(int i) {
            this.glEnum = i;
        }

        public int getGLEnum() {
            return this.glEnum;
        }
    }

    public enum TextureWrap {
        MirroredRepeat(33648),
        ClampToEdge(33071),
        Repeat(10497);

        public final int glEnum;

        TextureWrap(int i) {
            this.glEnum = i;
        }

        public int getGLEnum() {
            return this.glEnum;
        }
    }

    public Texture() {
        super(0, 0);
    }

    public void load(TextureData textureData) {
        if (!textureData.isPrepared()) {
            textureData.prepare();
        }
        bind();
        GLTexture.uploadImageData(3553, textureData);
        unsafeSetFilter(this.minFilter, this.magFilter, true);
        unsafeSetWrap(this.uWrap, this.vWrap, true);
        unsafeSetAnisotropicFilter(this.anisotropicFilterLevel, true);
        Gdx.gl.glBindTexture(this.glTarget, 0);
    }

    public void reload() {
        if (!isManaged()) {
            throw new GdxRuntimeException("Tried to reload unmanaged Texture");
        }
        this.glHandle = Gdx.gl.glGenTexture();
        load(null);
    }

    public boolean isManaged() {
        throw null;
    }

    public String toString() {
        return super.toString();
    }

    public static void clearAllTextures(Application application) {
        managedTextures.remove(application);
    }

    public static void invalidateAllTextures(Application application) {
        Array<Texture> array = managedTextures.get(application);
        if (array == null) {
            return;
        }
        for (int i = 0; i < array.size; i++) {
            array.get(i).reload();
        }
    }

    public static String getManagedStatus() {
        StringBuilder sb = new StringBuilder();
        sb.append("Managed textures/app: { ");
        Iterator<Application> it = managedTextures.keySet().iterator();
        while (it.hasNext()) {
            sb.append(managedTextures.get(it.next()).size);
            sb.append(" ");
        }
        sb.append("}");
        return sb.toString();
    }
}
