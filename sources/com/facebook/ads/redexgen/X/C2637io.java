package com.facebook.ads.redexgen.X;

import java.io.Serializable;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.io, reason: case insensitive filesystem */
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
public final class C2637io implements Serializable {
    public static byte[] A04 = null;
    public static String[] A05 = {"MJqtdTpKXmbBhfeJ2tSpW9JlxFa", "Wxqun3AysgFRZnVRmgpx36UQGTRPwkGV", "QFXwLnXC9z9970ZDwGeMtu", "G6YZu3NsdJT2epbUi", "2LakwguvAwQRXrYbDz9Nif5DlxotLeVQ", "IMFo7D3Jtu6PmM7lzrKpfZhRVne3gRNH", "tS33mvydWdjoae", "2qnwEj6AHY71YO10VwKpqDe2W5UI0KMH"};
    public static final C2638ip A06;
    public static final long serialVersionUID = 2;
    public final long A00;
    public final String A01;
    public final String A02;
    public final String A03;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C2637io(String str, String str2, long j) {
        this(str, str2, j, null, 8, null);
        C1h.A09(str, A00(73, 8, 74));
        C1h.A09(str2, A00(81, 12, 45));
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 26);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{106, 102, 54, 52, 41, 34, 51, 37, 50, 19, 52, 42, 123, 20, 24, 76, 87, 87, 84, 76, 81, 72, 108, 81, 85, 93, 74, 117, 75, 5, 47, 35, 119, 108, 108, 111, 119, 106, 115, 87, 106, 119, 111, 102, 62, 30, 57, 35, 50, 37, 54, 52, 35, 62, 33, 50, 7, 37, 56, 51, 34, 52, 35, 127, 62, 58, 54, 48, 50, 2, 37, 59, 106, 57, 61, 49, 55, 53, 5, 34, 60, 67, 88, 88, 91, 67, 94, 71, 99, 94, 67, 91, 82};
        String[] strArr = A05;
        if (strArr[7].charAt(18) != strArr[5].charAt(18)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A05;
        strArr2[2] = "K0m5MxnTKTUAwiFAlFUZuK";
        strArr2[0] = "HYH0I5i5aXEaKWUXD66YkxENfN0";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2637io)) {
            return false;
        }
        C2637io c2637io = (C2637io) obj;
        return C1h.A0C(this.A01, c2637io.A01) && C1h.A0C(this.A03, c2637io.A03) && this.A00 == c2637io.A00 && C1h.A0C(this.A02, c2637io.A02);
    }

    public final int hashCode() {
        int iHashCode;
        int iHashCode2 = ((((this.A01.hashCode() * 31) + this.A03.hashCode()) * 31) + C1x.A00(this.A00)) * 31;
        if (this.A02 == null) {
            iHashCode = 0;
        } else {
            String str = this.A02;
            if (A05[6].length() != 14) {
                throw new RuntimeException();
            }
            A05[6] = "8SCmF2gjQzuVhL";
            iHashCode = str.hashCode();
        }
        return iHashCode2 + iHashCode;
    }

    public final String toString() {
        return A00(45, 28, 77) + this.A01 + A00(30, 15, 25) + this.A03 + A00(13, 17, 34) + this.A00 + A00(0, 13, 92) + this.A02 + ')';
    }

    static {
        A01();
        A06 = new C2638ip(null);
    }

    public C2637io(String str, String str2, long j, String str3) {
        C1h.A09(str, A00(73, 8, 74));
        C1h.A09(str2, A00(81, 12, 45));
        this.A01 = str;
        this.A03 = str2;
        this.A00 = j;
        this.A02 = str3;
    }

    public /* synthetic */ C2637io(String str, String str2, long j, String str3, int i, AbstractC12661i abstractC12661i) {
        this(str, str2, j, (i & 8) != 0 ? null : str3);
    }

    public final String A02() {
        return this.A01;
    }

    public final String A03() {
        return this.A02;
    }
}
