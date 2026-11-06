package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2g, reason: invalid class name */
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
public final class C2g {
    public /* synthetic */ C2g(AbstractC12661i abstractC12661i) {
        this();
    }

    public C2g() {
    }

    @JvmStatic
    public final AnonymousClass14 A00() {
        return new AnonymousClass14(new AnonymousClass13(false, false, false, 7, null), new InterfaceC12380e() { // from class: com.facebook.ads.redexgen.X.0Q
            public final List<AnonymousClass33> A00 = new ArrayList();

            @Override // com.facebook.ads.redexgen.X.InterfaceC12380e
            public final AnonymousClass33 A7I(int i) {
                this.A00.get(i);
                return null;
            }

            @Override // java.lang.Iterable
            public final Iterator<AnonymousClass33> iterator() {
                return this.A00.iterator();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC12380e
            public final int size() {
                return this.A00.size();
            }
        }, null, null, 8, null);
    }
}
