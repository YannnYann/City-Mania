package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ny, reason: case insensitive filesystem */
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
public final class ViewOnClickListenerC2951ny implements View.OnClickListener {
    public static byte[] A01;
    public static String[] A02 = {"7hml", "arsR7CXdrRmnc4H", "v9RyQNN3JZl7Y0taJV5Fev", "xRnkh17xdPvSaHRbGtK03y", "FXZpYnZ60nmw9qUqufJi", "0LFdc8iklo0TjcX", "I9OiAb0WWNOPs74", "XflJtqjiU63qxKFPomwp0hCG69EceAXP"};
    public final /* synthetic */ ViewOnClickListenerC1569El A00;

    public ViewOnClickListenerC2951ny(ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        this.A00 = viewOnClickListenerC1569El;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A02;
            if (strArr[3].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[0] = "IAq7";
            strArr2[5] = "WIIgsMPXcsBoxg8";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 111);
            i4++;
        }
    }

    public static void A01() {
        A01 = new byte[]{35, 27, 25, 32};
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
            this.A00.A0E(A00(0, 4, 65));
            this.A00.setVisibility(4);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
            String[] strArr = A02;
            if (strArr[1].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            A02[7] = "CJSg3CC5FJteAR8EeJixCkdZ93puZFm3";
        }
    }
}
