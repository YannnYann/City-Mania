package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.os.Bundle;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒃ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0481 extends AbstractC0721 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0048 f2277;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f2278;

    public C0481(C0048 c0048, ArrayList arrayList) {
        this.f2277 = c0048;
        this.f2278 = arrayList;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0721, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        if (C0048.m1058(this.f2277, activity, this.f2278)) {
            m1281(StringFog.decrypt("1xM7tbxTbNPMBDmkrVtu39w=\n", "uH161sg6Gro=\n"), Arrays.asList(activity, bundle));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0721, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        if (C0048.m1058(this.f2277, activity, this.f2278)) {
            m1281(StringFog.decrypt("Z+W2wJqIwGx88rPGnZXEanHukw==\n", "CIv3o+7htgU=\n"), Collections.singletonList(activity));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0721, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        if (C0048.m1058(this.f2277, activity, this.f2278)) {
            m1281(StringFog.decrypt("3QKVdHyxIbDGFYR2fasyvQ==\n", "smzUFwjYV9k=\n"), Collections.singletonList(activity));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0721, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        if (C0048.m1058(this.f2277, activity, this.f2278)) {
            m1281(StringFog.decrypt("9jAiD+I2mAvtJzEJ5SqDB/0=\n", "mV5jbJZf7mI=\n"), Collections.singletonList(activity));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0721, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        if (C0048.m1058(this.f2277, activity, this.f2278)) {
            m1281(StringFog.decrypt("IE/EW+DQLM47WNZZ4twTyTxV5Fb33AnTLlXg\n", "TyGFOJS5Wqc=\n"), Arrays.asList(activity, bundle));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0721, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        if (C0048.m1058(this.f2277, activity, this.f2278)) {
            m1281(StringFog.decrypt("aUK4XolZ8r9yVapJnELws2I=\n", "Biz5Pf0whNY=\n"), Collections.singletonList(activity));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0721, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        if (C0048.m1058(this.f2277, activity, this.f2278)) {
            m1281(StringFog.decrypt("+5sq2m87IUPgjDjNdCInT/A=\n", "lPVruRtSVyo=\n"), Collections.singletonList(activity));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0721, com.ironsource.adqualitysdk.sdk.i.InterfaceC0443
    /* JADX INFO: renamed from: ﾇ */
    public final void mo1190(Activity activity) {
        m1281(StringFog.decrypt("p96F8F9+j9u9wqrlS3iF6afCoeddQ5/BrA==\n", "yLDEgC8s6q8=\n"), Collections.singletonList(activity));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0721, com.ironsource.adqualitysdk.sdk.i.InterfaceC0443
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1191(Activity activity) {
        m1281(StringFog.decrypt("MEI/1NKTyqMreBHmw6PEqi1DC8rG\n", "Xyx+pKLAr80=\n"), Collections.singletonList(activity));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1281(String str, List list) {
        C0048.m1057(this.f2277, AbstractC0202.m1159("/hwoV7yTfSzzFjpbqYNqOdpR\n", "v39cPsr6CVU=\n", new StringBuilder(), str), true, false, list);
        AbstractC0272.m1211(new C0522(this, str, list));
    }
}
