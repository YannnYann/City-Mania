package com.facebook.ads.redexgen.X;

import com.unity3d.services.UnityAdsConstants;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class ZF {
    public static String[] A00 = {"ON2lBVWcopFIWEcOBfBC2A6hv0OlZhxY", "HSg4qUVYk3", "BHn8bAeRQi86", "UZhFPzyR8JT8QtiHzFezyAzPaZKjH6V0", "zIM0", "vxkoFT8mRMlMU", "e0LTrN", "adxKEA"};

    public static int A00(ByteBuffer byteBuffer) {
        long packetDurationUs = A03(byteBuffer.get(0), byteBuffer.limit() > 1 ? byteBuffer.get(1) : (byte) 0);
        return (int) ((48000 * packetDurationUs) / 1000000);
    }

    public static int A01(byte[] bArr) {
        return bArr[9] & 255;
    }

    public static int A02(byte[] bArr) {
        return ((bArr[11] & 255) << 8) | (bArr[10] & 255);
    }

    public static long A03(byte b, byte b2) {
        int frameDurationUs;
        int frames;
        int frames2 = b & 255;
        int toc = frames2 & 3;
        switch (toc) {
            case 0:
                frameDurationUs = 1;
                break;
            case 1:
            case 2:
                frameDurationUs = 2;
                break;
            default:
                frameDurationUs = b2 & 63;
                break;
        }
        int length = frames2 >> 3;
        int config = length & 3;
        if (length >= 16) {
            frames = UnityAdsConstants.RequestPolicy.RETRY_MAX_INTERVAL << config;
        } else if (length >= 12) {
            int toc2 = config & 1;
            frames = UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS << toc2;
        } else if (config == 3) {
            frames = 60000;
        } else {
            frames = UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS << config;
        }
        long j = frameDurationUs;
        long j2 = frames;
        String[] strArr = A00;
        String str = strArr[1];
        String str2 = strArr[3];
        int frames3 = str.length();
        int toc3 = str2.length();
        if (frames3 == toc3) {
            throw new RuntimeException();
        }
        String[] strArr2 = A00;
        strArr2[7] = "vooNty";
        strArr2[6] = "vt5dMN";
        return j * j2;
    }

    public static long A04(long j) {
        return (1000000000 * j) / 48000;
    }

    public static long A05(byte[] bArr) {
        return A03(bArr[0], bArr.length > 1 ? bArr[1] : (byte) 0);
    }

    public static List<byte[]> A06(byte[] bArr) {
        int preSkipSamples = A02(bArr);
        long jA04 = A04(preSkipSamples);
        long jA042 = A04(3840L);
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(A07(jA04));
        arrayList.add(A07(jA042));
        return arrayList;
    }

    public static byte[] A07(long j) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j).array();
    }
}
