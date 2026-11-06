package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.ContextWrapper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.lA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2780lA extends ContextWrapper {
    public final InterfaceC2782lC A00;
    public final AtomicReference<String> A01;

    public C2780lA(Context context, InterfaceC2782lC interfaceC2782lC) {
        super(context.getApplicationContext());
        this.A01 = new AtomicReference<>();
        this.A00 = interfaceC2782lC;
    }

    public final InterfaceC2329dj A00(C2780lA c2780lA) {
        return this.A00.A8n(c2780lA);
    }

    public final InterfaceC2775l3 A01() {
        return this.A00.A7r();
    }

    public final C1642Hh A02() {
        return this.A00.A9c(this);
    }

    public final InterfaceC2781lB A03() {
        return this.A00.A7e(this);
    }

    public final InterfaceC2783lD A04() {
        return this.A00.A8Y(this);
    }

    public final InterfaceC2785lF A05() {
        return this.A00.A9b(this);
    }

    public final InterfaceC2786lG A06() {
        return this.A00.A9s();
    }

    public final InterfaceC2797lR A07() {
        return this.A00.A8M(this);
    }

    public final InterfaceC2810le A08() {
        return this.A00.A8O(this);
    }

    public final C2841mA A09() {
        return this.A00.A9j();
    }

    public final InterfaceC2909nG A0A() {
        return this.A00.A7N(A02());
    }

    public final InterfaceC2921nS A0B() {
        return this.A00.A9d(A02());
    }

    public final String A0C() {
        return this.A01.get();
    }

    public final void A0D(String str) {
        this.A01.set(str);
    }
}
