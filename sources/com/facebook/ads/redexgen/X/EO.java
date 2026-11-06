package com.facebook.ads.redexgen.X;

import android.content.ComponentName;
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
public final class EO extends JF {
    public static byte[] A04;
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ C3420vb A02;
    public final /* synthetic */ String A03;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 14);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{98, 109, 104, 100, 111, 117, 58, 53, 57, 49};
    }

    public EO(C3420vb c3420vb, String str, int i, int i2) {
        this.A02 = c3420vb;
        this.A03 = str;
        this.A00 = i;
        this.A01 = i2;
    }

    @Override // com.facebook.ads.redexgen.X.JF
    public final void A04(ComponentName componentName, AbstractC1675Io abstractC1675Io) {
        C1h.A09(componentName, A00(6, 4, 90));
        C1h.A09(abstractC1675Io, A00(0, 6, 15));
        this.A02.A00 = abstractC1675Io;
        abstractC1675Io.A08(0L);
        this.A02.A02 = abstractC1675Io.A07(this.A02.A06);
        this.A02.A09(this.A03, this.A00, this.A01);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C1h.A09(componentName, A00(6, 4, 90));
        this.A02.A00 = null;
        this.A02.A02 = null;
    }
}
