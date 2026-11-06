package io.blueflower.stapel2d.drawing;

import com.badlogic.gdx.Gdx;

/* JADX INFO: loaded from: classes5.dex */
public final class GLUtil {
    public static boolean THROW_EXCEPTIONS = false;

    public static boolean checkError(String str, Object obj) {
        int iGlGetError = Gdx.gl20.glGetError();
        if (iGlGetError == 0) {
            return false;
        }
        String str2 = "OpenGL error in " + str + ": 0x" + Integer.toHexString(iGlGetError) + " (" + iGlGetError + ") in " + obj;
        if (THROW_EXCEPTIONS) {
            throw new RuntimeException(str2);
        }
        Gdx.app.error("GLUtil", str2);
        return true;
    }
}
