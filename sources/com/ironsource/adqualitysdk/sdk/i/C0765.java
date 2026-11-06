package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ἷ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0765 implements InterfaceC0387 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0764 f3093;

    public C0765(C0764 c0764) {
        this.f3093 = c0764;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0387
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1261(C0571 c0571) {
        C0593 c0593 = c0571.f2516;
        int i = c0593.f2540;
        String str = c0593.f2539;
        if (i >= 200 && i <= 299) {
            String strDecrypt = StringFog.decrypt("y5rV4NsQgF75\n", "ivS0jKJk6T0=\n");
            AbstractC0182.m1155(strDecrypt, strDecrypt, StringFog.decrypt("/limEjQkO6HaVLdBJiQ6scpHvVwmYWiy1kXyQTBqLJHPUrxGdA==\n", "uTfSMlUESNQ=\n"), this.f3093.f3092, true);
            for (C0619 c0619 : this.f3093.f3091) {
                C0931 c0931 = this.f3093.f3089.f2634;
                C1000 c1000 = c0619.f2613;
                c0931.getClass();
                C0773.m1446().post(new C0935(c0931, c1000));
            }
            AbstractC0272.m1210(new C0801(this, c0571));
            return;
        }
        if (i == 403) {
            synchronized (this.f3093.f3089) {
                try {
                    Iterator it = this.f3093.f3089.f2628.iterator();
                    while (it.hasNext()) {
                        AbstractC0272.m1210(new C0807((C0432) it.next()));
                    }
                } finally {
                }
            }
        } else {
            AbstractC0182.m1154(StringFog.decrypt("+koPR1+WjEPI\n", "uyRuKybi5SA=\n"), StringFog.decrypt("mvion8N7i8Out7Kf2WfC2rv4q52XZIvZobe2n9l3p9us+bHUl1SN2enloInHfIzerK3l\n", "yZfF+rcT4q0=\n") + i + " " + str);
        }
        AbstractC0272.m1210(new C0796(this, c0571, i, str));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0387
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1262(C0571 c0571, String str) {
        AbstractC0272.m1210(new C0793(this, c0571, str));
    }
}
