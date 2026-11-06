package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.dt, reason: case insensitive filesystem */
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
public final class C2338dt {
    public static byte[] A00;

    static {
        A01();
    }

    public /* synthetic */ C2338dt(AbstractC12661i abstractC12661i) {
        this();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 60);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{105, 101, 100, 126, 111, 114, 126, 38, 42, 48, 43, 49, 33, 42, 50, 43, 7, 36, 55, 105, 118, 123, 122, 112, 93, 126, 109};
    }

    public C2338dt() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A02(View view) {
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
    }

    @JvmStatic
    public final C2337ds A04(C1643Hi c1643Hi, C1466Am c1466Am, int i) {
        C1h.A09(c1643Hi, A00(0, 7, 54));
        C1h.A09(c1466Am, A00(7, 12, Sdk.SDKError.Reason.TPAT_ERROR_VALUE));
        C1466Am fullBar = new C1466Am(c1643Hi, i);
        fullBar.A0A(AbstractC1576Es.A0g, C2337ds.A02, true);
        AbstractC3111qc.A0L(fullBar);
        fullBar.A09(i);
        C2337ds container = new C2337ds(c1643Hi, fullBar, c1466Am);
        AbstractC3111qc.A0L(container);
        return container;
    }

    @JvmStatic
    public final C2337ds A05(C1643Hi c1643Hi, C1466Am c1466Am, int i, int i2, int i3) {
        C1h.A09(c1643Hi, A00(0, 7, 54));
        C1h.A09(c1466Am, A00(19, 8, 35));
        C1466Am emptyBar = new C1466Am(c1643Hi, c1466Am.getCustomDuration());
        emptyBar.A0A(i, i2, true);
        emptyBar.setPadding(0, 0, 0, 0);
        AbstractC3111qc.A0L(emptyBar);
        C2337ds c2337ds = new C2337ds(c1643Hi, c1466Am, emptyBar);
        AbstractC3111qc.A0H(1109, c2337ds);
        c2337ds.setLayoutParams(new RelativeLayout.LayoutParams(-1, i3));
        return c2337ds;
    }
}
