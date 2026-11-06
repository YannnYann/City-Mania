package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
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
public final class EP extends IX {
    public static byte[] A01;
    public final /* synthetic */ C3420vb A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 68);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-14, 5, 1, -1, -18, 0, 50, 47, 41};
    }

    public EP(C3420vb c3420vb) {
        this.A00 = c3420vb;
    }

    @Override // com.facebook.ads.redexgen.X.IX
    public final void A09(int i, int i2, int i3, int i4, int i5, Bundle bundle) {
        C1h.A09(bundle, A00(0, 6, 73));
        switch (i5) {
            case 1:
                this.A00.A05.AEM();
                if (this.A00.A03) {
                    this.A00.A03 = false;
                    this.A00.A04.A0F().A5Q();
                }
                break;
            case 2:
            case 5:
                this.A00.A05.AEL();
                if (!this.A00.A03) {
                    this.A00.A03 = true;
                    this.A00.A04.A0F().A5P();
                }
                break;
        }
    }

    @Override // com.facebook.ads.redexgen.X.IX
    public final void A0A(int i, Bundle bundle) {
        String strA00;
        switch (i) {
            case 1:
                if (bundle == null || (strA00 = bundle.getString(A00(6, 3, Sdk.SDKError.Reason.TPAT_ERROR_VALUE))) == null) {
                    strA00 = A00(0, 0, 85);
                }
                this.A00.A05.AGE(strA00);
                break;
            case 2:
                this.A00.A05.AG5();
                break;
        }
    }
}
