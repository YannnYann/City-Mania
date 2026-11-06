package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.iy, reason: case insensitive filesystem */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Metadata
public final class C2647iy {
    public static byte[] A07;
    public static String[] A08 = {"McrfnU83e0TuM99VVQQBOscB2", "MpWofvD5qytZN6kIOTpxgIN7U4PDlVX", "8DO0JWJv7", "NaUXJhMyPUEJiv0pnlqq699ey", "9AgAA7TTpQEIkBuPA0HGC7A8S4qRxzys", "Ri1ue4v1IHDZNB99XJS0NvqXAiXvn8iu", "aKFYs8AbkOzldPJGKPCZMgpMzSHJ3GV5", "Lsgmp0EWogT5YOLW1MDFJ8TKvZJymVL5"};
    public final int A00;
    public final int A01;
    public final C2420fE A02;
    public final ViewOnClickListenerC1569El A03;
    public final InterfaceC2602iD A04;
    public final String A05;
    public final String A06;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE);
            String[] strArr = A08;
            if (strArr[7].charAt(31) != strArr[6].charAt(31)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[0] = "alN9uYQjHcPeItpKdPdlrG9B7";
            strArr2[3] = "raclBDWe08UExqVWzl2FT0lbm";
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A07 = new byte[]{5, 7, 20, 2, 5, 8, 18, 3, 1, 18, 4, 9, 14, 4, 98, 117, 96, 67, 116, 117, 117, 110, 111, 88, 92, 80, 86, 84, 100, 67, 93};
    }

    static {
        A01();
    }

    public C2647iy(int i, int i2, String str, ViewOnClickListenerC1569El viewOnClickListenerC1569El, C2420fE c2420fE, InterfaceC2602iD interfaceC2602iD, String str2) {
        C1h.A09(str, A00(23, 8, 77));
        C1h.A09(viewOnClickListenerC1569El, A00(14, 9, Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE));
        this.A01 = i;
        this.A00 = i2;
        this.A05 = str;
        this.A03 = viewOnClickListenerC1569El;
        this.A02 = c2420fE;
        this.A04 = interfaceC2602iD;
        this.A06 = str2;
    }

    public final int A02() {
        return this.A01;
    }

    public final C2420fE A03() {
        return this.A02;
    }

    public final ViewOnClickListenerC1569El A04() {
        return this.A03;
    }

    public final InterfaceC2602iD A05() {
        return this.A04;
    }

    public final String A06() {
        return this.A05;
    }

    public final String A07() {
        return this.A06;
    }

    public final Map<String, String> A08() {
        HashMap map = new HashMap();
        map.put(A00(7, 7, 28), String.valueOf(this.A01));
        map.put(A00(0, 7, 26), String.valueOf(this.A00));
        return map;
    }
}
