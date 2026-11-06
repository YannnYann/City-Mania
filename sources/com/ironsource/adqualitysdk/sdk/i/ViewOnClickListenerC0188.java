package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ί, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class ViewOnClickListenerC0188 extends AbstractC0897 implements View.OnClickListener {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f1202 = StringFog.decrypt("pNbaoN8YvVaCy+2p2B6kXo7b9r7XD7lo\n", "67iZzLZ71ho=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final InterfaceC0282 f1203;

    public ViewOnClickListenerC0188(View.OnClickListener onClickListener, InterfaceC0282 interfaceC0282) {
        super(onClickListener);
        this.f1203 = interfaceC0282;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            this.f1203.mo1189(this, view);
        } catch (Throwable th) {
            AbstractC1003.m1592(f1202, StringFog.decrypt("aYjm7FoDw+cMl8DhZErZ/UmU8fEITMTKQJP36A==\n", "LPqUgygjqok=\n"), th, false);
        }
        Object obj = this.f3454;
        if (obj != null) {
            ((View.OnClickListener) obj).onClick(view);
        }
    }
}
