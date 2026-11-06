package io.blueflower.stapel2d.drawing;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.ObjectIntMap;
import info.flowersoft.theotown.crossplatform.TheoTown;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes5.dex */
public final class Shader {
    public String fSrc;
    public int fragment;
    public int program;
    public String vSrc;
    public int vertex;
    public int currentContext = -1;
    public final ObjectIntMap<String> uniformLocations = new ObjectIntMap<>();
    public boolean useable = false;

    public Shader(String str, String str2) {
        this.vSrc = str;
        this.fSrc = str2;
    }

    public void load(int i) {
        this.vertex = loadShader(35633, this.vSrc);
        this.fragment = loadShader(35632, this.fSrc);
        int iGlCreateProgram = Gdx.gl20.glCreateProgram();
        this.program = iGlCreateProgram;
        Gdx.gl20.glAttachShader(iGlCreateProgram, this.vertex);
        Gdx.gl20.glAttachShader(this.program, this.fragment);
        Gdx.gl20.glLinkProgram(this.program);
        IntBuffer intBufferAsIntBuffer = ByteBuffer.allocateDirect(4).asIntBuffer();
        Gdx.gl20.glGetProgramiv(this.program, 35714, intBufferAsIntBuffer);
        if (intBufferAsIntBuffer.get(0) == 0) {
            Gdx.app.error("Linker failed", Gdx.gl20.glGetShaderInfoLog(this.program));
            this.useable = false;
            throw new RuntimeException("Could not link shader: " + Gdx.gl20.glGetShaderInfoLog(this.program));
        }
        this.currentContext = i;
        this.useable = true;
        this.uniformLocations.clear();
    }

    public final int loadShader(int i, String str) {
        int iGlCreateShader = Gdx.gl20.glCreateShader(i);
        Gdx.gl20.glShaderSource(iGlCreateShader, TheoTown.runtimeFeatures.normalizeShaderCode(str));
        Gdx.gl20.glCompileShader(iGlCreateShader);
        IntBuffer intBufferAsIntBuffer = ByteBuffer.allocateDirect(4).asIntBuffer();
        Gdx.gl20.glGetShaderiv(iGlCreateShader, 35713, intBufferAsIntBuffer);
        if (intBufferAsIntBuffer.get(0) != 0) {
            return iGlCreateShader;
        }
        Gdx.app.error("Compile shader", Gdx.gl20.glGetShaderInfoLog(iGlCreateShader));
        throw new RuntimeException("Could not compile shader: " + Gdx.gl20.glGetShaderInfoLog(iGlCreateShader));
    }

    public int resolveUniformLocation(String str) {
        if (this.uniformLocations.containsKey(str)) {
            return this.uniformLocations.get(str, -1);
        }
        int iGlGetUniformLocation = Gdx.gl20.glGetUniformLocation(this.program, str);
        this.uniformLocations.put(str, iGlGetUniformLocation);
        return iGlGetUniformLocation;
    }

    public void setUniform(String str, float f) {
        Gdx.gl20.glUseProgram(this.program);
        Gdx.gl20.glUniform1f(resolveUniformLocation(str), f);
    }

    public void setUniform(String str, float f, float f2) {
        Gdx.gl20.glUseProgram(this.program);
        Gdx.gl20.glUniform2f(resolveUniformLocation(str), f, f2);
    }

    public void setUniform(String str, float f, float f2, float f3, float f4) {
        Gdx.gl20.glUseProgram(this.program);
        Gdx.gl20.glUniform4f(resolveUniformLocation(str), f, f2, f3, f4);
    }

    public boolean isUseable() {
        return this.useable;
    }

    public void release() {
        this.currentContext = -1;
    }
}
