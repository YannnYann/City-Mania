package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.1v, reason: invalid class name */
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
public final class C1v {
    public static byte[] A00;
    public static String[] A01 = {"KuTCkc88m5Khn4CyGrhwL", "IxLDI0IPbZApfW", "JVK2BzSuCceVtUDdSj5I07", "lBsBUWPEcrP06ZbqPLvUU4J", "22gZmP1JxBFCsFHb94EDAJ1IphHRhPLW", "4VOii7FoXK5P7l8zZ6nforp6Ebd", "RjeQAgQKhl5JskIp4JuQN5iIalMDBvKB", "EBwOVG6Ugh4W3c0PQTNtiW44jE9"};

    public /* synthetic */ C1v(AbstractC12661i abstractC12661i) {
        this();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 70);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-105, -75, -105, -21, -26, -64, -27, -37, -36, -17, -79, -105, -113, -125, -42, -52, -35, -56, -99, -125, -120, 124, -48, -53, -91, -54, -64, -63, -44, -106, 124, 29, 3, 15, 12, 10, -26, 11, 1, 2, 21, -41, -67, -30, -25, -35, -34, -15, -77, -103, 37, 42, 30, 27, 40};
    }

    static {
        A01();
    }

    public C1v() {
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int A02(java.util.Collection<?> r7) {
        /*
            r6 = this;
            r2 = 31
            r1 = 1
            r0 = 116(0x74, float:1.63E-43)
            java.lang.String r0 = A00(r2, r1, r0)
            com.facebook.ads.redexgen.X.C1h.A09(r7, r0)
            r3 = 1
            java.util.Iterator r5 = r7.iterator()
        L11:
            boolean r4 = r5.hasNext()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1v.A01
            r0 = 3
            r1 = r2[r0]
            r0 = 2
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L67
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1v.A01
            java.lang.String r1 = "SCwB4moZZna0suClCc4GjhLyaW7wqAtq"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "mduzLj9uz3KnspGGdaJJ9nMm6LkrQb3g"
            r0 = 4
            r2[r0] = r1
            if (r4 == 0) goto L66
            java.lang.Object r4 = r5.next()
            int r3 = r3 * 31
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1v.A01
            r0 = 3
            r1 = r2[r0]
            r0 = 2
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L61
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1v.A01
            java.lang.String r1 = "hMwjEsxw7wl5skWc3rQN1oqLejAug6sa"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "wRbKU8F1FGogs5q469JLSPNenN0joauE"
            r0 = 4
            r2[r0] = r1
            if (r4 == 0) goto L64
        L5b:
            int r0 = r4.hashCode()
        L5f:
            int r3 = r3 + r0
            goto L11
        L61:
            if (r4 == 0) goto L64
            goto L5b
        L64:
            r0 = 0
            goto L5f
        L66:
            return r3
        L67:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1v.A02(java.util.Collection):int");
    }

    public final void A03(int i, int i2) {
        if (i >= 0 && i < i2) {
        } else {
            throw new IndexOutOfBoundsException(A00(43, 7, 51) + i + A00(12, 8, 29) + i2);
        }
    }

    public final void A04(int i, int i2) {
        if (i >= 0 && i <= i2) {
        } else {
            throw new IndexOutOfBoundsException(A00(43, 7, 51) + i + A00(12, 8, 29) + i2);
        }
    }

    public final void A05(int i, int i2, int i3) {
        String strA00 = A00(32, 11, 87);
        if (i >= 0 && i2 <= i3) {
            if (i <= i2) {
                return;
            } else {
                throw new IllegalArgumentException(strA00 + i + A00(0, 12, 49) + i2);
            }
        }
        throw new IndexOutOfBoundsException(strA00 + i + A00(20, 11, 22) + i2 + A00(12, 8, 29) + i3);
    }

    public final boolean A06(Collection<?> collection, Collection<?> collection2) {
        C1h.A09(collection, A00(31, 1, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE));
        C1h.A09(collection2, A00(50, 5, 112));
        if (collection.size() != collection2.size()) {
            return false;
        }
        Iterator<?> it = collection2.iterator();
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!C1h.A0C(it2.next(), it.next())) {
                return false;
            }
        }
        return true;
    }
}
