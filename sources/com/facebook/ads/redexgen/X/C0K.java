package com.facebook.ads.redexgen.X;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.Enum;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.0K, reason: invalid class name */
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
public final class C0K<T extends Enum<T>> extends AbstractC12340a<T> implements InterfaceC12490p<T>, Serializable {
    public static byte[] A01;
    public static String[] A02 = {"g51k1HhHpYkj9VHfWZ", "EWWj4NKKEIgPKrjUtv88K0X8SPv0XOKR", "MYYix4VerB0hQ5oDwMWCCvMrCMkMejVr", "KXmmOsGIW251fyBFhdS6O0hRIquxh5d4", "FqRmXM6RsSdQrEmx7rTZy8IkaG5JdbxF", "xb9XSYIqlsKB21aN6AlwK9AyDPFMpn92", "G5eIpQ2zAIls9BeUM771c0Xq", "UoGRLNIkpvi"};
    public final T[] A00;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 27);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A01 = new byte[]{46, 15, 25, 15, 24, 3, 11, 6, 3, 16, 11, 30, 3, 5, 4, 74, 3, 25, 74, 25, 31, 26, 26, 5, 24, 30, 15, 14, 74, 28, 3, 11, 74, 26, 24, 5, 18, 19, 74, 5, 4, 6, 19, 66, 75, 66, 74, 66, 73, 83, 122, 113, 107, 109, 118, 122, 108};
    }

    static {
        A04();
    }

    public C0K(T[] tArr) {
        C1h.A09(tArr, A03(50, 7, 4));
        this.A00 = tArr;
    }

    private final int A00(T t) {
        C1h.A09(t, A03(43, 7, 60));
        int iOrdinal = t.ordinal();
        if (((Enum) C0N.A01(this.A00, iOrdinal)) == t) {
            return iOrdinal;
        }
        return -1;
    }

    private final int A01(T t) {
        C1h.A09(t, A03(43, 7, 60));
        return A00(t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC12340a, java.util.List
    /* JADX INFO: renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final T get(int i) {
        AbstractC12340a.A02.A03(i, this.A00.length);
        return this.A00[i];
    }

    private final boolean A05(T t) {
        C1h.A09(t, A03(43, 7, 60));
        Enum target = (Enum) C0N.A01(this.A00, t.ordinal());
        return target == t;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC12580y
    public final int A0C() {
        return this.A00.length;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC12580y, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Enum) {
            return A05((Enum) obj);
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC12340a, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Enum) {
            return A00((Enum) obj);
        }
        return -1;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC12340a, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum r4 = (Enum) obj;
        if (A02[1].charAt(21) != '0') {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[4] = "ilUmfbZBv6Y2f9PUf49wlGdNYrlD4EkR";
        strArr[3] = "0YjmfpCo2P8nf50lJrNZDFbnB4C9VoXf";
        return A01(r4);
    }

    private final void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException(A03(0, 43, 113));
    }
}
