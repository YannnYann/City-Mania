package com.facebook.ads.redexgen.X;

import android.view.View;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vR, reason: case insensitive filesystem */
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
public final class RunnableC3410vR implements Runnable {
    public static String[] A01 = {"xOWKaQpKHL5BeYXoO6208TTH", "5VEmdGyJ0DAcnkqrV7wxu", "3r36ml211ruCibO20tD36z0dIL1g0XXO", "3qmmaGKwbte3Q1VqqHSXQifKThAzwynC", "gPE8Fj4SfnVaoVCECdDcVQ61VVfonxBC", "6SrtN7wo7J6ug6zq6kCpjppRq", "L3EzuKejbhF40OoIiU33F9jeinCBS4tH", "djbBkkNOqEfT"};
    public final /* synthetic */ C3413vU A00;

    public RunnableC3410vR(C3413vU c3413vU) {
        this.A00 = c3413vU;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            View view = this.A00.A05;
            if (view != null) {
                view.bringToFront();
            }
        } catch (Throwable th) {
            if (A01[6].charAt(5) == '2') {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[5] = "pz8orf6FeWPjGq0JwESaMoznA";
            strArr[1] = "vZggqxyQgM4YMzg0TTy6I";
            AbstractC2996oi.A00(th, this);
        }
    }
}
