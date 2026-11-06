package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺛ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0940 implements InterfaceC0449 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0048 f3549;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f3550;

    public C0940(C0048 c0048, ArrayList arrayList) {
        this.f3549 = c0048;
        this.f3550 = arrayList;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0449
    /* JADX INFO: renamed from: ﾇ */
    public final void mo1270(Activity activity) {
        String strDecrypt = StringFog.decrypt("TOEdtWUGdslG/C+1dBZh\n", "I49b2gZzBZs=\n");
        if (C0048.m1058(this.f3549, activity, this.f3550)) {
            String strM1159 = AbstractC0202.m1159("CkZw53b1x54HX3PVfPjXn2U=\n", "SzYAoRmWsu0=\n", new StringBuilder(), strDecrypt);
            C0048.m1057(this.f3549, strM1159, true, false, Collections.singletonList(activity));
            AbstractC0272.m1211(new C0945(this, strM1159, activity));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0449
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1271(Activity activity) {
        String strDecrypt = StringFog.decrypt("bmEdXAHr0PlufC8=\n", "AQ9bM2Keo7U=\n");
        if (C0048.m1058(this.f3549, activity, this.f3550)) {
            String strM1159 = AbstractC0202.m1159("CkZw53b1x54HX3PVfPjXn2U=\n", "SzYAoRmWsu0=\n", new StringBuilder(), strDecrypt);
            C0048.m1057(this.f3549, strM1159, true, false, Collections.singletonList(activity));
            AbstractC0272.m1211(new C0945(this, strM1159, activity));
        }
    }
}
