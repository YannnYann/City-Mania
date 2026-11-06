package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1743Lj extends AbstractRunnableC3004oq {
    public final /* synthetic */ C1741Lh A00;
    public final /* synthetic */ Map A01;
    public final /* synthetic */ Map A02;

    public C1743Lj(C1741Lh c1741Lh, Map map, Map map2) {
        this.A00 = c1741Lh;
        this.A02 = map;
        this.A01 = map2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        if (!TextUtils.isEmpty(this.A00.A01.A7z())) {
            HashMap map = new HashMap();
            Map<String, String> extraData = this.A02;
            map.putAll(extraData);
            Map<String, String> extraData2 = this.A01;
            map.putAll(extraData2);
            this.A00.A0A.A0A().ACt(this.A00.A01.A7z(), map);
        }
    }
}
