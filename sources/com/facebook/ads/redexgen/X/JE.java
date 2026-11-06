package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class JE implements InterfaceC2596i7 {
    public final /* synthetic */ C7T A00;
    public final /* synthetic */ C2591i2 A01;

    public JE(C7T c7t, C2591i2 c2591i2) {
        this.A00 = c7t;
        this.A01 = c2591i2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2596i7
    public final Object A5p(int i) {
        C2589i0 compatInfo = this.A01.A00(i);
        if (compatInfo == null) {
            return null;
        }
        return compatInfo.A0M();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2596i7
    public final List<Object> A77(String str, int i) {
        List<C2589i0> listA03 = this.A01.A03(str, i);
        if (listA03 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int infoCount = listA03.size();
        for (int i2 = 0; i2 < infoCount; i2++) {
            arrayList.add(listA03.get(i2).A0M());
        }
        return arrayList;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2596i7
    public final Object A78(int i) {
        C2589i0 compatInfo = this.A01.A01(i);
        if (compatInfo == null) {
            return null;
        }
        return compatInfo.A0M();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2596i7
    public final boolean AI8(int i, int i2, Bundle bundle) {
        return this.A01.A04(i, i2, bundle);
    }
}
