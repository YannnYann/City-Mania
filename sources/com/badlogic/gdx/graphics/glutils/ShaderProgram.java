package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.ObjectMap;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes.dex */
public class ShaderProgram implements Disposable {
    public int fragmentShaderHandle;
    public final String fragmentShaderSource;
    public boolean invalidated;
    public boolean isCompiled;
    public String log;
    public int program;
    public int vertexShaderHandle;
    public final String vertexShaderSource;
    public static final ObjectMap<Application, Array<ShaderProgram>> shaders = new ObjectMap<>();
    public static final IntBuffer intbuf = BufferUtils.newIntBuffer(1);

    public final void compileShaders(String str, String str2) {
        this.vertexShaderHandle = loadShader(35633, str);
        int iLoadShader = loadShader(35632, str2);
        this.fragmentShaderHandle = iLoadShader;
        if (this.vertexShaderHandle == -1 || iLoadShader == -1) {
            this.isCompiled = false;
            return;
        }
        int iLinkProgram = linkProgram(createProgram());
        this.program = iLinkProgram;
        if (iLinkProgram == -1) {
            this.isCompiled = false;
        } else {
            this.isCompiled = true;
        }
    }

    public final int loadShader(int i, String str) {
        GL20 gl20 = Gdx.gl20;
        IntBuffer intBufferNewIntBuffer = BufferUtils.newIntBuffer(1);
        int iGlCreateShader = gl20.glCreateShader(i);
        if (iGlCreateShader == 0) {
            return -1;
        }
        gl20.glShaderSource(iGlCreateShader, str);
        gl20.glCompileShader(iGlCreateShader);
        gl20.glGetShaderiv(iGlCreateShader, 35713, intBufferNewIntBuffer);
        if (intBufferNewIntBuffer.get(0) != 0) {
            return iGlCreateShader;
        }
        String strGlGetShaderInfoLog = gl20.glGetShaderInfoLog(iGlCreateShader);
        StringBuilder sb = new StringBuilder();
        sb.append(this.log);
        sb.append(i == 35633 ? "Vertex shader\n" : "Fragment shader:\n");
        this.log = sb.toString();
        this.log += strGlGetShaderInfoLog;
        return -1;
    }

    public int createProgram() {
        int iGlCreateProgram = Gdx.gl20.glCreateProgram();
        if (iGlCreateProgram != 0) {
            return iGlCreateProgram;
        }
        return -1;
    }

    public final int linkProgram(int i) {
        GL20 gl20 = Gdx.gl20;
        if (i == -1) {
            return -1;
        }
        gl20.glAttachShader(i, this.vertexShaderHandle);
        gl20.glAttachShader(i, this.fragmentShaderHandle);
        gl20.glLinkProgram(i);
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(4);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        IntBuffer intBufferAsIntBuffer = byteBufferAllocateDirect.asIntBuffer();
        gl20.glGetProgramiv(i, 35714, intBufferAsIntBuffer);
        if (intBufferAsIntBuffer.get(0) != 0) {
            return i;
        }
        this.log = Gdx.gl20.glGetProgramInfoLog(i);
        return -1;
    }

    public final void checkManaged() {
        if (this.invalidated) {
            compileShaders(this.vertexShaderSource, this.fragmentShaderSource);
            this.invalidated = false;
        }
    }

    public static void invalidateAllShaderPrograms(Application application) {
        Array<ShaderProgram> array;
        if (Gdx.gl20 == null || (array = shaders.get(application)) == null) {
            return;
        }
        for (int i = 0; i < array.size; i++) {
            array.get(i).invalidated = true;
            array.get(i).checkManaged();
        }
    }

    public static void clearAllShaderPrograms(Application application) {
        shaders.remove(application);
    }

    public static String getManagedStatus() {
        StringBuilder sb = new StringBuilder();
        sb.append("Managed shaders/app: { ");
        ObjectMap.Keys<Application> it = shaders.keys().iterator();
        while (it.hasNext()) {
            sb.append(shaders.get(it.next()).size);
            sb.append(" ");
        }
        sb.append("}");
        return sb.toString();
    }
}
