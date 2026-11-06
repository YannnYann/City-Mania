package com.facebook.ads.redexgen.X;

import android.content.ComponentName;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fp, reason: case insensitive filesystem */
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
public final class C1598Fp extends JF {
    public static byte[] A02;
    public static String[] A03 = {"SNzwiLCcBVT", "lBBSNQeHNhzN97Lsr4Gz5yI6XdTr9XLU", "qNwn9Lo5HTniBAGW", "OTuViqXRSLcaPcIt", "ElCZIPeb4VH4pQsAXsIXPyng7MH", "ZVU732f4N5flnRJCEETjSpOJSwEMiNps", "Tf2G3pXdbdtlKNYxpXmQ9LjANxiCf5w5", "IuGoeKqkLwAppMI3u"};
    public final /* synthetic */ C1597Fo A00;
    public final /* synthetic */ String A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        String[] strArr = A03;
        if (strArr[0].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A03;
        strArr2[2] = "iZXWUr3mYva6m39Y";
        strArr2[3] = "Oov2RJyKuS5sp3Nz";
        A02 = new byte[]{116, 123, 126, 114, 121, 99, 52, 59, 55, 63};
    }

    static {
        A01();
    }

    public C1598Fp(C1597Fo c1597Fo, String str) {
        this.A00 = c1597Fo;
        this.A01 = str;
    }

    @Override // com.facebook.ads.redexgen.X.JF
    public final void A04(ComponentName componentName, AbstractC1675Io abstractC1675Io) {
        C1h.A09(componentName, A00(6, 4, 33));
        C1h.A09(abstractC1675Io, A00(0, 6, 108));
        this.A00.A03 = abstractC1675Io;
        abstractC1675Io.A08(0L);
        this.A00.A05 = abstractC1675Io.A07(this.A00.A0G);
        this.A00.A0C(this.A01);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C1h.A09(componentName, A00(6, 4, 33));
        this.A00.A03 = null;
        this.A00.A05 = null;
    }
}
