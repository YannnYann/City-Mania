package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﭝ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0878 extends AbstractC0925 {
    static {
        StringFog.decrypt("FsuqCc9SXT4V\n", "ca7eRKomNVE=\n");
        StringFog.decrypt("tGsYjdvGCEe3fQ==\n", "0w5swL6yYCg=\n");
        StringFog.decrypt("cn1YFDSUPsxlZ1IRBJQV62RmURElgw==\n", "EQ89dUDxc6k=\n");
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static ArrayList m1466(ArrayList arrayList) {
        C0914 c0914 = (C0914) AbstractC0925.m1545(arrayList, 1, C0914.class);
        return arrayList.get(0) instanceof Class ? AbstractC0892.m1522((Class) AbstractC0925.m1545(arrayList, 0, Class.class), c0914) : AbstractC0892.m1522(AbstractC0925.m1545(arrayList, 0, Object.class).getClass(), c0914);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Method m1468(ArrayList arrayList) {
        C0914 c0914 = (C0914) AbstractC0925.m1545(arrayList, 1, C0914.class);
        if (arrayList.get(0) instanceof Class) {
            ArrayList arrayListM1522 = AbstractC0892.m1522((Class) AbstractC0925.m1545(arrayList, 0, Class.class), c0914);
            if (arrayListM1522.isEmpty()) {
                return null;
            }
            return (Method) arrayListM1522.get(0);
        }
        ArrayList arrayListM15222 = AbstractC0892.m1522(AbstractC0925.m1545(arrayList, 0, Object.class).getClass(), c0914);
        if (arrayListM15222.isEmpty()) {
            return null;
        }
        return (Method) arrayListM15222.get(0);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static C0928 m1467() {
        return new C0928();
    }
}
