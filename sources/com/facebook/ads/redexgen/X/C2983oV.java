package com.facebook.ads.redexgen.X;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.oV, reason: case insensitive filesystem */
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
public final class C2983oV extends ViewOutlineProvider {
    public static byte[] A01;
    public static String[] A02 = {"byXmvqVsG48CSr93T6eJGXgdWYrJdUYR", "M7wEDz2tkjeipDVmcAOapdqwmiMIp", "ZGjeWPkVy4rp6BeS0M9VsfZeY12NfYQ4", "dK1ZZEVDS8eNQJK5k8v1", "BhyL9pkFBh8PqqW4jEqlo8J2KoKoZhZ1", "FD6gaQ", "", "XgB2AjRR2uInvsGLr9HnTw4blOVZ38K2"};
    public final /* synthetic */ float A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A02[2].charAt(24) != 'Y') {
                throw new RuntimeException();
            }
            A02[0] = "hpvYLrLiTEim5ctO9bUhQK5RKIaFxoDe";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 39);
            i4++;
        }
    }

    public static void A01() {
        A01 = new byte[]{89, 67, 66, 90, 95, 88, 83, 9, 22, 26, 8};
    }

    static {
        A01();
    }

    public C2983oV(float f) {
        this.A00 = f;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        C1h.A09(view, A00(7, 4, 88));
        C1h.A09(outline, A00(0, 7, 17));
        outline.setRoundRect(0, 0, view.getWidth(), view.getHeight() + ((int) this.A00), this.A00);
    }
}
