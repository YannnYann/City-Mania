package com.facebook.ads.redexgen.X;

import java.util.List;
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
public final class YF {
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public final String A06;
    public final int A05 = 100;
    public long A00 = -1;

    public YF(String str, long j, long j2, long j3) {
        this.A06 = str;
        this.A03 = ((long) this.A05) * j;
        this.A01 = ((long) this.A05) * j2;
        this.A02 = ((long) this.A05) * j3;
        A0A(-1L);
    }

    public final long A00() {
        return this.A00;
    }

    public final long A01() {
        return this.A01;
    }

    public final long A02() {
        return this.A02;
    }

    public final long A03() {
        return this.A03;
    }

    public final long A04() {
        return this.A04;
    }

    public final List<String> A05() {
        return AbstractC12550v.A0A(String.valueOf(this.A03), String.valueOf(this.A01), String.valueOf(this.A02));
    }

    public final void A06(long j) {
        this.A00 = j;
    }

    public final void A07(long j) {
        this.A01 = j;
    }

    public final void A08(long j) {
        this.A02 = j;
    }

    public final void A09(long j) {
        this.A03 = j;
    }

    public final void A0A(long j) {
        this.A04 = ((long) this.A05) * j;
    }
}
