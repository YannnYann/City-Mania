package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ˈ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0159 {

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public volatile C0625 f1149;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public C0655 f1150;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public Context f1151;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final C0612 f1152;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final C1023 f1153;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0861 f1154;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0948 f1155;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0706 f1156;

    public C0159(C0706 c0706) {
        C0948 c0948 = new C0948();
        this.f1149 = new C0625(new C0646());
        this.f1156 = c0706;
        this.f1155 = c0948;
        C0861 c0861 = new C0861();
        this.f1154 = c0861;
        this.f1153 = new C1023(c0948, c0861, c0706);
        this.f1152 = new C0612();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1134(Context context) {
        this.f1151 = context.getApplicationContext();
        Context context2 = this.f1151;
        C0888 c0888 = new C0888(this.f1151);
        C0616 c0616 = new C0616(this.f1151);
        Context context3 = this.f1151;
        this.f1150 = new C0655(context2, Arrays.asList(c0888, c0616, new C1019(context3), new C0349(context3)));
        m1133();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0625 m1133() {
        C0965 c0965;
        C0694 c0694;
        C0655 c0655 = this.f1150;
        if (c0655 != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = 1;
            try {
                C0932 c0932 = c0655.f2691;
                Context context = c0655.f2692;
                c0932.getClass();
                c0965 = C0932.m1549(context);
            } catch (Exception e) {
                arrayList.add(StringFog.decrypt("+SUdxG0TQjXCOQbZRgUNZw==\n", "q0pysCV2N0c=\n") + e.getMessage());
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(7);
                c0965 = new C0965(true, true, arrayList3);
            }
            arrayList2.addAll(c0965.f3647);
            try {
                C0684 c0684 = c0655.f2690;
                Context context2 = c0655.f2692;
                c0684.getClass();
                c0694 = C0684.m1419(context2);
            } catch (Exception e2) {
                arrayList.add(StringFog.decrypt("iefi558AH8iu/fDnhBoc5aX84/qeARvOs7Ox\n", "wImRk+11cq0=\n") + e2.getMessage());
                ArrayList arrayList4 = new ArrayList();
                arrayList4.add(21);
                c0694 = new C0694(true, true, true, true, arrayList4);
            }
            arrayList2.addAll(c0694.f2820);
            HashMap map = new HashMap();
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            ArrayList<C0664> arrayList7 = new ArrayList();
            for (InterfaceC0651 interfaceC0651 : c0655.f2689) {
                try {
                    C0873 c0873Mo1250 = interfaceC0651.mo1250();
                    arrayList7.add(new C0664(interfaceC0651.getName(), c0873Mo1250));
                    arrayList2.addAll(c0873Mo1250.f3352);
                    if (!c0873Mo1250.f3353 && c0873Mo1250.f3350 != null) {
                        arrayList.add(interfaceC0651.getName() + StringFog.decrypt("NWg=\n", "D0itlQVVmlE=\n") + c0873Mo1250.f3350);
                    }
                    if (c0873Mo1250.f3351 != null) {
                        map.put(interfaceC0651.getName(), c0873Mo1250.f3351);
                    }
                    interfaceC0651.getName();
                    for (Integer num : c0873Mo1250.f3352) {
                        int iIntValue = num.intValue();
                        if (iIntValue != 30 && iIntValue != 31 && iIntValue != 33 && iIntValue != 32 && iIntValue != 40 && iIntValue != 42 && iIntValue != 44 && iIntValue != 41) {
                            if (iIntValue == 63 || iIntValue == 64 || iIntValue == 61 || iIntValue == 62 || iIntValue == 60) {
                                arrayList5.add(num);
                            } else if (iIntValue >= 50 && iIntValue <= 56) {
                                arrayList6.add(num);
                            }
                        }
                    }
                } catch (Exception e3) {
                    arrayList.add(interfaceC0651.getName() + StringFog.decrypt("WXY=\n", "Y1bvY782RPs=\n") + e3.getMessage());
                    arrayList7.add(new C0664(interfaceC0651.getName(), new C0873(false, Collections.EMPTY_LIST, null, null)));
                    i = i;
                }
            }
            int i2 = i;
            boolean z = c0965.f3649;
            boolean z2 = c0965.f3648;
            boolean z3 = c0694.f2824;
            boolean z4 = c0694.f2823;
            boolean z5 = c0694.f2822;
            boolean z6 = c0694.f2821;
            int iIntValue2 = !z ? 1 : 0;
            if (!z2) {
                iIntValue2++;
            }
            if (!z3 && !z4 && !z5 && !z6) {
                iIntValue2 += 2;
            }
            for (C0664 c0664 : arrayList7) {
                if (c0664.f2711.f3353) {
                    Integer num2 = (Integer) C0655.f2687.get(c0664.f2712);
                    iIntValue2 += num2 != null ? num2.intValue() : i2;
                }
            }
            C0646 c0646 = new C0646();
            c0646.f2673 = iIntValue2;
            c0646.f2672 = arrayList5;
            c0646.f2671 = arrayList6;
            c0646.f2670 = map;
            c0646.f2669 = arrayList2;
            c0646.f2668 = arrayList;
            C0625 c0625 = new C0625(c0646);
            this.f1149 = c0625;
            return c0625;
        }
        throw new IllegalStateException(StringFog.decrypt("+7CkHk7r2AWOn487Le3ECdqYgSNk/s8EgNGjLmHoignAmJQmbOjDGsvZgyBj8M8Y2tjAKWT22RSA\n", "rvHgTw2EqmA=\n"));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final byte[] m1135(byte[] bArr, String str) {
        C0612 c0612 = this.f1152;
        C0240 c0240 = (C0240) c0612.f2591.remove(str);
        if (c0240 == null || System.currentTimeMillis() - c0240.f1547 > c0612.f2592) {
            c0240 = null;
        }
        if (c0240 != null) {
            return AbstractC0215.m1188(bArr, c0240, this.f1155);
        }
        throw new IllegalStateException(AbstractC0202.m1159("vlqJy/8OEC6fW4ne9QgNI9BTxsq6DwY2hVDazNMZWWc=\n", "8DWpuJp9Y0c=\n", new StringBuilder(), str));
    }
}
