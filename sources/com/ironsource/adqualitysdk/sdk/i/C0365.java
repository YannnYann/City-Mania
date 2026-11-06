package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ܚ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0365 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0355 f1982;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f1983;

    public C0365(C0355 c0355, String str) {
        this.f1982 = c0355;
        this.f1983 = str;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        if (this.f1982.f1960.f1907.get()) {
            return;
        }
        AbstractC0182.m1154(StringFog.decrypt("KO+GDiExCTAZzYkOJTUYLQ==\n", "a4DoYERSfV8=\n"), StringFog.decrypt("eXXmTVm9L7xKcuFeEL8su15+7E1frmM=\n", "MBuPOTDcQ9U=\n") + this.f1983);
        try {
            C0355 c0355 = this.f1982;
            c0355.f1960.m1237(c0355.f1963, c0355.f1964, this.f1983, c0355.f1962, c0355.f1961);
        } catch (Throwable th) {
            C0235 c0235 = this.f1982.f1960.f1898;
            if (c0235 != null) {
                AbstractC0272.m1210(new C0277(c0235, this.f1983, EnumC0307.f1828));
            }
            HashMap mapM1223 = C0324.m1223(this.f1982.f1960);
            String str = this.f1982.f1964;
            Throwable cause = th;
            while (cause.getCause() != null) {
                cause = cause.getCause();
            }
            mapM1223.put(str, cause.toString());
            AbstractC1003.m1593(StringFog.decrypt("8ODlDhhlsi3BwuoOHGGjMA==\n", "s4+LYH0GxkI=\n"), StringFog.decrypt("6VtnAV8yZkrJSGEHQ3UlW8NHewtOZmpKjA==\n", "rCkVbi0SBTg=\n") + this.f1983, th, true, true, true);
        }
    }
}
