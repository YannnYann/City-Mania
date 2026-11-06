package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Map;
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
public final class C0 extends AbstractC2225c3 {
    public static String[] A03 = {"7QiPHOSfASxUpNU6TD2bwAUc2h4KqeOK", "JUTNm8kTmJ3rCPx8lEIgvBLgr17n46wk", "FyxHX5ox0vb7x3A44VT2gDubksZYSJjc", "1zrQwRYxSIFUHRomCHw2xaxUn7MsFeer", "0vBWWMU0WFbUOdbhC9KYLFkcSMOuwU0Q", "IzWzwEXv", "dfQVSJ", "Zvkip1x3OOFmGOtSaTV6Jn3c16WmJA1n"};
    public final /* synthetic */ C2647iy A00;
    public final /* synthetic */ C1504By A01;
    public final /* synthetic */ Map<String, String> A02;

    public C0(C1504By c1504By, C2647iy c2647iy, Map<String, String> map) {
        this.A01 = c1504By;
        this.A00 = c2647iy;
        this.A02 = map;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2225c3
    public final void A03() {
        C2224c2 c2224c2 = this.A01.A01;
        C2224c2 vc = this.A01.A08;
        if (!vc.A0Z()) {
            boolean zIsEmpty = TextUtils.isEmpty(this.A01.A09);
            String[] strArr = A03;
            if (strArr[3].charAt(10) != strArr[7].charAt(10)) {
                throw new RuntimeException();
            }
            A03[2] = "0NibZtMWwDqXadHgwVsnWvsqOs29A86a";
            if (!zIsEmpty && !this.A01.A02.get(this.A00.A02())) {
                this.A01.A06.AC7(this.A01.A09, new C3303ti(this.A02).A05(c2224c2).A04(this.A01.A07).A07());
                C2435fT.A07(this.A01.A04, this.A01.A05);
                this.A01.A02.put(this.A00.A02(), true);
            }
        }
    }
}
