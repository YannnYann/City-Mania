package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.0X, reason: invalid class name */
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
public abstract class C0X extends AbstractC12500q {
    public static byte[] A00;

    static {
        A03();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 87);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{55, 127, 99, 98, 120, 53, 68, 95, 70, 70, 10, 73, 75, 68, 68, 69, 94, 10, 72, 79, 10, 73, 75, 89, 94, 10, 94, 69, 10, 68, 69, 68, 7, 68, 95, 70, 70, 10, 94, 83, 90, 79, 10, 65, 69, 94, 70, 67, 68, 4, 73, 69, 70, 70, 79, 73, 94, 67, 69, 68, 89, 4, 103, 75, 90, 22, 97, 10, 69, 76, 10, 65, 69, 94, 70, 67, 68, 4, 73, 69, 70, 70, 79, 73, 94, 67, 69, 68, 89, 4, 103, 75, 90, 89, 97, 94, 117, 117, 103, 75, 90, 89, 97, 94, 4, 79, 71, 90, 94, 83, 103, 75, 90, 6, 10, 124, 10, 69, 76, 10, 65, 69, 94, 70, 67, 68, 4, 73, 69, 70, 70, 79, 73, 94, 67, 69, 68, 89, 4, 103, 75, 90, 89, 97, 94, 117, 117, 103, 75, 90, 89, 97, 94, 4, 79, 71, 90, 94, 83, 103, 75, 90, 20, 116, 101, 109, 118, 119};
    }

    public static final <K, V> HashMap<K, V> A01(AnonymousClass27<? extends K, ? extends V>... anonymousClass27Arr) {
        C1h.A09(anonymousClass27Arr, A00(163, 5, 83));
        HashMap<K, V> map = new HashMap<>(AbstractC12500q.A05(anonymousClass27Arr.length));
        A04(map, anonymousClass27Arr);
        return map;
    }

    public static final <K, V> Map<K, V> A02() {
        C12520s c12520s = C12520s.A02;
        C1h.A07(c12520s, A00(6, 157, Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE));
        return c12520s;
    }

    public static final <K, V> void A04(Map<? super K, ? super V> map, AnonymousClass27<? extends K, ? extends V>[] anonymousClass27Arr) {
        C1h.A09(map, A00(0, 6, 92));
        C1h.A09(anonymousClass27Arr, A00(163, 5, 83));
        for (AnonymousClass27<? extends K, ? extends V> anonymousClass27 : anonymousClass27Arr) {
            map.put(anonymousClass27.A02(), anonymousClass27.A03());
        }
    }
}
