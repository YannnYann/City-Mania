package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3507t extends AbstractC0679 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final ArrayList f380;

    public C3507t(ArrayList arrayList) {
        this.f380 = arrayList;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj)) {
            return this.f380.equals(((C3507t) obj).f380);
        }
        return false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    public final int hashCode() {
        return this.f380.hashCode() + (C3507t.class.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("0lKDcg==\n", "pDPxUtVLjHQ=\n"));
        sb.append(TextUtils.join(StringFog.decrypt("At0=\n", "Lv3Z5+hcFLE=\n"), this.f380));
        return AbstractC0829.m1456("jQ==\n", "tkdyvvOld2w=\n", sb);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0180 mo1031(C0915 c0915, C0048 c0048) {
        List listAsList;
        for (AbstractC0963 abstractC0963 : this.f380) {
            C3506s c3506s = abstractC0963 instanceof C3506s ? (C3506s) abstractC0963 : abstractC0963 instanceof C0386 ? ((C0386) abstractC0963).f2014 : null;
            if (c3506s != null && (listAsList = Arrays.asList(c3506s.f379)) != null) {
                Iterator it = listAsList.iterator();
                while (it.hasNext()) {
                    c0915.f3497.put((String) it.next(), null);
                }
            }
            abstractC0963.mo1030(c0915, c0048);
        }
        return new C0180(null);
    }
}
