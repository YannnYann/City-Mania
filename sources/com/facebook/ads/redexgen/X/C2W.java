package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2W, reason: invalid class name */
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
public final class C2W {
    public static byte[] A04;
    public static String[] A05 = {"RqNCfYVB9HcetPiLXgcR24BvBlIOsLdC", "Jjzzq6P1DJMY2ecHgqR77gm7q0r1MAHE", "j2FVYTA9nJkJnbb8uaWPIRwS", "hLf8ExjyA", "D8F9b", "bbeAi1jhdNPMHZVSXcf8M50grzTUQaeq", "1QOqBs9AyrzVTw2pWh52rQv4jWW7dN01", "ety9gl5x1RfsignWG2yE5"};
    public boolean A00;
    public boolean A01;
    public boolean A02;
    public boolean A03;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 77);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{42, 33, 34, 47, 44, 33, 31, 40, 46, 57, 70, 77, 78, 67, 64, 77, 119, 72, 82, 72, 67, 77, 68, 115, 68, 66, 85, 122, 97, 125, 112, 103};
    }

    static {
        A01();
    }

    public final C2W A02() {
        C2W copy = new C2W();
        copy.A05(this);
        return copy;
    }

    public final void A03() {
        this.A03 = false;
        this.A00 = false;
        this.A01 = false;
        this.A02 = false;
    }

    public final void A04(Rect rect, Rect rect2) {
        C1h.A09(rect, A00(10, 17, 108));
        C1h.A09(rect2, A00(0, 10, 0));
        if (rect.isEmpty() || rect2.isEmpty()) {
            return;
        }
        int i = rect.top;
        int i2 = rect2.top;
        if (A05[2].length() == 23) {
            throw new RuntimeException();
        }
        A05[7] = "xwAKRuvjn2VosnGHReA6c";
        if (i <= i2) {
            this.A03 = true;
        }
        if (rect.bottom >= rect2.bottom) {
            this.A00 = true;
        }
        if (rect.left <= rect2.left) {
            this.A01 = true;
        }
        if (rect.right >= rect2.right) {
            this.A02 = true;
        }
    }

    public final void A05(C2W c2w) {
        C1h.A09(c2w, A00(27, 5, 88));
        this.A03 = c2w.A03;
        this.A00 = c2w.A00;
        this.A01 = c2w.A01;
        this.A02 = c2w.A02;
    }

    public final boolean A06() {
        if (this.A03 && this.A00) {
            boolean z = this.A01;
            if (A05[7].length() != 21) {
                throw new RuntimeException();
            }
            A05[3] = "9NhPAOaCp";
            if (z && this.A02) {
                return true;
            }
        }
        return false;
    }
}
