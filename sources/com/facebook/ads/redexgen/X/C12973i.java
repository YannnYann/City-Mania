package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3i, reason: invalid class name and case insensitive filesystem */
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
public final class C12973i extends AbstractC13485h {
    public static byte[] A02;
    public static final int A03;
    public static final C2759kn A04;
    public static final int A05;
    public final C3374ur A00;
    public final C1508Cc A01;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 116);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A02 = new byte[]{-4, -6, 11, 8, 14, 12, -2, 5, -36, -6, 11, -3, -37, -2, 1, -6, 15, 2, 8, 11, -31, -2, 5, 9, -2, 11, 69, 78, 75, 71, 80, 86, 54, 81, 77, 71, 80, 8, 20, 19, 25, 10, 29, 25, -24, -19, -13, -28, -15, -32, -30, -13, -24, -11, -28, -52, -28, -29, -24, -32, -56, -19, -27, -18, -14, -29, -12, -29, -17, -11};
    }

    static {
        A03();
        A04 = new C2759kn(null);
        A05 = AbstractC3068pv.A06;
        A03 = AbstractC3068pv.A0C;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12973i(C3374ur c3374ur, String str, C1508Cc c1508Cc) {
        super(c3374ur, false, str, c1508Cc);
        C1h.A09(c3374ur, A02(64, 6, 14));
        C1h.A09(str, A02(26, 11, 110));
        C1h.A09(c1508Cc, A02(0, 26, 37));
        this.A00 = c3374ur;
        this.A01 = c1508Cc;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC13485h
    public final void A1t(C1643Hi c1643Hi) {
        C1h.A09(c1643Hi, A02(37, 7, 49));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC13485h
    public final void A1u(C1643Hi c1643Hi, InterfaceC2644iv interfaceC2644iv) {
        C1h.A09(c1643Hi, A02(37, 7, 49));
        C1h.A09(interfaceC2644iv, A02(44, 20, 11));
        List<C2647iy> listA7q = interfaceC2644iv.A7q();
        List<C2647iy> list = listA7q;
        if (list == null || list.isEmpty()) {
            return;
        }
        C2647iy c2647iy = listA7q.get(0);
        int screenWidth = (int) (Math.min(AbstractC3070px.A04.widthPixels, AbstractC3070px.A04.heightPixels) * 0.74f);
        RelativeLayout relativeLayout = new RelativeLayout(c1643Hi);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(screenWidth, (int) (screenWidth * 2.06f)));
        C3346uP c3346uP = new C3346uP(c1643Hi);
        c3346uP.setRadius(A05);
        c3346uP.setAdjustViewBounds(true);
        c3346uP.setScaleType(ImageView.ScaleType.CENTER_CROP);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        c3346uP.setLayoutParams(layoutParams);
        c3346uP.setOnClickListener(new ViewOnClickListenerC2737kQ(c2647iy, this));
        relativeLayout.addView(c3346uP);
        addView(relativeLayout);
        new AsyncTaskC1577Et(c3346uP, this.A00.A06()).A04().A06(new C6(this)).A07(c2647iy.A06());
    }
}
