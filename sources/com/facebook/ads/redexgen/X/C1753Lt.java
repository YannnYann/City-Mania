package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.util.SparseArray;
import com.facebook.ads.androidx.media3.common.Bundleable;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1753Lt {
    public static String[] A00 = {"4iWaQX9QL0TV7ciG", "xT1DBnx3cgqSI1EHRIJwYOLbDuZXZSSy", "zf4ERY3epGDBpzw7qq", "RVk2EvtAO6JxDlUsvytnaWlyeZGN0zQx", "4SbbE41KWjNAZ40flvn9aeYMmzNdDWTu", "VvpAlJlvg5jCIDhdzyGj2bOvFlVVLQ9f", "Y1o2uThHomph9fqnYqxDCn", "j5QvKsjh7m2QCLDYHybofUYs0e8V1AN4"};

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static <T extends InterfaceC1703Jt> AbstractC14399l<T> A01(InterfaceC1702Js<T> interfaceC1702Js, List<Bundle> list) {
        C13194e c13194eA01 = AbstractC14399l.A01();
        for (int i = 0; i < list.size(); i++) {
            c13194eA01.A04(interfaceC1702Js.A7F((Bundle) AbstractC1747Ln.A01(list.get(i))));
        }
        return c13194eA01.A05();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Js != com.facebook.ads.androidx.media3.common.Bundleable$Creator<T extends com.facebook.ads.redexgen.X.Jt> */
    public static <T extends InterfaceC1703Jt> SparseArray<T> A00(InterfaceC1702Js<T> interfaceC1702Js, SparseArray<Bundle> sparseArray) {
        Bundleable.Creator<T> creator = new SparseArray<>(sparseArray.size());
        int i = 0;
        while (true) {
            int size = sparseArray.size();
            int i2 = A00[1].charAt(5);
            if (i2 == 84) {
                throw new RuntimeException();
            }
            A00[0] = "yJ7q7c4kcteAallN";
            if (i < size) {
                int i3 = sparseArray.keyAt(i);
                creator.put(i3, interfaceC1702Js.A7F(sparseArray.valueAt(i)));
                i++;
            } else {
                return creator;
            }
        }
    }

    public static void A02(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader((ClassLoader) N1.A0f(C1753Lt.class.getClassLoader()));
        }
    }
}
