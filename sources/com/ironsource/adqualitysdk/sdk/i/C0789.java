package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ℐ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0789 extends RelativeLayout {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0752 f3128;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ boolean f3129;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0789(C0752 c0752, Context context, boolean z) {
        super(context);
        this.f3128 = c0752;
        this.f3129 = z;
    }

    @Override // android.view.View
    public final int getVisibility() {
        if (this.f3129) {
            return 4;
        }
        return super.getVisibility();
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        C0752.m1436(this.f3128, motionEvent);
        return super.onInterceptTouchEvent(motionEvent);
    }
}
