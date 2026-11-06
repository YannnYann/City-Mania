package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵖ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0690 extends AbstractC0925 implements InterfaceC0724, InterfaceC0429 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final InterfaceC0724 f2797;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final Object f2798;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final Map f2799;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final Collection f2800;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Field f2801;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final String f2796 = StringFog.decrypt("Vz0a6YfOsYB9MxTFicqb\n", "GF9wjOS69+k=\n");

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f2795 = StringFog.decrypt("DyeoGdEGbis=\n", "aELcT7BqG04=\n");

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final String f2794 = StringFog.decrypt("qtDQe2IQHh4=\n", "2bWkLQN8a3s=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static final String f2793 = StringFog.decrypt("9ojh79FYOQ==\n", "n/unhrQ0XS0=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static final String f2792 = StringFog.decrypt("UBy/vSnCCcs=\n", "N3nL+0CnZa8=\n");

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static final String f2791 = StringFog.decrypt("2owzCFT7EVTHlh8J\n", "s/9wZziXdDc=\n");

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static final String f2790 = StringFog.decrypt("974ii4hWY//zrz+niQ==\n", "kNtWyOc6D5o=\n");

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static final String f2789 = StringFog.decrypt("JqYeffc=\n", "T9VTHId9VPs=\n");

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static final String f2788 = StringFog.decrypt("2M/DdnSN\n", "v6q3OxX9cjA=\n");

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static final String f2787 = StringFog.decrypt("agZds0Q+S855\n", "DWMp4yVMLqA=\n");

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public static final String f2786 = StringFog.decrypt("tfSAb/Ww7k+88pE=\n", "0pH0JpvDmi4=\n");

    public C0690(Field field, Object obj, InterfaceC0724 interfaceC0724) {
        this.f2801 = field;
        this.f2798 = obj;
        this.f2797 = interfaceC0724;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Object m1420() {
        Field field = this.f2801;
        if (field != null) {
            try {
                return field.get(this.f2798);
            } catch (Exception unused) {
                return null;
            }
        }
        if (this.f2800 == null && this.f2799 == null) {
            return null;
        }
        return this.f2798;
    }

    public C0690(Collection collection, Object obj, InterfaceC0724 interfaceC0724) {
        this.f2800 = collection;
        this.f2798 = obj;
        this.f2797 = interfaceC0724;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0076  */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0429
    /* JADX INFO: renamed from: ﾒ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object mo1012(com.ironsource.adqualitysdk.sdk.i.C0048 r4, java.lang.String r5, java.util.ArrayList r6, com.ironsource.adqualitysdk.sdk.i.C0875 r7, com.ironsource.adqualitysdk.sdk.i.C0915 r8) {
        /*
            Method dump skipped, instruction units count: 302
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C0690.mo1012(com.ironsource.adqualitysdk.sdk.i.İ, java.lang.String, java.util.ArrayList, com.ironsource.adqualitysdk.sdk.i.ﭘ, com.ironsource.adqualitysdk.sdk.i.ﹲ):java.lang.Object");
    }

    public C0690(Map map, Object obj, InterfaceC0724 interfaceC0724) {
        this.f2799 = map;
        this.f2798 = obj;
        this.f2797 = interfaceC0724;
    }
}
