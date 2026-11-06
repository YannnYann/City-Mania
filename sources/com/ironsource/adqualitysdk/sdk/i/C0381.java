package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.গ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0381 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0324 f2005;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Context f2006;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0343 f2007;

    public C0381(C0324 c0324, C0343 c0343, Context context) {
        this.f2005 = c0324;
        this.f2007 = c0343;
        this.f2006 = context;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        boolean zMo1492;
        AbstractC0272.m1210(new C0384(this));
        C0324 c0324 = this.f2005;
        Context context = this.f2006;
        synchronized (c0324) {
            zMo1492 = AbstractC0885.m1491().mo1492();
        }
        if (!zMo1492) {
            AbstractC0272.m1215(new C0347(c0324), AbstractC0885.m1491().mo1508());
        }
        String str = AbstractC0856.f3315;
        ArrayList<String> arrayList = new ArrayList(AbstractC0856.f3313.keySet());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str2 : arrayList) {
            List<AbstractC0248> list = (List) AbstractC0856.f3313.get(str2);
            if (list != null) {
                ArrayList arrayList2 = new ArrayList();
                for (AbstractC0248 abstractC0248 : list) {
                    if (AbstractC0856.m1458(abstractC0248)) {
                        arrayList2.add(abstractC0248);
                    }
                }
                linkedHashMap.put(str2, arrayList2);
            }
        }
        AbstractC0272.m1210(new C0332(c0324, context, linkedHashMap));
    }
}
