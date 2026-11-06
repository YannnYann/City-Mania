package com.facebook.ads.redexgen.X;

import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Dl, reason: case insensitive filesystem */
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
public final class C1543Dl implements InterfaceC2825lt {
    public final /* synthetic */ C6M A00;

    public C1543Dl(C6M c6m) {
        this.A00 = c6m;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2825lt
    public final void AEy() {
        if (this.A00.A07) {
            C2499gV c2499gV = this.A00.A05;
            if (c2499gV != null) {
                c2499gV.A06();
            }
            FG fg = this.A00.A00;
            if (fg != null) {
                this.A00.A0D.A5C(fg.A7L());
            }
        }
        if (((AbstractC1546Do) this.A00).A08.A2H()) {
            this.A00.A0A.setToolbarActionMode(1);
        } else {
            this.A00.A0A.setToolbarActionMode(0);
        }
    }
}
