package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import android.view.ViewGroup;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.〱, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class ViewOnLayoutChangeListenerC0808 implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0752 f3154;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ ViewGroup f3155;

    public ViewOnLayoutChangeListenerC0808(C0752 c0752, ViewGroup viewGroup) {
        this.f3154 = c0752;
        this.f3155 = viewGroup;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        boolean z;
        C0204 c0204M1165 = C0204.m1165();
        synchronized (c0204M1165) {
            z = c0204M1165.f1362;
        }
        if (z) {
            return;
        }
        try {
            C0752.m1437(this.f3154, this.f3155, this);
        } catch (Throwable th) {
            AbstractC1003.m1592(StringFog.decrypt("I/Md1E9vmt4R/Br6R3C61Ar6AOVLcbjYB/o=\n", "ZJ9yti4DzrE=\n"), StringFog.decrypt("XvR/cKIT57Y76WNTsUrhrW/FZX6+VOs=\n", "G4YNH9Azjtg=\n"), th, false);
        }
    }
}
