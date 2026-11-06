package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3155rK implements View.OnClickListener {
    public static String[] A01 = {"JZBkVFkHUEtSZPNKDPtCLLqtcQhKrmC", "tRqIlZ2C6oLQW3vy5bXrIO6XvJ3pOMEg", "YSkDmt1KcAHWXd2B1UwrCNyqBzUQhjyR", "pxqLr6aTeDKsRpaZkZMtXcwYkq3Imtmi", "CKX7eo7cCcbsM5CMILhZeMxMGlpQx58l", "rcRiXGgqKb3w51K15NoHN6x4ilWia2Jb", "6iOiNX20pYdMSIdhgfMI7lhX6YzSHIlu", "pJ2FUXJdbR2XuwYDTACTCLg4eRJhcRun"};
    public final /* synthetic */ C1595Fl A00;

    public ViewOnClickListenerC3155rK(C1595Fl c1595Fl) {
        this.A00 = c1595Fl;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            if (this.A00.A01 != null && this.A00.A02.A0D()) {
                this.A00.A01.ADh(this.A00);
            }
        } catch (Throwable th) {
            String[] strArr = A01;
            if (strArr[6].charAt(7) == strArr[7].charAt(7)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[4] = "WfLaP7ogTzmsfyl3JRn4qgvYTkdqbACU";
            strArr2[3] = "Fq3MVOA1b8osN1hZ5DMufKXXLKHQsih6";
            AbstractC2996oi.A00(th, this);
        }
    }
}
