package com.facebook.ads.redexgen.X;

import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3m, reason: invalid class name and case insensitive filesystem */
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
public final class C13013m extends C0V implements InterfaceC12460m<Integer, AnonymousClass22> {
    public final /* synthetic */ C2826lu A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13013m(C2826lu c2826lu) {
        super(1);
        this.A00 = c2826lu;
    }

    private final void A00(int i) {
        this.A00.A0M(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC12460m
    public final /* bridge */ /* synthetic */ AnonymousClass22 AB1(Integer num) {
        A00(num.intValue());
        return AnonymousClass22.A01;
    }
}
