package com.badlogic.gdx.backends.android.surfaceview;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.os.SystemClock;
import android.util.Log;
import android.view.KeyEvent;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.backends.android.DefaultAndroidInput;
import com.badlogic.gdx.backends.android.surfaceview.ResolutionStrategy;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

/* JADX INFO: loaded from: classes.dex */
public class GLSurfaceView20 extends GLSurfaceView {
    public static String TAG = "GL2JNIView";
    public static int targetGLESVersion;
    public Input.OnscreenKeyboardType onscreenKeyboardType;
    public final ResolutionStrategy resolutionStrategy;

    public GLSurfaceView20(Context context, ResolutionStrategy resolutionStrategy, int i) {
        super(context);
        this.onscreenKeyboardType = Input.OnscreenKeyboardType.Default;
        targetGLESVersion = i;
        this.resolutionStrategy = resolutionStrategy;
        init(false, 16, 0);
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onMeasure(int i, int i2) {
        ResolutionStrategy.MeasuredDimension measuredDimensionCalcMeasures = this.resolutionStrategy.calcMeasures(i, i2);
        setMeasuredDimension(measuredDimensionCalcMeasures.width, measuredDimensionCalcMeasures.height);
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        if (editorInfo != null) {
            editorInfo.imeOptions |= 268435456;
            editorInfo.inputType = DefaultAndroidInput.getAndroidInputType(this.onscreenKeyboardType, true);
        }
        return new BaseInputConnection(this, false) { // from class: com.badlogic.gdx.backends.android.surfaceview.GLSurfaceView20.1
            @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
            public boolean deleteSurroundingText(int i, int i2) {
                if (i == 1 && i2 == 0) {
                    sendDownUpKeyEventForBackwardCompatibility(67);
                    return true;
                }
                return super.deleteSurroundingText(i, i2);
            }

            public final void sendDownUpKeyEventForBackwardCompatibility(int i) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                super.sendKeyEvent(new KeyEvent(jUptimeMillis, jUptimeMillis, 0, i, 0, 0, -1, 0, 6));
                super.sendKeyEvent(new KeyEvent(SystemClock.uptimeMillis(), jUptimeMillis, 1, i, 0, 0, -1, 0, 6));
            }
        };
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public final void init(boolean z, int i, int i2) {
        if (z) {
            getHolder().setFormat(-3);
        }
        setEGLContextFactory(new ContextFactory());
        setEGLConfigChooser(z ? new ConfigChooser(8, 8, 8, 8, i, i2) : new ConfigChooser(8, 8, 8, 0, i, i2));
    }

    public static class ContextFactory implements GLSurfaceView.EGLContextFactory {
        public static int EGL_CONTEXT_CLIENT_VERSION = 12440;

        @Override // android.opengl.GLSurfaceView.EGLContextFactory
        public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            Log.w(GLSurfaceView20.TAG, "creating OpenGL ES " + GLSurfaceView20.targetGLESVersion + ".0 context");
            StringBuilder sb = new StringBuilder();
            sb.append("Before eglCreateContext ");
            sb.append(GLSurfaceView20.targetGLESVersion);
            GLSurfaceView20.checkEglError(sb.toString(), egl10);
            EGLContext eGLContextEglCreateContext = egl10.eglCreateContext(eGLDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{EGL_CONTEXT_CLIENT_VERSION, GLSurfaceView20.targetGLESVersion, 12344});
            if ((!GLSurfaceView20.checkEglError("After eglCreateContext " + GLSurfaceView20.targetGLESVersion, egl10) || eGLContextEglCreateContext == null) && GLSurfaceView20.targetGLESVersion > 2) {
                Log.w(GLSurfaceView20.TAG, "Falling back to GLES 2");
                GLSurfaceView20.targetGLESVersion = 2;
                return createContext(egl10, eGLDisplay, eGLConfig);
            }
            Log.w(GLSurfaceView20.TAG, "Returning a GLES " + GLSurfaceView20.targetGLESVersion + " context");
            return eGLContextEglCreateContext;
        }

        @Override // android.opengl.GLSurfaceView.EGLContextFactory
        public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            egl10.eglDestroyContext(eGLDisplay, eGLContext);
        }
    }

    public static boolean checkEglError(String str, EGL10 egl10) {
        boolean z = true;
        while (true) {
            int iEglGetError = egl10.eglGetError();
            if (iEglGetError == 12288) {
                return z;
            }
            Log.e(TAG, String.format("%s: EGL error: 0x%x", str, Integer.valueOf(iEglGetError)));
            z = false;
        }
    }

    public static class ConfigChooser implements GLSurfaceView.EGLConfigChooser {
        public static int[] s_configAttribs2 = {12324, 4, 12323, 4, 12322, 4, 12352, 4, 12344};
        public int mAlphaSize;
        public int mBlueSize;
        public int mDepthSize;
        public int mGreenSize;
        public int mRedSize;
        public int mStencilSize;
        public int[] mValue = new int[1];

        public ConfigChooser(int i, int i2, int i3, int i4, int i5, int i6) {
            this.mRedSize = i;
            this.mGreenSize = i2;
            this.mBlueSize = i3;
            this.mAlphaSize = i4;
            this.mDepthSize = i5;
            this.mStencilSize = i6;
        }

        @Override // android.opengl.GLSurfaceView.EGLConfigChooser
        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
            int[] iArr = new int[1];
            egl10.eglChooseConfig(eGLDisplay, s_configAttribs2, null, 0, iArr);
            int i = iArr[0];
            if (i <= 0) {
                throw new IllegalArgumentException("No configs match configSpec");
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[i];
            egl10.eglChooseConfig(eGLDisplay, s_configAttribs2, eGLConfigArr, i, iArr);
            return chooseConfig(egl10, eGLDisplay, eGLConfigArr);
        }

        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
            int length = eGLConfigArr.length;
            int i = 0;
            while (i < length) {
                EGLConfig eGLConfig = eGLConfigArr[i];
                EGL10 egl102 = egl10;
                EGLDisplay eGLDisplay2 = eGLDisplay;
                int iFindConfigAttrib = findConfigAttrib(egl102, eGLDisplay2, eGLConfig, 12325, 0);
                int iFindConfigAttrib2 = findConfigAttrib(egl102, eGLDisplay2, eGLConfig, 12326, 0);
                if (iFindConfigAttrib >= this.mDepthSize && iFindConfigAttrib2 >= this.mStencilSize) {
                    int iFindConfigAttrib3 = findConfigAttrib(egl102, eGLDisplay2, eGLConfig, 12324, 0);
                    int iFindConfigAttrib4 = findConfigAttrib(egl102, eGLDisplay2, eGLConfig, 12323, 0);
                    int iFindConfigAttrib5 = findConfigAttrib(egl102, eGLDisplay2, eGLConfig, 12322, 0);
                    int iFindConfigAttrib6 = findConfigAttrib(egl102, eGLDisplay2, eGLConfig, 12321, 0);
                    if (iFindConfigAttrib3 == this.mRedSize && iFindConfigAttrib4 == this.mGreenSize && iFindConfigAttrib5 == this.mBlueSize && iFindConfigAttrib6 == this.mAlphaSize) {
                        return eGLConfig;
                    }
                }
                i++;
                egl10 = egl102;
                eGLDisplay = eGLDisplay2;
            }
            return null;
        }

        public final int findConfigAttrib(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i, int i2) {
            return egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i, this.mValue) ? this.mValue[0] : i2;
        }
    }
}
