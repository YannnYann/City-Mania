package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2S, reason: invalid class name */
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
public final class C2S {
    public static byte[] A07;
    public static String[] A08 = {"spDZHuLEVYfj1bXFEB", "zg1zZO2nY11ljXi9raPvyfYvTkdgGdT3", "jCBLOGVaOErk9Gk7TrFIgu882Ez1pDUA", "gP3meJZOYSpwwkWLfBuEFjBL", "BIq2h3m1", "0WbJgtEBZ5T2mmAIwCNjMANJluehxGv2", "too", "7MQ0LfMQLdJAXCHYcxGRSNZIPQ3PRcR"};
    public static final C2T A09;
    public long A00;
    public Long A02;
    public final List<Rect> A05 = new ArrayList();
    public final Rect A03 = new Rect();
    public final C2W A04 = new C2W();
    public final Map<String, C2W> A06 = new HashMap();
    public EnumC12722a A01 = EnumC12722a.A03;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] - i3;
            if (A08[0].length() != 18) {
                throw new RuntimeException();
            }
            A08[7] = "3Nx7Oj138nR7xlgx";
            bArrCopyOfRange[i4] = (byte) (i5 - 122);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A07 = new byte[]{-12, 43, 29, 44, -27, -9, -10, 26, 41, 32, 32, 10, 29, 25, 43, 7, 40, 21, 40, 25};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final C2V A05() {
        C2W c2wA02 = this.A04.A02();
        Map<String, C2W> map = this.A06;
        LinkedHashMap linkedHashMap = new LinkedHashMap(AbstractC12500q.A05(map.size()));
        for (Object obj : map.entrySet()) {
            linkedHashMap.put(((Map.Entry) obj).getKey(), ((C2W) ((Map.Entry) obj).getValue()).A02());
        }
        return new C2V(c2wA02, linkedHashMap, this.A02);
    }

    static {
        A01();
        A09 = new C2T(null);
    }

    public final Rect A02() {
        return this.A03;
    }

    public final EnumC12722a A03() {
        return this.A01;
    }

    public final C2W A04() {
        return this.A04;
    }

    public final Long A06() {
        return this.A02;
    }

    public final List<Rect> A07() {
        return this.A05;
    }

    public final Map<String, C2W> A08() {
        return this.A06;
    }

    public final void A09() {
        this.A04.A03();
        this.A06.clear();
        this.A02 = null;
    }

    public final void A0A(long j) {
        this.A00 = j;
    }

    public final void A0B(EnumC12722a enumC12722a) {
        C1h.A09(enumC12722a, A00(0, 7, 62));
        this.A01 = enumC12722a;
    }

    public final void A0C(C2V c2v) {
        C1h.A09(c2v, A00(7, 13, 58));
        this.A04.A05(c2v.A02());
        this.A06.clear();
        for (Map.Entry<String, C2W> entry : c2v.A04().entrySet()) {
            String childInternalKey = entry.getKey();
            this.A06.put(childInternalKey, entry.getValue().A02());
        }
        Long lA03 = c2v.A03();
        if (A08[1].charAt(29) != 'd') {
            throw new RuntimeException();
        }
        A08[7] = "F";
        this.A02 = lA03;
    }

    public final void A0D(Long l) {
        this.A02 = l;
    }
}
