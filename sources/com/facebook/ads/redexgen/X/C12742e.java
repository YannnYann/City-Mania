package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2e, reason: invalid class name and case insensitive filesystem */
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
public final class C12742e {
    public static byte[] A04;
    public final AnonymousClass13 A00;
    public final Map<C2K, Map<C12892y, C12762l<?, ?>>> A01;
    public final Map<C2K, C12762l<?, ?>> A02;
    public final Set<C12762l<?, ?>> A03;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 63);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{39, 47, 50, 54, 59, 126, 66, 67, 89, 10, 124, 67, 79, 93, 90, 69, 67, 68, 94, 110, 75, 94, 75, 10, 66, 75, 89, 10, 72, 79, 79, 68, 10, 88, 79, 77, 67, 89, 94, 79, 88, 79, 78, 10, 72, 79, 76, 69, 88, 79, 10, 75, 68, 78, 10, 73, 75, 68, 68, 69, 94, 10, 72, 79, 10, 88, 79, 7, 95, 89, 79, 78, 4, 106, 104, 127, 98, 100, 101, 32, 46, 50, 11, 10, 1, 0, 73, 93, 123, 87, 86, 94, 81, 95, 78, 89, 79, 73, 80, 72, 29, 6, 60, 7, 27, 12, 14, 0, 26, 29, 12, 27, 51, 44, 32, 50, 53, 42, 44, 43, 49, 1, 36, 49, 36};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private final void A05(Map<String, Set<String>> map, C12762l<?, ?> c12762l) {
        C12762l<?, ?> c12762l2 = c12762l.A05;
        if (c12762l2 == C12762l.A0C || c12762l2 == null) {
            return;
        }
        String str = c12762l2.A02;
        LinkedHashSet linkedHashSet = map.get(str);
        if (linkedHashSet == null) {
            linkedHashSet = new LinkedHashSet();
            map.put(str, linkedHashSet);
        }
        linkedHashSet.add(c12762l.A02);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final synchronized void A09(C2K c2k, C12892y c12892y, C12762l<?, ?> c12762l) {
        C1h.A09(c2k, A00(82, 4, 90));
        C1h.A09(c12892y, A00(79, 3, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE));
        C1h.A09(c12762l, A00(112, 13, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE));
        A03(c12762l);
        Map<C2K, Map<C12892y, C12762l<?, ?>>> map = this.A01;
        WeakHashMap weakHashMap = map.get(c2k);
        if (weakHashMap == null) {
            weakHashMap = new WeakHashMap();
            map.put(c2k, weakHashMap);
        }
        C12762l<?, ?> c12762lPut = weakHashMap.put(c12892y, c12762l);
        if (c12762lPut != null) {
            A02(c12762lPut);
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final synchronized void A0B(C2K c2k, InterfaceC12460m<? super C12762l<?, ?>, AnonymousClass22> interfaceC12460m) {
        Collection<C12762l<?, ?>> collectionValues;
        C1h.A09(c2k, A00(82, 4, 90));
        C1h.A09(interfaceC12460m, A00(73, 6, 52));
        C12762l<?, ?> c12762l = this.A02.get(c2k);
        if (c12762l != null) {
            interfaceC12460m.AB1(c12762l);
        }
        Map<C12892y, C12762l<?, ?>> map = this.A01.get(c2k);
        if (map != null && (collectionValues = map.values()) != null) {
            Iterator<T> it = collectionValues.iterator();
            while (it.hasNext()) {
                interfaceC12460m.AB1((C12762l) it.next());
            }
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final synchronized void A0C(Collection<C2K> collection, List<C12762l<?, ?>> list, Map<String, Set<String>> map) {
        C1h.A09(collection, A00(94, 6, 3));
        C1h.A09(list, A00(100, 12, 86));
        if (map != null) {
            map.clear();
        }
        if (!AnonymousClass14.A0C || (!this.A02.isEmpty())) {
            collection.addAll(this.A02.keySet());
        }
        if (this.A00.A01) {
            Set<C2K> setKeySet = this.A01.keySet();
            ArrayList arrayList = new ArrayList();
            for (Object obj : setKeySet) {
                if (!this.A02.containsKey((C2K) obj)) {
                    arrayList.add(obj);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                collection.add((C2K) it.next());
            }
        }
        if (!this.A03.isEmpty()) {
            list.addAll(this.A03);
            this.A03.clear();
        }
        if (map != null) {
            Iterator<T> it2 = this.A02.values().iterator();
            while (it2.hasNext()) {
                A05(map, (C12762l) it2.next());
            }
            if (this.A00.A01) {
                Iterator<T> it3 = this.A01.values().iterator();
                while (it3.hasNext()) {
                    Iterator it4 = ((Map) it3.next()).values().iterator();
                    while (it4.hasNext()) {
                        A05(map, (C12762l) it4.next());
                    }
                }
            }
        }
    }

    public C12742e(AnonymousClass13 anonymousClass13) {
        C1h.A09(anonymousClass13, A00(86, 8, 7));
        this.A00 = anonymousClass13;
        this.A02 = new WeakHashMap();
        this.A03 = new LinkedHashSet();
        this.A01 = new WeakHashMap();
    }

    private final void A02(C12762l<?, ?> c12762l) {
        if (c12762l.A04) {
            c12762l.A00 = EnumC12772m.A04;
            this.A03.add(c12762l);
        }
    }

    private final void A03(C12762l<?, ?> c12762l) {
        if (!c12762l.A04 || c12762l.A00 == EnumC12772m.A02) {
            c12762l.A00 = EnumC12772m.A03;
            return;
        }
        throw new IllegalArgumentException(A00(5, 68, 21));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void A04(C12742e c12742e, Collection collection, List list, Map map, int i, Object obj) {
        if ((i & 4) != 0) {
            map = null;
        }
        c12742e.A0C(collection, list, map);
    }

    public final synchronized C12762l<?, ?> A06(C2K c2k) {
        C12762l<?, ?> c12762l;
        C1h.A09(c2k, A00(82, 4, 90));
        c12762l = this.A02.get(c2k);
        if (c12762l == null) {
            c12762l = C12762l.A0C;
            C1h.A08(c12762l, A00(0, 5, 93));
        }
        return c12762l;
    }

    public final synchronized void A07(C2K c2k) {
        C1h.A09(c2k, A00(82, 4, 90));
        C12762l<?, ?> c12762lRemove = this.A02.remove(c2k);
        if (c12762lRemove != null) {
            A02(c12762lRemove);
        }
    }

    public final synchronized void A08(C2K c2k, C12892y c12892y) {
        C1h.A09(c2k, A00(82, 4, 90));
        C1h.A09(c12892y, A00(79, 3, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE));
        Map<C12892y, C12762l<?, ?>> map = this.A01.get(c2k);
        if (map != null) {
            C12762l<?, ?> c12762lRemove = map.remove(c12892y);
            if (c12762lRemove != null) {
                A02(c12762lRemove);
            }
            if (map.isEmpty()) {
                this.A01.remove(c2k);
            }
        }
    }

    public final synchronized void A0A(C2K c2k, C12762l<?, ?> c12762l) {
        C1h.A09(c2k, A00(82, 4, 90));
        C1h.A09(c12762l, A00(112, 13, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE));
        A03(c12762l);
        C12762l<?, ?> c12762lPut = this.A02.put(c2k, c12762l);
        if (c12762lPut != null) {
            A02(c12762lPut);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized boolean A0D() {
        /*
            r1 = this;
            monitor-enter(r1)
            java.util.Map<com.facebook.ads.redexgen.X.2K, com.facebook.ads.redexgen.X.2l<?, ?>> r0 = r1.A02     // Catch: java.lang.Throwable -> L1e
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L1e
            if (r0 == 0) goto L1b
            java.util.Map<com.facebook.ads.redexgen.X.2K, java.util.Map<com.facebook.ads.redexgen.X.2y, com.facebook.ads.redexgen.X.2l<?, ?>>> r0 = r1.A01     // Catch: java.lang.Throwable -> L1e
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L1e
            if (r0 == 0) goto L1b
            java.util.Set<com.facebook.ads.redexgen.X.2l<?, ?>> r0 = r1.A03     // Catch: java.lang.Throwable -> L1e
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L1e
            if (r0 == 0) goto L1b
            r0 = 1
            goto L1c
        L1b:
            r0 = 0
        L1c:
            monitor-exit(r1)
            return r0
        L1e:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C12742e.A0D():boolean");
    }
}
