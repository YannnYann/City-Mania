package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

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
@MetaExoPlayerCustomization
public final class XR {
    public static byte[] A00;
    public static final XR A01;

    static {
        A06();
        A01 = new XR();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 69);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A00 = new byte[]{101, 108, 101, 109, 101, 110, 116, 115};
    }

    @JvmStatic
    public static final <T> List<T> A01() {
        return AbstractC12550v.A09();
    }

    @JvmStatic
    public static final <T> List<T> A02(T... tArr) {
        C1h.A09(tArr, A00(0, 8, 69));
        Object[] objArrCopyOf = Arrays.copyOf(tArr, tArr.length);
        return new ArrayList(AbstractC12550v.A0A(Arrays.copyOf(objArrCopyOf, objArrCopyOf.length)));
    }

    @JvmStatic
    public static final <T> List<T> A03(T... tArr) {
        C1h.A09(tArr, A00(0, 8, 69));
        return new ArrayList(AbstractC12550v.A0A(Arrays.copyOf(tArr, tArr.length)));
    }

    @JvmStatic
    public static final <K, V> Map<K, V> A04(Map<K, ? extends V> map) {
        if (map == null) {
            return new HashMap();
        }
        Map it = new HashMap(map);
        return it;
    }

    @JvmStatic
    public static final <T> Set<T> A05(T... tArr) {
        C1h.A09(tArr, A00(0, 8, 69));
        return new HashSet(AbstractC12550v.A0A(Arrays.copyOf(tArr, tArr.length)));
    }
}
