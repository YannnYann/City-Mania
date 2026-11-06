package info.flowersoft.theotown.android;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.os.Build;
import info.flowersoft.theotown.crossplatform.GameSetup;
import info.flowersoft.theotown.resources.Settings;

/* JADX INFO: loaded from: classes4.dex */
public class AndroidGameSetup implements GameSetup {
    @Override // info.flowersoft.theotown.crossplatform.GameSetup
    public void applyDefaultSettings() {
        boolean zIsTablet = isTablet();
        System.out.println("Stats: " + getMaxTextureSize() + "mts, " + getCpuCount() + "cores, " + getHeapSizeMB() + "mb, tablet: " + zIsTablet);
        if (getMaxTextureSize() < 8192 || getCpuCount() < 4 || getHeapSizeMB() < 512 || Build.VERSION.SDK_INT < 26) {
            Settings.useBlur = false;
            Settings.smoothZoom = 3;
            Settings.groundBlending = false;
        }
        if (zIsTablet) {
            Settings.screenOrientation = 2;
        }
    }

    public final int getMaxTextureSize() {
        int[] iArr = new int[1];
        GLES20.glGetIntegerv(3379, iArr, 0);
        return iArr[0];
    }

    public final int getCpuCount() {
        return Runtime.getRuntime().availableProcessors();
    }

    public final int getHeapSizeMB() {
        return (int) ((Runtime.getRuntime().maxMemory() / 1024) / 1024);
    }

    public final boolean isTablet() {
        return Resources.getSystem().getConfiguration().smallestScreenWidthDp >= 600;
    }
}
