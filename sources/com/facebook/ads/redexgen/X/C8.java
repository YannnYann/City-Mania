package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
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
public final class C8 extends AbstractC2633ik<C1504By> {
    public static byte[] A0D;
    public static String[] A0E = {"k6cHZ7604wjbhDEYD5MdusasX9sOXfoM", "0sXgoIKJNOLx2z187n7CG2XY0s4sqF47", "5AfmrS0VZUAsAQKwThoKCBIibwrNIto6", "dqVnYtIDxoE9CploHQLuI77aKxh", "6dsFE0rzMoUSrDagqc2bJjIJoLAgd6Qg", "oAKxNdEkoYTXnHeNOIiIx6y95Uf", "0t48Shzg157wzMuIEqDOLP5BIRYBa", "AWDgmrC85u04qXYnCvzn1NXU1su9k"};
    public int A00;
    public final int A01;
    public final SparseBooleanArray A02;
    public final C2435fT A03;
    public final C1643Hi A04;
    public final InterfaceC2909nG A05;
    public final C3102qT A06;
    public final C2224c2 A07;
    public final String A08;
    public final List<C2647iy> A09;
    public final InterfaceC12460m<Map<String, String>, AnonymousClass22> A0A;
    public final InterfaceC12460m<Integer, AnonymousClass22> A0B;
    public final boolean A0C;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] ^ i3) ^ 4;
            String[] strArr = A0E;
            if (strArr[3].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0E;
            strArr2[4] = "H20f57dINpAno3t2qzp6nmpcelIvKL0c";
            strArr2[1] = "VtI1UnE2FIuLoGOpG15KSyY05wvTfba1";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0D = new byte[]{70, 67, 98, 81, 66, 73, 83, 106, 70, 73, 70, 64, 66, 85, 7, 5, 22, 0, 45, 10, 2, 11, 40, 13, 23, 16, 99, 97, 114, 100, 115, 73, 109, 112, 114, 101, 115, 115, 105, 111, 110, 115, 30, 17, 20, 24, 19, 9, 41, 18, 22, 24, 19, 13, 1, 0, 26, 11, 22, 26, 76, 75, 72, 64, 65, 86, 21, 20, 46, 18, 15, 23, 24, 20, 27, 19, 22, 41, 31, 22, 31, 25, 14, 31, 30, 121, 104, 123, 108, 103, 125, 29, 12, 31, 8, 3, 25, 59, 4, 8, 26, 12, 15, 4, 1, 4, 25, 20, 46, 5, 8, 14, 6, 8, 31, 25, 2, 24, 14, 5, 41, 12, 25, 12, 63, 8, 14, 2, 31, 9, 8, 31};
    }

    static {
        A03();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C8(C1643Hi c1643Hi, List<C2647iy> list, int i, InterfaceC2909nG interfaceC2909nG, C3102qT c3102qT, String str, C2224c2 c2224c2, C2435fT c2435fT, InterfaceC12460m<? super Map<String, String>, AnonymousClass22> interfaceC12460m, SparseBooleanArray sparseBooleanArray, boolean z, InterfaceC12460m<? super Integer, AnonymousClass22> interfaceC12460m2) {
        C1h.A09(c1643Hi, A01(53, 7, 106));
        C1h.A09(list, A01(14, 12, 96));
        C1h.A09(interfaceC2909nG, A01(0, 14, 35));
        C1h.A09(c3102qT, A01(Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE, 17, 105));
        C1h.A09(str, A01(42, 11, Sdk.SDKError.Reason.TPAT_ERROR_VALUE));
        C1h.A09(c2224c2, A01(91, 24, 105));
        C1h.A09(sparseBooleanArray, A01(26, 16, 4));
        C1h.A09(interfaceC12460m2, A01(66, 19, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE));
        this.A04 = c1643Hi;
        this.A09 = list;
        this.A01 = i;
        this.A05 = interfaceC2909nG;
        this.A06 = c3102qT;
        this.A08 = str;
        this.A07 = c2224c2;
        this.A03 = c2435fT;
        this.A0A = interfaceC12460m;
        this.A02 = sparseBooleanArray;
        this.A0C = z;
        this.A0B = interfaceC12460m2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2633ik
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final C1504By A0F(ViewGroup viewGroup, int i) {
        C1h.A09(viewGroup, A01(85, 6, 13));
        return new C1504By(C2667jI.A01.A02(this.A04, this.A01), this.A04, this.A02, this.A07, this.A05, this.A06, this.A08, this.A03, this.A0A, this.A0C);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2633ik
    /* JADX INFO: renamed from: A04, reason: merged with bridge method [inline-methods] */
    public final void A0K(C1504By c1504By) {
        C1h.A09(c1504By, A01(60, 6, 32));
        super.A0K(c1504By);
        c1504By.A0w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2633ik
    /* JADX INFO: renamed from: A05, reason: merged with bridge method [inline-methods] */
    public final void A0M(C1504By c1504By, int i) {
        C1h.A09(c1504By, A01(60, 6, 32));
        c1504By.A0x(this.A09.get(i), i == this.A00, new C13003l(c1504By, this));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2633ik
    public final int A0B() {
        return this.A09.size();
    }

    public final void A0Q(int i) {
        int previousIndex = this.A00;
        this.A00 = i;
        if (previousIndex >= 0 && previousIndex != i) {
            A0H(previousIndex);
        }
        A0H(i);
        String[] strArr = A0E;
        if (strArr[4].charAt(31) == strArr[1].charAt(31)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0E;
        strArr2[3] = "oG1K6D75HeczGWdVhXSgQlaUIbG";
        strArr2[5] = "UNNMTfVsOQa6qPOOX3RGrDRsLJx";
    }
}
