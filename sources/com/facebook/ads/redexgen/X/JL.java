package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class JL implements InterfaceC2549hL {
    public final Rect A00 = new Rect();
    public final /* synthetic */ C2578hp A01;

    public JL(C2578hp c2578hp) {
        this.A01 = c2578hp;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2549hL
    public final C2581hs ADs(View view, C2581hs c2581hs) {
        C2581hs c2581hsA06 = AbstractC2565hb.A06(view, c2581hs);
        if (c2581hsA06.A07()) {
            return c2581hsA06;
        }
        Rect rect = this.A00;
        rect.left = c2581hsA06.A03();
        rect.top = c2581hsA06.A05();
        rect.right = c2581hsA06.A04();
        rect.bottom = c2581hsA06.A02();
        int i = this.A01.getChildCount();
        for (int count = 0; count < i; count++) {
            C2581hs c2581hsA05 = AbstractC2565hb.A05(this.A01.getChildAt(count), c2581hsA06);
            rect.left = Math.min(c2581hsA05.A03(), rect.left);
            rect.top = Math.min(c2581hsA05.A05(), rect.top);
            rect.right = Math.min(c2581hsA05.A04(), rect.right);
            rect.bottom = Math.min(c2581hsA05.A02(), rect.bottom);
        }
        int count2 = rect.left;
        C2581hs applied = c2581hsA06.A06(count2, rect.top, rect.right, rect.bottom);
        return applied;
    }
}
