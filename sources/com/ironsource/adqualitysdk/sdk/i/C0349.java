package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ڽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0349 implements InterfaceC0651 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Context f1954;

    public C0349(Context context) {
        this.f1954 = context;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0651
    public final String getName() {
        return StringFog.decrypt("WOX7lnHK2atb7MCSadDZqw==\n", "OoCT9wejttk=\n");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(37:6|(1:8)|(1:10)|11|(3:13|84|14)(1:18)|(1:20)|(1:22)|(1:24)|25|26|86|27|28|31|(1:33)(4:34|(4:37|(3:92|39|95)(1:94)|93|35)|91|40)|41|(1:44)|45|(1:47)|48|82|49|(1:51)(14:52|(1:58)|(1:60)(1:62)|61|63|(1:65)(1:66)|88|67|(1:69)|70|(1:72)|73|76|77)|54|(2:56|58)|(0)(0)|61|63|(0)(0)|88|67|(0)|70|(0)|73|76|77) */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01e3, code lost:
    
        r0 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt("XLA=\n", "J81SF71mXCU=\n");
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0152 A[Catch: Exception -> 0x015b, TRY_LEAVE, TryCatch #0 {Exception -> 0x015b, blocks: (B:49:0x013c, B:52:0x0152), top: B:82:0x013c }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01b1 A[Catch: Exception -> 0x01e3, TryCatch #3 {Exception -> 0x01e3, blocks: (B:67:0x0188, B:69:0x01b1, B:70:0x01c1, B:72:0x01ce, B:73:0x01de), top: B:88:0x0188 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01ce A[Catch: Exception -> 0x01e3, TryCatch #3 {Exception -> 0x01e3, blocks: (B:67:0x0188, B:69:0x01b1, B:70:0x01c1, B:72:0x01ce, B:73:0x01de), top: B:88:0x0188 }] */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0651
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.ironsource.adqualitysdk.sdk.i.C0873 mo1250() {
        /*
            Method dump skipped, instruction units count: 509
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C0349.mo1250():com.ironsource.adqualitysdk.sdk.i.ﭕ");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static double m1249(CopyOnWriteArrayList copyOnWriteArrayList) {
        if (copyOnWriteArrayList.size() < 2) {
            return 0.0d;
        }
        double size = 0.0d;
        for (int i = 0; i <= 2; i++) {
            Iterator it = copyOnWriteArrayList.iterator();
            double d = 0.0d;
            while (it.hasNext()) {
                d += (double) ((float[]) it.next())[i];
            }
            double size2 = d / ((double) copyOnWriteArrayList.size());
            Iterator it2 = copyOnWriteArrayList.iterator();
            double d2 = 0.0d;
            while (it2.hasNext()) {
                double d3 = ((double) ((float[]) it2.next())[i]) - size2;
                d2 += d3 * d3;
            }
            size += d2 / ((double) copyOnWriteArrayList.size());
        }
        return size / 3.0d;
    }
}
