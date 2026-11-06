package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import com.ironsource.adqualitysdk.sdk.IronSourceAdQuality;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ډ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0330 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0318 f1917;

    public C0330(C0318 c0318) {
        this.f1917 = c0318;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0318 c0318 = this.f1917;
        if (c0318.f1883) {
            C0324 c0324 = c0318.f1878.f1356;
            Context context = c0318.f1882;
            C0343 c0343 = new C0343(this);
            synchronized (c0324) {
                try {
                    if (c0324.f1907.get()) {
                        return;
                    }
                    C0465.f2217 = AbstractC0885.m1491().mo1499();
                    AbstractC0727.f2977 = AbstractC0885.m1491().mo1500();
                    if (c0324.f1906) {
                        AbstractC0272.m1210(new C0377(c0343));
                    } else {
                        String strDecrypt = StringFog.decrypt("lC2SqqFiYbCsGoeU\n", "1UnD38AOCMQ=\n");
                        AbstractC0182.m1157(strDecrypt, strDecrypt, StringFog.decrypt("VyNushSJW65XI26yFIlW6ghhLcxW0QTgHy4C+2jRF+8Tejq/\n", "eg5DnzmkdoM=\n") + IronSourceAdQuality.getSDKVersion() + StringFog.decrypt("YMiHeMSLJlxtyId4xIsm\n", "QOWqVemmC3E=\n"), true);
                        AbstractC0272.m1210(new C0390(c0324, context));
                        C0381 c0381 = new C0381(c0324, c0343, context);
                        if (c0324.m1232()) {
                            String str = AbstractC0856.f3315;
                            ArrayList arrayList = new ArrayList(Arrays.asList(new C0063(), new C0076(), new C0101()));
                            ArrayList arrayList2 = new ArrayList(AbstractC0856.f3314);
                            if (!arrayList.isEmpty()) {
                                AbstractC0272.m1210(new C0355(c0324, (String) arrayList2.remove(0), context, (AbstractC0248) arrayList.remove(0), arrayList.isEmpty() ? c0381 : new C0370(c0324, context, arrayList, arrayList2, c0381)));
                            }
                        } else {
                            AbstractC0272.m1210(new C0355(c0324, AbstractC0856.f3315, context, new C0068(), c0381));
                        }
                        c0324.f1906 = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
