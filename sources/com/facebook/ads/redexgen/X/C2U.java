package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2U, reason: invalid class name */
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
public final class C2U {
    public static byte[] A02;
    public static String[] A03 = {"dpnNEMah1FWQjLPL4swYtjEzR8Vu", "JWhlm5PRm61tp205ammrAboSLP15g43O", "8OJ8y3UzTZh7cKFe2ZDSvxULM4qQJ4FS", "0zwqZgE0J36MbuG", "e0hhxN3LMVe9Ia7ZIfoyWfM5tHHh", "OfxgukD32n2Gl1T7", "rM6T3YXRJone23KslZWOEHY64xKYq4Cl", "jwwxrSrLNxYAR1saGqprxpjr76QWuQx6"};
    public final Map<String, C12762l<?, ?>> A00 = new HashMap();
    public final Set<C12762l<?, ?>> A01 = new HashSet();

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A03;
            if (strArr[0].length() != strArr[4].length()) {
                break;
            }
            A03[6] = "LZEIMA0Oev2py6LwfKWPorr8jIue1rEm";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            int i5 = bArrCopyOfRange[i4] ^ i3;
            String[] strArr2 = A03;
            if (strArr2[2].charAt(29) != strArr2[1].charAt(29)) {
                break;
            }
            A03[7] = "jTPAWhNzw8wc68X52EBX2DP5tzbbS4vp";
            bArrCopyOfRange[i4] = (byte) (i5 ^ 36);
            i4++;
        }
        throw new RuntimeException();
    }

    public static void A01() {
        A02 = new byte[]{80, 79, 67, 81, 86, 73, 79, 72, 82, 98, 71, 82, 71};
    }

    static {
        A01();
    }

    public final Collection<C12762l<?, ?>> A02() {
        return this.A01;
    }

    public final Collection<C12762l<?, ?>> A03() {
        return this.A00.values();
    }

    public final void A04() {
        this.A00.clear();
        if (!AnonymousClass14.A0C || (!this.A01.isEmpty())) {
            for (C12762l<?, ?> c12762l : this.A01) {
                this.A00.put(c12762l.A02, c12762l);
            }
        }
        this.A01.clear();
    }

    public final boolean A05(C12762l<?, ?> c12762l) {
        C1h.A09(c12762l, A00(0, 13, 2));
        if (this.A01.add(c12762l)) {
            this.A00.remove(c12762l.A02);
            return true;
        }
        return false;
    }

    public final boolean A06(C12762l<?, ?> c12762l) {
        C1h.A09(c12762l, A00(0, 13, 2));
        Set<C12762l<?, ?>> set = this.A01;
        if ((set instanceof Collection) && set.isEmpty()) {
            return false;
        }
        for (C12762l<?, ?> c12762l2 : set) {
            if ((c12762l2 == c12762l || !C1h.A0C(c12762l2.A02, c12762l.A02) || c12762l2.A00 == EnumC12772m.A04) ? false : true) {
                return true;
            }
        }
        return false;
    }
}
