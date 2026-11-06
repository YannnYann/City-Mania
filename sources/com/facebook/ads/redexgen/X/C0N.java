package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.0N, reason: invalid class name */
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
public abstract class C0N extends C0Z {
    public static byte[] A00;
    public static String[] A01 = {"2Eapa7KtK0wSgzlkcTL0OrWvIYaASrqh", "7AM1", "4hMQ8PAfDkPo2kfhgRDpGvNAghgImc3L", "GB2s4QYAUVM0qVBDeiHE0w", "fjdqEhctDRIlzZPqOzw3mTRyt7JskPzY", "6rlxXzp39gnLUgSE1TTgxQosRHuP402M", "22X0o5fZOkv1sokdlQgxprlX3QFYhwki", "v1k86ykcE5Y4zX6tZrCvduYm7c8XqD2p"};

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A01[1].length() != 4) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[7] = "XfQDV0VqZv3K9UnXizNZ7bbr68zZYHhA";
            strArr[6] = "coLTNVJt0XyLafWTd1INRD9bcnQGC09j";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 24);
            i4++;
        }
    }

    public static void A03() {
        byte[] bArr = {113, 57, 37, 36, 62, 115};
        if (A01[1].length() != 4) {
            throw new RuntimeException();
        }
        A01[2] = "VQH0NvI5Tq9CthRFZqmgudCB6WJoJACM";
        A00 = bArr;
    }

    static {
        A03();
    }

    public static final <T> T A00(T[] tArr) {
        C1h.A09(tArr, A02(0, 6, 85));
        if (tArr.length == 1) {
            return tArr[0];
        }
        return null;
    }

    public static final <T> T A01(T[] tArr, int i) {
        C1h.A09(tArr, A02(0, 6, 85));
        boolean z = false;
        if (i >= 0 && i < tArr.length) {
            z = true;
        }
        if (z) {
            return tArr[i];
        }
        return null;
    }
}
