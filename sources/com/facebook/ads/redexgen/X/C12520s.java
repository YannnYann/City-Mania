package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.0s, reason: invalid class name and case insensitive filesystem */
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
public final class C12520s implements Map, Serializable {
    public static byte[] A00 = null;
    public static String[] A01 = {"7NhkmnJBrUjFOiPwmV46aWlHJ7MRJjVL", "U1LI2NCxqslKktqOW84xEiosdnIP6jgq", "7lfiVBIv3xViRBi1ic3NfxlxSgoybUfT", "dinAoGdhsGNlBia8EMdtZQOUU6yLLifn", "bGdf9OzUt52YhuZLalPyZpeaiXtKmBCs", "QHaTxu4Qnqps8SaJsbSsXAaponwmsq8v", "NY6wRbn5ZuVtH82xgLXMG2TJ8oEghtgU", "BqtUoqNSnVsmGwaf64IkwrbvHk4wyszZ"};
    public static final C12520s A02;
    public static final long serialVersionUID = 8246714829545688274L;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A01[5].charAt(30) != '8') {
                throw new RuntimeException();
            }
            A01[5] = "mrV9kyACm2xpHM8eCjuIPl7hA10yrt8S";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 91);
            i4++;
        }
    }

    private final Void A03(Object obj) {
        throw new UnsupportedOperationException(A01(0, 51, 108));
    }

    public static void A07() {
        A00 = new byte[]{22, 55, 44, 57, 40, 59, 48, 54, 53, -25, 48, 58, -25, 53, 54, 59, -25, 58, 60, 55, 55, 54, 57, 59, 44, 43, -25, 45, 54, 57, -25, 57, 44, 40, 43, -12, 54, 53, 51, 64, -25, 42, 54, 51, 51, 44, 42, 59, 48, 54, 53, 77, 56, 67, 76, 60, -35, -33};
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException(A01(0, 51, 108));
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException(A01(0, 51, 108));
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        throw new UnsupportedOperationException(A01(0, 51, 108));
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException(A01(0, 51, 108));
    }

    static {
        A07();
        A02 = new C12520s();
    }

    private final int A00() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Map
    /* JADX INFO: renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final Void get(Object obj) {
        return null;
    }

    private final Collection A04() {
        return C12530t.A02;
    }

    private final Set<Map.Entry> A05() {
        return C12510r.A02;
    }

    private final Set<Object> A06() {
        return C12510r.A02;
    }

    private final boolean A08(Void r4) {
        C1h.A09(r4, A01(51, 5, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE));
        return false;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return false;
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (0 == 0) {
            return false;
        }
        return A08(null);
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry> entrySet() {
        return A05();
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return (obj instanceof Map) && ((Map) obj).isEmpty();
    }

    @Override // java.util.Map
    public final int hashCode() {
        return 0;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return true;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Object> keySet() {
        return A06();
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Object remove(Object obj) {
        A03(obj);
        throw null;
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return A00();
    }

    public final String toString() {
        return A01(56, 2, 7);
    }

    @Override // java.util.Map
    public final /* bridge */ Collection values() {
        return A04();
    }
}
