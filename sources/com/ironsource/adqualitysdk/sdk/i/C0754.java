package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ἴ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0754 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0752 f3075;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ ViewOnLayoutChangeListenerC0808 f3076;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0755 f3077;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ViewGroup f3078;

    public C0754(C0752 c0752, ViewGroup viewGroup, C0755 c0755, ViewOnLayoutChangeListenerC0808 viewOnLayoutChangeListenerC0808) {
        this.f3075 = c0752;
        this.f3078 = viewGroup;
        this.f3077 = c0755;
        this.f3076 = viewOnLayoutChangeListenerC0808;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0752 c0752 = this.f3075;
        ViewGroup viewGroup = this.f3078;
        C0755 c0755 = this.f3077;
        c0752.getClass();
        View.OnTouchListener onTouchListenerM1352 = AbstractC0597.m1352(viewGroup);
        if (!(onTouchListenerM1352 instanceof ViewOnTouchListenerC0056)) {
            viewGroup.setOnTouchListener(new ViewOnTouchListenerC0056(onTouchListenerM1352, c0755));
        }
        for (int i = 0; i < this.f3078.getChildCount(); i++) {
            View childAt = this.f3078.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                C0752 c07522 = this.f3075;
                ViewOnLayoutChangeListenerC0808 viewOnLayoutChangeListenerC0808 = this.f3076;
                c07522.getClass();
                new Handler(Looper.getMainLooper()).post(new C0754(c07522, (ViewGroup) childAt, new C0755(c07522), viewOnLayoutChangeListenerC0808));
            } else {
                C0752 c07523 = this.f3075;
                C0755 c07552 = this.f3077;
                c07523.getClass();
                View.OnTouchListener onTouchListenerM13522 = AbstractC0597.m1352(childAt);
                if (!(onTouchListenerM13522 instanceof ViewOnTouchListenerC0056)) {
                    childAt.setOnTouchListener(new ViewOnTouchListenerC0056(onTouchListenerM13522, c07552));
                }
            }
        }
        this.f3078.removeOnLayoutChangeListener(this.f3076);
        this.f3078.addOnLayoutChangeListener(this.f3076);
    }
}
