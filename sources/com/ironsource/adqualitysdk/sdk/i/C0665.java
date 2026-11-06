package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0665 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static C0665 f2713;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final ArrayList f2716 = new ArrayList();

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final ArrayList f2715 = new ArrayList();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0719 f2714 = new C0719(this);

    static {
        StringFog.decrypt("pUHLLZvx7+OBXMAnkfTw74BezCqR\n", "8iilSfSGo4o=\n");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static synchronized C0665 m1413() {
        try {
            if (f2713 == null) {
                f2713 = new C0665();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f2713;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m1414(z0 z0Var) {
        synchronized (this) {
            try {
                this.f2715.remove(z0Var);
                if (this.f2715.size() == 0) {
                    C0057 c0057M1069 = C0057.m1069();
                    C0719 c0719 = this.f2714;
                    c0057M1069.getClass();
                    AbstractC0272.m1211(new C0098(c0057M1069, c0719));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1415(z0 z0Var) {
        synchronized (this) {
            this.f2715.add(z0Var);
        }
        C0057 c0057M1069 = C0057.m1069();
        C0719 c0719 = this.f2714;
        c0057M1069.getClass();
        AbstractC0272.m1211(new C0107(c0057M1069, c0719));
        AbstractC0272.m1211(new C0711(this, z0Var));
    }
}
