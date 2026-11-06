package com.facebook.ads.redexgen.X;

import android.content.DialogInterface;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class DialogInterfaceOnClickListenerC3126qr implements DialogInterface.OnClickListener {
    public final /* synthetic */ C1608Fz A00;

    public DialogInterfaceOnClickListenerC3126qr(C1608Fz c1608Fz) {
        this.A00 = c1608Fz;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
    }
}
