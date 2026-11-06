package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ἲ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0760 extends WeakHashMap implements InterfaceC0445 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0740 f3084;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0875 f3085;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0760(C0740 c0740, WeakHashMap weakHashMap, C0875 c0875) {
        super(weakHashMap);
        this.f3084 = c0740;
        this.f3085 = c0875;
    }

    @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        View view = (View) obj;
        WeakReference weakReference = (WeakReference) obj2;
        this.f3084.m1187(this, this.f3085, StringFog.decrypt("cnlFjjslR8ZrfVCMBSF1ynF5Qck9NXI=\n", "PBgx501ABqI=\n"), view, weakReference);
        return (WeakReference) super.put(view, weakReference);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0445
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1025() {
        return this;
    }
}
