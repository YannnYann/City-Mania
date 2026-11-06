package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Xi, reason: case insensitive filesystem */
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
public final class C2032Xi {
    public static byte[] A04;
    public static String[] A05 = {"5MT7ScDMTu4Kz6rKF1fGuf9zFpYiveuh", "kzhumRUCvaQsG6jbotrlDYayYQLZOZq", "YkImouxSvKMnfyvFoNahzU7d4AtGE0DU", "eUmFqcEIQLyyjl0TdxJ9YsMJmstg4hEy", "hZI1nSqDyEZIVIBxeut1UL", "JyHSV39gOBEmKbLjDalvdkucWHbe9J4", "XbGRfso0AY4sJAdhQgnQNxQD59WIblHw", "BFVyfzQKkbi4"};
    public final long A00;
    public final EnumC2031Xh A01;
    public final String A02;
    public final boolean A03;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A05;
            if (strArr[6].charAt(2) == strArr[0].charAt(2)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A05;
            strArr2[1] = "UILnh12lFwIP53F4cN811FzPN5g65zz";
            strArr2[5] = "zCxp2xLqqJVxklBUSXhREkK7dcTEPVw";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 72);
            i4++;
        }
    }

    public static void A01() {
        A04 = new byte[]{92, 80, 91, 90, 92, 113, 94, 82, 90, 92, 64, 90, 93, 76, 74};
    }

    static {
        A01();
    }

    public C2032Xi(long j, boolean z, String str, EnumC2031Xh enumC2031Xh) {
        C1h.A09(str, A00(0, 9, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE));
        C1h.A09(enumC2031Xh, A00(9, 6, 103));
        this.A00 = j;
        this.A03 = z;
        this.A02 = str;
        this.A01 = enumC2031Xh;
    }
}
