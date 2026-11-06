package com.badlogic.gdx.backends.android.surfaceview;

import android.opengl.GLSurfaceView;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

/* JADX INFO: loaded from: classes.dex */
public class GdxEglConfigChooser implements GLSurfaceView.EGLConfigChooser {
    public int mAlphaSize;
    public int mBlueSize;
    public int mDepthSize;
    public int mGreenSize;
    public int mNumSamples;
    public int mRedSize;
    public int mStencilSize;
    public int[] mValue = new int[1];
    public final int[] mConfigAttribs = {12324, 4, 12323, 4, 12322, 4, 12352, 4, 12344};

    public GdxEglConfigChooser(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.mRedSize = i;
        this.mGreenSize = i2;
        this.mBlueSize = i3;
        this.mAlphaSize = i4;
        this.mDepthSize = i5;
        this.mStencilSize = i6;
        this.mNumSamples = i7;
    }

    @Override // android.opengl.GLSurfaceView.EGLConfigChooser
    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
        int[] iArr = new int[1];
        egl10.eglChooseConfig(eGLDisplay, this.mConfigAttribs, null, 0, iArr);
        int i = iArr[0];
        if (i <= 0) {
            throw new IllegalArgumentException("No configs match configSpec");
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[i];
        egl10.eglChooseConfig(eGLDisplay, this.mConfigAttribs, eGLConfigArr, i, iArr);
        return chooseConfig(egl10, eGLDisplay, eGLConfigArr);
    }

    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
        int i;
        EGLConfig[] eGLConfigArr2 = eGLConfigArr;
        int length = eGLConfigArr2.length;
        EGLConfig eGLConfig = null;
        EGLConfig eGLConfig2 = null;
        EGLConfig eGLConfig3 = null;
        int i2 = 0;
        while (i2 < length) {
            EGLConfig eGLConfig4 = eGLConfigArr2[i2];
            int iFindConfigAttrib = findConfigAttrib(egl10, eGLDisplay, eGLConfig4, 12325, 0);
            int iFindConfigAttrib2 = findConfigAttrib(egl10, eGLDisplay, eGLConfig4, 12326, 0);
            if (iFindConfigAttrib < this.mDepthSize || iFindConfigAttrib2 < this.mStencilSize) {
                i = length;
            } else {
                int iFindConfigAttrib3 = findConfigAttrib(egl10, eGLDisplay, eGLConfig4, 12324, 0);
                int iFindConfigAttrib4 = findConfigAttrib(egl10, eGLDisplay, eGLConfig4, 12323, 0);
                int iFindConfigAttrib5 = findConfigAttrib(egl10, eGLDisplay, eGLConfig4, 12322, 0);
                int iFindConfigAttrib6 = findConfigAttrib(egl10, eGLDisplay, eGLConfig4, 12321, 0);
                if (eGLConfig == null && iFindConfigAttrib3 == 5 && iFindConfigAttrib4 == 6 && iFindConfigAttrib5 == 5 && iFindConfigAttrib6 == 0) {
                    eGLConfig = eGLConfig4;
                }
                if (eGLConfig2 == null && iFindConfigAttrib3 == this.mRedSize && iFindConfigAttrib4 == this.mGreenSize && iFindConfigAttrib5 == this.mBlueSize && iFindConfigAttrib6 == this.mAlphaSize) {
                    eGLConfig2 = eGLConfig4;
                    if (this.mNumSamples == 0) {
                        break;
                    }
                }
                int iFindConfigAttrib7 = findConfigAttrib(egl10, eGLDisplay, eGLConfig4, 12338, 0);
                int iFindConfigAttrib8 = findConfigAttrib(egl10, eGLDisplay, eGLConfig4, 12337, 0);
                if (eGLConfig3 == null && iFindConfigAttrib7 == 1 && iFindConfigAttrib8 >= this.mNumSamples && iFindConfigAttrib3 == this.mRedSize && iFindConfigAttrib4 == this.mGreenSize && iFindConfigAttrib5 == this.mBlueSize && iFindConfigAttrib6 == this.mAlphaSize) {
                    i = length;
                } else {
                    int iFindConfigAttrib9 = findConfigAttrib(egl10, eGLDisplay, eGLConfig4, 12512, 0);
                    i = length;
                    int iFindConfigAttrib10 = findConfigAttrib(egl10, eGLDisplay, eGLConfig4, 12513, 0);
                    if (eGLConfig3 != null || iFindConfigAttrib9 != 1 || iFindConfigAttrib10 < this.mNumSamples || iFindConfigAttrib3 != this.mRedSize || iFindConfigAttrib4 != this.mGreenSize || iFindConfigAttrib5 != this.mBlueSize || iFindConfigAttrib6 != this.mAlphaSize) {
                    }
                }
                eGLConfig3 = eGLConfig4;
            }
            i2++;
            eGLConfigArr2 = eGLConfigArr;
            length = i;
        }
        return eGLConfig3 != null ? eGLConfig3 : eGLConfig2 != null ? eGLConfig2 : eGLConfig;
    }

    public final int findConfigAttrib(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i, int i2) {
        return egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i, this.mValue) ? this.mValue[0] : i2;
    }
}
