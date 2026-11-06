package io.bidmachine.iab.mraid;

import android.content.Context;
import android.graphics.Rect;
import io.bidmachine.util.DeviceUtilsKt;
import io.bidmachine.util.UtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public class MraidScreenMetrics {
    public final float a;
    public final Rect b;
    public final Rect c;
    public final Rect d;
    public final Rect e;
    public final Rect f;
    public final Rect g;
    public final Rect h;
    public final Rect i;

    public MraidScreenMetrics(float f, Rect screenRectPx, Rect screenRectDp, Rect rootViewRectPx, Rect rootViewRectDp, Rect currentAdRectPx, Rect currentAdRectDp, Rect defaultAdRectPx, Rect defaultAdRectDp) {
        Intrinsics.checkNotNullParameter(screenRectPx, "screenRectPx");
        Intrinsics.checkNotNullParameter(screenRectDp, "screenRectDp");
        Intrinsics.checkNotNullParameter(rootViewRectPx, "rootViewRectPx");
        Intrinsics.checkNotNullParameter(rootViewRectDp, "rootViewRectDp");
        Intrinsics.checkNotNullParameter(currentAdRectPx, "currentAdRectPx");
        Intrinsics.checkNotNullParameter(currentAdRectDp, "currentAdRectDp");
        Intrinsics.checkNotNullParameter(defaultAdRectPx, "defaultAdRectPx");
        Intrinsics.checkNotNullParameter(defaultAdRectDp, "defaultAdRectDp");
        this.a = f;
        this.b = screenRectPx;
        this.c = screenRectDp;
        this.d = rootViewRectPx;
        this.e = rootViewRectDp;
        this.f = currentAdRectPx;
        this.g = currentAdRectDp;
        this.h = defaultAdRectPx;
        this.i = defaultAdRectDp;
    }

    public final boolean a(Rect rect, Rect rect2, int i, int i2, int i3, int i4) {
        if (rect.left == i && rect.top == i2 && i + i3 == rect.right && i2 + i4 == rect.bottom) {
            return false;
        }
        rect.set(i, i2, i3 + i, i4 + i2);
        UtilsKt.setDpFromPx(rect2, rect, this.a);
        return true;
    }

    public final Rect getCurrentAdRectDp() {
        return this.g;
    }

    public final Rect getDefaultAdRectDp() {
        return this.i;
    }

    public final Rect getRootViewRectDp() {
        return this.e;
    }

    public final Rect getScreenRectDp() {
        return this.c;
    }

    public final boolean setCurrentAdPosition(int i, int i2, int i3, int i4) {
        return a(this.f, this.g, i, i2, i3, i4);
    }

    public final boolean setDefaultAdPosition(int i, int i2, int i3, int i4) {
        return a(this.h, this.i, i, i2, i3, i4);
    }

    public final boolean setRootViewPosition(int i, int i2, int i3, int i4) {
        return a(this.d, this.e, i, i2, i3, i4);
    }

    public final boolean setScreenSize(int i, int i2) {
        if (this.b.width() == i && this.b.height() == i2) {
            return false;
        }
        this.b.set(0, 0, i, i2);
        UtilsKt.setDpFromPx(this.c, this.b, this.a);
        return true;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MraidScreenMetrics(Context context) {
        this(DeviceUtilsKt.getScreenDensity(context), new Rect(), new Rect(), new Rect(), new Rect(), new Rect(), new Rect(), new Rect(), new Rect());
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
