package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2L, reason: invalid class name */
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
public final class C2L {
    public static byte[] A03;
    public static final C2M A04;
    public static final C2L A05 = null;
    public final AnonymousClass13 A00;
    public final C12742e A01;
    public final C12732b A02;

    static {
        A01();
        A04 = new C2M(null);
    }

    public /* synthetic */ C2L(AnonymousClass13 anonymousClass13, C2j c2j, C12732b c12732b, C12742e c12742e, AbstractC12661i abstractC12661i) {
        this(anonymousClass13, c2j, c12732b, c12742e);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 35);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{2, 3, -8, -7, -87, -103, -105, -92, -126, -97, -87, -86, -101, -92, -101, -88, 21, 8, 4, 22, 15, 14, 8, 13, 19, -29, 0, 19, 0};
    }

    public C2L(AnonymousClass13 anonymousClass13, C2j c2j, C12732b c12732b, C12742e c12742e) {
        this.A00 = anonymousClass13;
        this.A02 = c12732b;
        this.A01 = c12742e;
        final C12732b c12732b2 = this.A02;
        c2j.A05(new InterfaceC12752k(c12732b2) { // from class: com.facebook.ads.redexgen.X.10
            public static byte[] A01;
            public final C12732b A00;

            static {
                A01();
            }

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 34);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A01() {
                A01 = new byte[]{-33, -56, -37, -41, -23, -30, -31, -37, -32, -26, -59, -43, -45, -32, -32, -41, -28};
            }

            {
                C1h.A09(c12732b2, A00(0, 17, 80));
                this.A00 = c12732b2;
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC12752k
            public final void onStart() {
                this.A00.A0G();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC12752k
            public final void onStop() {
                this.A00.A0F();
            }
        });
    }

    public static /* synthetic */ void A02(C2L c2l, C2K c2k, C12892y c12892y, int i, Object obj) {
        if ((i & 2) != 0) {
            c12892y = null;
        }
        c2l.A05(c2k, c12892y);
    }

    public final void A03(C2i c2i) {
        this.A02.A0H(c2i);
    }

    public final void A04(C2f c2f) {
        C1h.A09(c2f, A00(4, 12, 19));
        this.A02.A0I(c2f);
    }

    public final void A05(C2K c2k, C12892y c12892y) {
        C1h.A09(c2k, A00(0, 4, 113));
        if (this.A00.A01 && c12892y != null) {
            this.A01.A08(c2k, c12892y);
        } else {
            this.A01.A07(c2k);
        }
    }

    public final void A06(C2K c2k, C12892y c12892y, C12762l<?, ?> c12762l) {
        C1h.A09(c2k, A00(0, 4, 113));
        C1h.A09(c12762l, A00(16, 13, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE));
        if (this.A00.A01 && c12892y != null) {
            this.A01.A09(c2k, c12892y, c12762l);
        } else {
            this.A01.A0A(c2k, c12762l);
        }
    }

    public final void A07(C2K c2k, C12762l<?, ?> c12762l) {
        C1h.A09(c2k, A00(0, 4, 113));
        C1h.A09(c12762l, A00(16, 13, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE));
        A06(c2k, null, c12762l);
    }
}
