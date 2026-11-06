package com.facebook.ads.redexgen.X;

import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Dc, reason: case insensitive filesystem */
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
public final class C1534Dc implements InterfaceC3054ph {
    public final /* synthetic */ C6J A00;

    public C1534Dc(C6J c6j) {
        this.A00 = c6j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AET() {
        this.A00.A0F.AHT();
        this.A00.A0F.AEz(this.A00.A0B);
        this.A00.A0F.AH3(false);
        this.A00.A0F.AEd(this.A00.A0B);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AGb(float f) {
        this.A00.A0F.AEz(this.A00.A0B - f);
    }
}
