package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3180rj implements View.OnClickListener {
    public final /* synthetic */ C2441fZ A00;
    public final /* synthetic */ C2917nO A01;
    public final /* synthetic */ InterfaceC3144r9 A02;
    public final /* synthetic */ C3181rk A03;
    public final /* synthetic */ String A04;

    public ViewOnClickListenerC3180rj(C3181rk c3181rk, C2917nO c2917nO, InterfaceC3144r9 interfaceC3144r9, String str, C2441fZ c2441fZ) {
        this.A03 = c3181rk;
        this.A01 = c2917nO;
        this.A02 = interfaceC3144r9;
        this.A04 = str;
        this.A00 = c2441fZ;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A01.A04(EnumC2916nN.A0A, null);
            if (this.A03.A01.A0O(this.A03.A02.A02(), true)) {
                this.A02.ABW(this.A04, this.A00);
            } else if (!TextUtils.isEmpty(this.A00.A00())) {
                C3032pK.A0P(new C3032pK(), this.A03.A02, AbstractC3036pP.A00(this.A00.A00()), this.A04);
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
