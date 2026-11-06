package com.facebook.ads.redexgen.X;

import com.facebook.kotlin.compilerplugins.dataclassgenerate.annotation.DataClassGenerate;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.13, reason: invalid class name */
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
@DataClassGenerate
public final class AnonymousClass13 extends YI {
    public static String[] A03 = {"K0nBcaofn3n2yJV0xkMXJZB5JDXuEmEg", "weM3", "7l9aDROvCqwOPStIVfEmWfJvnBZtrD8n", "H43R7OBVjCBEpj4YA5a92czNZscYOyOZ", "6EuZQ8TfgHc9nuA3EdUOxwBiV2NO6EEx", "jobD", "6ZEIZ5JbUAA94mW3gnIRK1yTNeHVtyBo", "8maMVzixHoMLK9EGXaWiN6Kws80"};
    public final boolean A00;
    public final boolean A01;
    public final boolean A02;

    public AnonymousClass13() {
        this(false, false, false, 7, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnonymousClass13)) {
            return false;
        }
        AnonymousClass13 anonymousClass13 = (AnonymousClass13) obj;
        if (this.A01 != anonymousClass13.A01) {
            return false;
        }
        boolean z = this.A02;
        if (A03[6].charAt(25) == 'Z') {
            throw new RuntimeException();
        }
        String[] strArr = A03;
        strArr[0] = "3erlDpwffmnde94h17kc348P2bKyPKJm";
        strArr[4] = "5TM4OlQfSuN0Li1SPWQOeXSvQtkslgQN";
        return z == anonymousClass13.A02 && this.A00 == anonymousClass13.A00;
    }

    public final int hashCode() {
        return (((YM.A00(this.A01) * 31) + YM.A00(this.A02)) * 31) + YM.A00(this.A00);
    }

    public final String toString() {
        return super.toString();
    }

    public AnonymousClass13(boolean z, boolean z2, boolean z3) {
        this.A01 = z;
        this.A02 = z2;
        this.A00 = z3;
    }

    public /* synthetic */ AnonymousClass13(boolean z, boolean z2, boolean z3, int i, AbstractC12661i abstractC12661i) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? false : z3);
    }
}
