package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.05, reason: invalid class name */
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
public abstract class AnonymousClass05 extends AnonymousClass07 {
    public static byte[] A00;
    public static String[] A01 = {"1v0pRZ4EZ2w", "vjP8jl5DzLDUdEkDIAXYqQdV2z2R6N9O", "XMQGLFY74Gi", "z5jlm0j8OFUT6MOfmnqz3pd5aKZTgkVU", "p7ZAfPZCP4ENy7MV30eHXsUvVBKZnXfa", "0V1midOWZRjkD1zVAF0zrX3VnEBgMPfa", "4mTJ1FPV9ndJNSa2yue4dOltog8", "GOTolrBuVVz8uV1jXLOAAvl8Hvpw"};

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 50);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{-38, -50, 100, 100, 100, -61, -5, -17, -16, -6, -59, -84, -65, -80, -80, -81, -68, -50, -51, -47, -46, -60, -57, -42, -19, -17, -30, -29, -26, -11, -22, -36, -25, -40, -23, -40, -21, -26, -23, 31, 29, 32, 25, 14, 12, 31, 16, 15};
    }

    static {
        A04();
    }

    public static final <T, A extends Appendable> A A00(Iterable<? extends T> iterable, A a, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, InterfaceC12460m<? super T, ? extends CharSequence> interfaceC12460m) throws IOException {
        C1h.A09(iterable, A01(5, 6, 85));
        C1h.A09(a, A01(11, 6, 24));
        C1h.A09(charSequence, A01(30, 9, 69));
        C1h.A09(charSequence2, A01(24, 6, 75));
        C1h.A09(charSequence3, A01(17, 7, 44));
        C1h.A09(charSequence4, A01(39, 9, Sdk.SDKError.Reason.TPAT_ERROR_VALUE));
        a.append(charSequence2);
        int i2 = 0;
        for (T t : iterable) {
            i2++;
            if (i2 > 1) {
                a.append(charSequence);
            }
            if (i >= 0 && i2 > i) {
                break;
            }
            C1Z.A0A(a, t, interfaceC12460m);
        }
        if (i >= 0 && i2 > i) {
            a.append(charSequence4);
        }
        a.append(charSequence3);
        return a;
    }

    public static final <T> String A02(Iterable<? extends T> iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, InterfaceC12460m<? super T, ? extends CharSequence> interfaceC12460m) {
        C1h.A09(iterable, A01(5, 6, 85));
        C1h.A09(charSequence, A01(30, 9, 69));
        C1h.A09(charSequence2, A01(24, 6, 75));
        C1h.A09(charSequence3, A01(17, 7, 44));
        C1h.A09(charSequence4, A01(39, 9, Sdk.SDKError.Reason.TPAT_ERROR_VALUE));
        return ((StringBuilder) A00(iterable, new StringBuilder(), charSequence, charSequence2, charSequence3, i, charSequence4, interfaceC12460m)).toString();
    }

    public static /* synthetic */ String A03(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, InterfaceC12460m interfaceC12460m, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charSequence = A01(0, 2, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE);
        }
        int i3 = i2 & 2;
        String strA01 = A01(0, 0, 27);
        if (i3 != 0) {
            charSequence2 = strA01;
        }
        if ((i2 & 4) != 0) {
            charSequence3 = strA01;
        }
        if ((i2 & 8) != 0) {
            i = -1;
        }
        if ((i2 & 16) != 0) {
            charSequence4 = A01(2, 3, 4);
        }
        if ((i2 & 32) != 0) {
            interfaceC12460m = null;
        }
        if (A01[1].charAt(0) == 'Y') {
            throw new RuntimeException();
        }
        A01[3] = "CLjae6322Y65QZcxw1xHxIHFcH92cReV";
        return A02(iterable, charSequence, charSequence2, charSequence3, i, charSequence4, interfaceC12460m);
    }
}
