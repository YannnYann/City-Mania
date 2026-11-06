package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2V, reason: invalid class name */
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
public final class C2V {
    public static byte[] A03;
    public static String[] A04 = {"DNt4kWaTJgBtEZhcRaG6gWsx0aE29", "V5rxkr4Dm1WNpPUrhcfVUSsv", "fiK5hWNfgss21J5SkxOoY9gexdh1prSq", "7xWl8g0mpuUkV", "stKCDhEXmwOo39l8SVv6hNYAbR2", "gzEdphkWLPsNsTZ", "DpAQvr3on7HrxNbWsdt5eTfO", "AlV"};
    public final C2W A00;
    public final Long A01;
    public final Map<String, C2W> A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] - i3) - 51);
            if (A04[7].length() == 30) {
                throw new RuntimeException();
            }
            A04[7] = "FZLXdY905ya3ncLppmzo";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{-21, -16, -15, -12, -20, -50, -3, -12, -12, -34, -15, -19, -1, -51, -20, -17, -19, -37, -4, -23, -4, -19, -5, -54, 1, -47, -10, -4, -19, -6, -10, -23, -12, -45, -19, 1, -96, -81, -90, -90, -112, -93, -97, -79, 127, -98, -95, -97, -115, -82, -101, -82, -97};
    }

    static {
        A01();
    }

    public C2V(C2W c2w, Map<String, C2W> map, Long l) {
        C1h.A09(c2w, A00(36, 17, 7));
        C1h.A09(map, A00(0, 36, 85));
        this.A00 = c2w;
        this.A02 = map;
        this.A01 = l;
    }

    public final C2W A02() {
        return this.A00;
    }

    public final Long A03() {
        return this.A01;
    }

    public final Map<String, C2W> A04() {
        return this.A02;
    }
}
