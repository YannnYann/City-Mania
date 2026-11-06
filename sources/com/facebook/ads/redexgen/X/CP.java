package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;

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
public final class CP extends AbstractC2633ik<CL> {
    public static byte[] A09;
    public final SparseBooleanArray A00;
    public final C2435fT A01;
    public final C1643Hi A02;
    public final InterfaceC2909nG A03;
    public final C3102qT A04;
    public final C2224c2 A05;
    public final String A06;
    public final List<C2963oA> A07;
    public final InterfaceC12450l<String, Integer, Integer, AnonymousClass22> A08;

    static {
        A04();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 13);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A09 = new byte[]{-124, -121, 104, -103, -120, -111, -105, 112, -124, -111, -124, -118, -120, -107, -17, -8, -11, -15, -6, 0, -32, -5, -9, -15, -6, -24, -12, -13, -7, -22, -3, -7, 123, -126, 127, 119, 120, -123, -44, -45, -75, -41, -44, -55, -38, -56, -39, -88, -47, -50, -56, -48, -26, -41, -24, -37, -28, -22, -117, 124, -115, -128, -119, -113, 113, -124, -128, -110, 124, 125, -124, -121, -124, -113, -108, 94, -125, -128, 126, -122, -128, -115, -127, -125, -128, 117, -122, 116, -123, -124, -52, -57, -51, -69, -64, -100, -71, -52, -71, -86, -67, -69, -57, -54, -68, -67, -54};
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CP(C1643Hi c1643Hi, List<C2963oA> list, InterfaceC2909nG interfaceC2909nG, C2224c2 c2224c2, C3102qT c3102qT, String str, C2435fT c2435fT, InterfaceC12450l<? super String, ? super Integer, ? super Integer, AnonymousClass22> interfaceC12450l) {
        C1h.A09(c1643Hi, A01(25, 7, 120));
        C1h.A09(list, A01(82, 8, 4));
        C1h.A09(interfaceC2909nG, A01(0, 14, 22));
        C1h.A09(c2224c2, A01(58, 24, 14));
        C1h.A09(c3102qT, A01(90, 17, 75));
        C1h.A09(str, A01(14, 11, Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE));
        C1h.A09(interfaceC12450l, A01(38, 14, 88));
        this.A02 = c1643Hi;
        this.A07 = list;
        this.A03 = interfaceC2909nG;
        this.A05 = c2224c2;
        this.A04 = c3102qT;
        this.A06 = str;
        this.A01 = c2435fT;
        this.A08 = interfaceC12450l;
        this.A00 = new SparseBooleanArray();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2633ik
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final CL A0F(ViewGroup viewGroup, int i) {
        C1h.A09(viewGroup, A01(52, 6, 105));
        return new CL(new C2965oC(this.A02), this.A00, this.A05, this.A02, this.A03, this.A04, this.A06, this.A01);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2633ik
    /* JADX INFO: renamed from: A05, reason: merged with bridge method [inline-methods] */
    public final void A0M(CL cl, int i) {
        C1h.A09(cl, A01(32, 6, 6));
        C2963oA c2963oA = this.A07.get(i);
        cl.A0w(c2963oA, i, this.A07.size(), new C13043p(this, c2963oA, i));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2633ik
    public final int A0B() {
        return this.A07.size();
    }
}
