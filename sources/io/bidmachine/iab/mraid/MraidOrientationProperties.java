package io.bidmachine.iab.mraid;

import android.content.Context;
import com.ironsource.C3522b4;
import com.ironsource.Cc;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class MraidOrientationProperties {
    public boolean allowOrientationChange;
    public int forceOrientation;

    public MraidOrientationProperties(boolean allowOrientationChange, int forceOrientation) {
        this.allowOrientationChange = allowOrientationChange;
        this.forceOrientation = forceOrientation;
    }

    public static int forceOrientationFromString(String name) {
        int iIndexOf = Arrays.asList(C3522b4.i.D, C3522b4.i.C, "none").indexOf(name);
        if (iIndexOf != -1) {
            return iIndexOf;
        }
        return 2;
    }

    public String forceOrientationString() {
        int i = this.forceOrientation;
        return i != 0 ? i != 1 ? i != 2 ? Cc.a.g : "none" : C3522b4.i.C : C3522b4.i.D;
    }

    public int obtainTargetActivityOrientation(Context context) {
        int i = context.getResources().getConfiguration().orientation == 1 ? 1 : 0;
        int i2 = this.forceOrientation;
        if (i2 == 0) {
            return 1;
        }
        if (i2 == 1) {
            return 0;
        }
        if (this.allowOrientationChange) {
            return -1;
        }
        return i;
    }

    public String toString() {
        return "MRAIDOrientationProperties{allowOrientationChange=" + this.allowOrientationChange + ", forceOrientation=" + forceOrientationString() + '}';
    }
}
