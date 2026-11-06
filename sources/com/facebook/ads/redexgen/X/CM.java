package com.facebook.ads.redexgen.X;

import java.util.HashMap;
import kotlin.Metadata;

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
public final class CM extends AbstractC2225c3 {
    public final /* synthetic */ int A00;
    public final /* synthetic */ CL A01;
    public final /* synthetic */ HashMap<String, String> A02;

    public CM(CL cl, int i, HashMap<String, String> map) {
        this.A01 = cl;
        this.A00 = i;
        this.A02 = map;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2225c3
    public final void A03() {
        if (this.A01.A08.A0Z()) {
            return;
        }
        if ((this.A01.A09.length() > 0) && !this.A01.A02.get(this.A00)) {
            this.A01.A05.AC7(this.A01.A09, new C3303ti(this.A02).A05(this.A01.A01).A04(this.A01.A06).A07());
            C2435fT.A07(this.A01.A03, this.A01.A04);
            this.A01.A02.put(this.A00, true);
        }
    }
}
