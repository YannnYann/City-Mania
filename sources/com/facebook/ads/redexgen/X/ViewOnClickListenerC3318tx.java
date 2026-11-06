package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.LinearLayout;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tx, reason: case insensitive filesystem */
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
public final class ViewOnClickListenerC3318tx implements View.OnClickListener {
    public final /* synthetic */ LinearLayout A00;
    public final /* synthetic */ C3320tz A01;

    public ViewOnClickListenerC3318tx(C3320tz c3320tz, LinearLayout linearLayout) {
        this.A01 = c3320tz;
        this.A00 = linearLayout;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            if (this.A01.A03.getVisibility() == 8) {
                this.A01.A08.A0F().ABg();
                this.A01.A07(0);
                this.A00.getHandler().postDelayed(this.A01.A0B, this.A01.A00);
            } else {
                this.A01.A08.A0F().ABh();
                this.A01.A06();
                this.A00.getHandler().removeCallbacks(this.A01.A0B);
                this.A01.A07(8);
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
