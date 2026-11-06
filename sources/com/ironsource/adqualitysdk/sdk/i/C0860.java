package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ךּ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0860 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0818 f3323;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f3324;

    public C0860(C0818 c0818, String str) {
        this.f3323 = c0818;
        this.f3324 = str;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0344 c0344 = this.f3323.f3166;
        boolean zIsEmpty = TextUtils.isEmpty(this.f3324);
        if (zIsEmpty) {
            C0773 c0773 = c0344.f1941.f1940.f1917.f1878.f1352;
            String strDecrypt = StringFog.decrypt("hqwwGC6Tz7qTtAIaZZs=\n", "4MBRfwD1psg=\n");
            String strDecrypt2 = StringFog.decrypt("/fAYIWE=\n", "m5F0UgTP5BI=\n");
            c0773.getClass();
            C0773.m1446().post(new C0802(c0773, strDecrypt, strDecrypt2));
        }
        AbstractC0272.m1211(new C0357(c0344, zIsEmpty));
    }
}
