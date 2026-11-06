package com.facebook.ads.redexgen.X;

import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3n, reason: invalid class name and case insensitive filesystem */
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
public final class C13023n extends C0V implements InterfaceC12470n<AnonymousClass22> {
    public final /* synthetic */ int A00;
    public final /* synthetic */ CL A01;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13023n(int i, CL cl) {
        super(0);
        this.A00 = i;
        this.A01 = cl;
    }

    private final void A00() {
        if (this.A00 == 0) {
            this.A01.A08.A0U();
        }
        C2224c2 c2224c2 = this.A01.A01;
        if (c2224c2 != null) {
            c2224c2.A0U();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC12470n
    public final /* bridge */ /* synthetic */ AnonymousClass22 AB0() {
        A00();
        return AnonymousClass22.A01;
    }
}
