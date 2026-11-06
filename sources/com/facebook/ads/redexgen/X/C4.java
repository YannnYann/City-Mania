package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
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
public final class C4 implements InterfaceC2644iv {
    public static byte[] A01;
    public static String[] A02 = {"v5eiq5orQ63mjFn9Ab0xa5hfEt7dVNGs", "GMa9Std1SgwhnqBjupiNZjPVh9G1tahW", "b7jzSYoVv0MCbhy8LuFi2cIYMwqTErso", "atsYm2Lmjuth32CZCVF5cWr6gK32cW43", "LWmjOPy3yc9gDkFg3Mwfy8jPueKDhZoG", "V2GkfKfoO69T6BtDY6bk6DvF6FD5Reg", "9MXbHwoY1oDOACaQooDrI18eOuBIdJFZ", "BO4SfdT76rtaAZQZgdLRkcRu0"};
    public final C2647iy A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A02;
            if (strArr[2].charAt(6) != strArr[0].charAt(6)) {
                throw new RuntimeException();
            }
            A02[5] = "r8wF";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 57);
            i4++;
        }
    }

    public static void A01() {
        byte[] bArr = {30, 35, 41, 26, 39, 22, 24, 41, 30, 43, 26, -8, 22, 39, 25, -2, 35, 27, 36};
        if (A02[1].charAt(9) != 'g') {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[3] = "VIYCWdXm4TA11vruTJz60e8scrJTgHDz";
        strArr[6] = "srnAvO6BvH8twjiZ0JA6fwlDf4zn1yep";
        A01 = bArr;
    }

    static {
        A01();
    }

    public C4(C2647iy c2647iy) {
        C1h.A09(c2647iy, A00(0, 19, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE));
        this.A00 = c2647iy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2644iv
    public final List<C2647iy> A7q() {
        return AbstractC12691s.A0E(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2644iv
    public final int A8p() {
        return 1;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2644iv
    public final int A97() {
        return 2;
    }
}
