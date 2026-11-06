package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class RJ implements InterfaceC1703Jt {
    public final int A00;
    public final int A01;
    public final int A02;
    public final int[] A03;
    public static String[] A04 = {"hGryzRRtnWWmlLI7xcYJx37xIrBucBeY", "no5wTIJGKzUywc2piihl3rAURL0pBOvb", "PVp2", "9qCi", "", "", "pZX1blWMjT5YBrawJvNIbAhoZ2EHHpZj", "vkgfNScxByl4gT2oBBi0wVUCY7ZCQpzR"};
    public static final String A06 = N1.A0h(0);
    public static final String A07 = N1.A0h(1);
    public static final String A08 = N1.A0h(2);
    public static final InterfaceC1702Js<RJ> A05 = new InterfaceC1702Js() { // from class: com.facebook.ads.redexgen.X.RK
        @Override // com.facebook.ads.redexgen.X.InterfaceC1702Js
        public final InterfaceC1703Jt A7F(Bundle bundle) {
            return RJ.A00(bundle);
        }
    };

    public RJ(int i, int[] iArr, int i2) {
        this.A00 = i;
        this.A03 = Arrays.copyOf(iArr, iArr.length);
        this.A01 = iArr.length;
        this.A02 = i2;
        Arrays.sort(this.A03);
    }

    public static /* synthetic */ RJ A00(Bundle bundle) {
        int i = bundle.getInt(A06, -1);
        int[] tracks = bundle.getIntArray(A07);
        int trackType = bundle.getInt(A08, -1);
        AbstractC1747Ln.A07(i >= 0 && trackType >= 0);
        AbstractC1747Ln.A01(tracks);
        return new RJ(i, tracks, trackType);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            Class<?> cls = getClass();
            String[] strArr = A04;
            if (strArr[4].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            A04[6] = "4p3ewgf2ZVaidpf0iQU4M8hHbY2z6Qyg";
            if (cls == obj.getClass()) {
                RJ rj = (RJ) obj;
                if (this.A00 == rj.A00 && Arrays.equals(this.A03, rj.A03) && this.A02 == rj.A02) {
                    return true;
                }
                return false;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((this.A00 * 31) + Arrays.hashCode(this.A03)) * 31;
        int hash = this.A02;
        return iHashCode + hash;
    }
}
