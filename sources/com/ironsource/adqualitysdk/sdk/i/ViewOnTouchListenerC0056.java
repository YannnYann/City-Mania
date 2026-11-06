package com.ironsource.adqualitysdk.sdk.i;

import android.view.MotionEvent;
import android.view.View;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ļ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class ViewOnTouchListenerC0056 extends AbstractC0897 implements View.OnTouchListener {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f804 = StringFog.decrypt("X89S9gFNz3J50nL8GkvVenXCaesVWshM\n", "EKEGmXQupz4=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final InterfaceC0060 f805;

    public ViewOnTouchListenerC0056(View.OnTouchListener onTouchListener, InterfaceC0060 interfaceC0060) {
        super(onTouchListener);
        this.f805 = interfaceC0060;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        try {
            this.f805.mo1071(this, view, motionEvent);
        } catch (Throwable th) {
            AbstractC1003.m1592(f804, StringFog.decrypt("BnOxm5BQ3GNjbJeWrhnGeSZvpobCH9tZLHSgnA==\n", "QwHD9OJwtQ0=\n"), th, false);
        }
        Object obj = this.f3454;
        if (obj != null) {
            return ((View.OnTouchListener) obj).onTouch(view, motionEvent);
        }
        return false;
    }
}
