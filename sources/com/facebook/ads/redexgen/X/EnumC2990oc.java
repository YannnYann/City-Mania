package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.oc, reason: case insensitive filesystem */
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
public final class EnumC2990oc {
    public static byte[] A00;
    public static String[] A01 = {"OmjeWy8As8fgqm5pJTsevVOMoc4T7JgN", "Iy83URH4qag0055NEvaIf7WzknKwrfKt", "WMonQfgPDl0SEyykkIaVWd1q0buOsSnQ", "EwIddWkNCvWsaf5oGkWD9OBL6TrF0WJd", "5o2KY4BHqaWyFocNQSU1tqZi2a0STG", "xJqSHhTAy0Nda6OEryPxu7bdCfSF6cW9", "5KfENbw5", "WcRohfdVmiuV1GpL88bGHEOa5pelTVCR"};
    public static final C2989ob A02;
    public static final /* synthetic */ InterfaceC12490p A03;
    public static final /* synthetic */ EnumC2990oc[] A04;
    public static final EnumC2990oc A05;
    public static final EnumC2990oc A06;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 112);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        byte[] bArr = {72, 73, 74, 77, 89, 64, 88, 2, 15, 3, 13, 2, 30, 21, 12, 3, 18, 15, 14};
        String[] strArr = A01;
        if (strArr[6].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[0] = "dN8FoAuDr24ELo9qSnoC8B5JTkL20HEN";
        strArr2[3] = "YHQ0rUgJUPLUOpQpbOGpF0ByxGm2CRO5";
        A00 = bArr;
    }

    public static final /* synthetic */ EnumC2990oc[] A02() {
        String[] strArr = A01;
        if (strArr[1].charAt(18) != strArr[2].charAt(18)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[0] = "vSmIYiL2i4R94AHhIaASjau9DqJRdTIt";
        strArr2[3] = "ugLcAnDs83RUnbpapSGq4HiPCMfpqcp8";
        return new EnumC2990oc[]{A05, A06};
    }

    public static EnumC2990oc valueOf(String str) {
        return (EnumC2990oc) Enum.valueOf(EnumC2990oc.class, str);
    }

    public static EnumC2990oc[] values() throws CloneNotSupportedException {
        Object objClone = A04.clone();
        String[] strArr = A01;
        if (strArr[5].charAt(12) == strArr[7].charAt(12)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[1] = "RaATeNT0Z2oMPEiJGdaJ39Cy7DHMpl7D";
        strArr2[2] = "Yy87Txsw0tUdDZLf0XaJ9I7PpXqD3WEv";
        return (EnumC2990oc[]) objClone;
    }

    static {
        A01();
        A05 = new EnumC2990oc(A00(0, 7, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE), 0);
        A06 = new EnumC2990oc(A00(7, 12, 58), 1);
        A04 = A02();
        A03 = C1q.A01(A04);
        A02 = new C2989ob(null);
    }

    public EnumC2990oc(String str, int i) {
    }
}
