package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uE, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3335uE extends RelativeLayout {
    public static String[] A06 = {"GfXFZtEZk1NZfob7Kzf1xTq0EESlD7si", "ewzI1iE8tF5Z2B86REyPWWZDw7DKLBH9", "kOyZSgqEibXIKTIW7tLvn8rBuxcmsyDd", "XpDxTY", "v6DhXkGtrQWw75h", "XA27k4WXBENWs2k6KViFhCSGxV0pMN8g", "cLUj8uWE8C4NOcjwK2waVMiWyPuWQVsm", ""};
    public final int A00;
    public final LinearLayout A01;
    public final C1733Kz A02;
    public final C1643Hi A03;
    public final InterfaceC2909nG A04;
    public final InterfaceC3144r9 A05;

    public C3335uE(C1643Hi c1643Hi, C1733Kz c1733Kz, InterfaceC2909nG interfaceC2909nG, InterfaceC3144r9 interfaceC3144r9, int i, int i2) {
        super(c1643Hi);
        this.A03 = c1643Hi;
        this.A02 = c1733Kz;
        this.A04 = interfaceC2909nG;
        this.A05 = interfaceC3144r9;
        this.A00 = i;
        this.A01 = new LinearLayout(c1643Hi);
        A00();
        addView(this.A01, new FrameLayout.LayoutParams(-1, -1));
        setLayoutOrientation(i2);
    }

    private void A00() {
        int i = 0;
        while (true) {
            C1733Kz c1733Kz = this.A02;
            if (A06[4].length() != 15) {
                throw new RuntimeException();
            }
            String[] strArr = A06;
            strArr[6] = "6kBjYVyQvbEVjVKJKeawSG2VEKMXDcJL";
            strArr[5] = "aQimcOJmMOk7TFcbK4Cqi1kaRliNN4Qj";
            int i2 = c1733Kz.A2v();
            if (i < i2) {
                C1575Er c1575Er = new C1575Er(this.A03, this.A02.A2z(i), this.A04, this.A05);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
                layoutParams.weight = 1.0f;
                int i3 = C1575Er.A0B;
                int i4 = C1575Er.A0B;
                int i5 = C1575Er.A0B;
                int i6 = C1575Er.A0B;
                layoutParams.setMargins(i3, i4, i5, i6);
                c1575Er.setLayoutParams(layoutParams);
                this.A01.addView(c1575Er);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setLayoutOrientation(configuration.orientation);
    }

    private void setLayoutOrientation(int i) {
        if (i != 1) {
            this.A01.setOrientation(0);
            this.A01.setPadding(0, this.A00, 0, (int) (((double) this.A00) * 0.25d));
        } else {
            this.A01.setOrientation(1);
            this.A01.setPadding(0, (int) (((double) this.A00) * 1.5d), 0, this.A00);
        }
    }
}
