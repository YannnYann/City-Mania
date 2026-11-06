package com.badlogic.gdx.graphics;

import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface GL20 {
    void glActiveTexture(int i);

    void glAttachShader(int i, int i2);

    void glBindBuffer(int i, int i2);

    void glBindFramebuffer(int i, int i2);

    void glBindTexture(int i, int i2);

    void glBlendFunc(int i, int i2);

    void glBufferData(int i, int i2, Buffer buffer, int i3);

    int glCheckFramebufferStatus(int i);

    void glClear(int i);

    void glClearColor(float f, float f2, float f3, float f4);

    void glCompileShader(int i);

    void glCopyTexSubImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8);

    int glCreateProgram();

    int glCreateShader(int i);

    void glDeleteFramebuffers(int i, IntBuffer intBuffer);

    void glDeleteTexture(int i);

    void glDepthMask(boolean z);

    void glDisable(int i);

    void glDisableVertexAttribArray(int i);

    void glDrawElements(int i, int i2, int i3, int i4);

    void glEnable(int i);

    void glEnableVertexAttribArray(int i);

    void glFramebufferTexture2D(int i, int i2, int i3, int i4, int i5);

    void glGenBuffers(int i, IntBuffer intBuffer);

    int glGenFramebuffer();

    void glGenFramebuffers(int i, IntBuffer intBuffer);

    int glGenTexture();

    void glGenTextures(int i, IntBuffer intBuffer);

    void glGenerateMipmap(int i);

    int glGetAttribLocation(int i, String str);

    int glGetError();

    void glGetFloatv(int i, FloatBuffer floatBuffer);

    void glGetIntegerv(int i, IntBuffer intBuffer);

    String glGetProgramInfoLog(int i);

    void glGetProgramiv(int i, int i2, IntBuffer intBuffer);

    String glGetShaderInfoLog(int i);

    void glGetShaderiv(int i, int i2, IntBuffer intBuffer);

    String glGetString(int i);

    int glGetUniformLocation(int i, String str);

    void glLinkProgram(int i);

    void glPixelStorei(int i, int i2);

    void glReadPixels(int i, int i2, int i3, int i4, int i5, int i6, Buffer buffer);

    void glScissor(int i, int i2, int i3, int i4);

    void glShaderSource(int i, String str);

    void glTexImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer);

    void glTexParameterf(int i, int i2, float f);

    void glTexParameteri(int i, int i2, int i3);

    void glTexSubImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer);

    void glUniform1f(int i, float f);

    void glUniform1i(int i, int i2);

    void glUniform1iv(int i, int i2, int[] iArr, int i3);

    void glUniform2f(int i, float f, float f2);

    void glUniform3f(int i, float f, float f2, float f3);

    void glUniform4f(int i, float f, float f2, float f3, float f4);

    void glUseProgram(int i);

    void glVertexAttribPointer(int i, int i2, int i3, boolean z, int i4, Buffer buffer);

    void glViewport(int i, int i2, int i3, int i4);
}
