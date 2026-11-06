package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GLTexture;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.IntArray;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class GLFrameBuffer<T extends GLTexture> implements Disposable {
    public static int defaultFramebufferHandle;
    public int framebufferHandle;
    public static final Map<Application, Array<GLFrameBuffer>> buffers = new HashMap();
    public static boolean defaultFramebufferHandleInitialized = false;
    public Array<T> textureAttachments = new Array<>();
    public final IntArray colorBufferHandles = new IntArray();

    public void build() {
        GL20 gl20 = Gdx.gl20;
        checkValidBuilder();
        if (!defaultFramebufferHandleInitialized) {
            defaultFramebufferHandleInitialized = true;
            if (Gdx.app.getType() == Application.ApplicationType.iOS) {
                IntBuffer intBufferAsIntBuffer = ByteBuffer.allocateDirect(64).order(ByteOrder.nativeOrder()).asIntBuffer();
                gl20.glGetIntegerv(36006, intBufferAsIntBuffer);
                defaultFramebufferHandle = intBufferAsIntBuffer.get(0);
            } else {
                defaultFramebufferHandle = 0;
            }
        }
        int iGlGenFramebuffer = gl20.glGenFramebuffer();
        this.framebufferHandle = iGlGenFramebuffer;
        gl20.glBindFramebuffer(36160, iGlGenFramebuffer);
        throw null;
    }

    public final void checkValidBuilder() {
        throw null;
    }

    public static void invalidateAllFrameBuffers(Application application) {
        Array<GLFrameBuffer> array;
        if (Gdx.gl20 == null || (array = buffers.get(application)) == null) {
            return;
        }
        for (int i = 0; i < array.size; i++) {
            array.get(i).build();
        }
    }

    public static void clearAllFrameBuffers(Application application) {
        buffers.remove(application);
    }

    public static StringBuilder getManagedStatus(StringBuilder sb) {
        sb.append("Managed buffers/app: { ");
        Iterator<Application> it = buffers.keySet().iterator();
        while (it.hasNext()) {
            sb.append(buffers.get(it.next()).size);
            sb.append(" ");
        }
        sb.append("}");
        return sb;
    }

    public static String getManagedStatus() {
        return getManagedStatus(new StringBuilder()).toString();
    }
}
