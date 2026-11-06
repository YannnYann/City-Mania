package com.facebook.ads.redexgen.X;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class S7 implements TL {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 20);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-72, -86, -88, -70, -73, -86, 114, -75, -79, -90, -66, -89, -90, -88, -80, -115, -128, 123, 124, -122, 70, 120, -115, 122};
    }

    public S7() {
    }

    @Override // com.facebook.ads.redexgen.X.TL
    public final int A80() {
        return MediaCodecList.getCodecCount();
    }

    @Override // com.facebook.ads.redexgen.X.TL
    public final MediaCodecInfo A81(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // com.facebook.ads.redexgen.X.TL
    public final boolean AB9(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.TL
    public final boolean ABA(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return A00(0, 15, 49).equals(str) && A00(15, 9, 3).equals(str2);
    }

    @Override // com.facebook.ads.redexgen.X.TL
    public final boolean AKM() {
        return false;
    }
}
