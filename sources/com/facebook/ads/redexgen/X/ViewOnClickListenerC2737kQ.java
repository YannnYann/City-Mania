package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.kQ, reason: case insensitive filesystem */
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
public final class ViewOnClickListenerC2737kQ implements View.OnClickListener {
    public static byte[] A02;
    public static String[] A03 = {"7UVzrIvaHfQAwBaKQlH6Yy3e2reXAh2f", "M60RHsBn37h47k8Hy11qR16n", "Lpi8NZioiZF0U3y93lr6DzVLOc6Oql8D", "ksjbk7WdzsFvtQoQFxF63LgsXYUa0x1G", "4ZjNJEf2fwLWIh7hLcs4jXK7jTW0Wpz3", "EKhAOJa4DJixhVsdwdGW14UNlLO", "GW8sn7PJHkUV4SMCPDQ1eU", "k7U4W8ugqAlfuADQl6CmfEue"};
    public final /* synthetic */ C12973i A00;
    public final /* synthetic */ C2647iy A01;

    public ViewOnClickListenerC2737kQ(C2647iy c2647iy, C12973i c12973i) {
        this.A01 = c2647iy;
        this.A00 = c12973i;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A03;
            if (strArr[7].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[6] = "elnhPrJaXVlpgbt6wt3Sgi";
            strArr2[5] = "cTfg4RjAB9izKSxEFr2cgDGuHv5";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            int i5 = bArrCopyOfRange[i4] ^ i3;
            String[] strArr3 = A03;
            if (strArr3[6].length() != strArr3[5].length()) {
                String[] strArr4 = A03;
                strArr4[4] = "4qfIJQd1W9eQqlp9uNmH3dBCWkUnisoz";
                strArr4[3] = "er328wZAVWxCVQi3Q4pKtlj9q3azgsKC";
                bArrCopyOfRange[i4] = (byte) (i5 ^ 28);
                i4++;
            } else {
                String[] strArr5 = A03;
                strArr5[6] = "cqQ8rZbH0zB5S5bMqf6AFd";
                strArr5[5] = "tqXfdUiSE4Szz6f944qwirnl0Id";
                bArrCopyOfRange[i4] = (byte) (i5 ^ 28);
                i4 += 0;
            }
        }
    }

    public static void A01() {
        A02 = new byte[]{91, 89, 74, 87, 77, 75, 93, 84, 103, 78, 10, 103, 85, 77, 84, 76, 81, 103, 81, 85, 89, 95, 93, 76, 84, 77, 85, 72, 126, 72, 76, 64, 70, 68};
    }

    static {
        A01();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            C2420fE adInfo = this.A01.A03();
            if (this.A00.A00.A05().A2K() && adInfo != null) {
                this.A00.A1q();
                this.A00.setCTAInfo(adInfo.A0K(), this.A01.A08());
                this.A00.getCtaButton().A0E(A00(0, 23, 36));
            } else {
                String productUrl = this.A01.A07();
                String str = productUrl;
                if (!(str == null || str.length() == 0)) {
                    this.A01.A04().A0F();
                    this.A01.A04().setClickUrl(productUrl, this.A01.A08());
                }
                this.A01.A04().A0E(A00(23, 11, 61));
            }
            this.A00.A01.A0Y();
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
