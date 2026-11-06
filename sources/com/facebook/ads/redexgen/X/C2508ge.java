package com.facebook.ads.redexgen.X;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ge, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2508ge implements Serializable {
    public static final long serialVersionUID = -3209129042070173126L;
    public C2508ge A00;
    public final int A01;
    public final String A02;
    public final String A03;
    public final List<C2508ge> A04;

    public C2508ge(int i, String str, String str2) {
        this.A04 = new ArrayList();
        this.A01 = i;
        this.A03 = str;
        this.A02 = str2;
    }

    public C2508ge(String str) {
        this(0, null, str);
    }

    private void A00(C2508ge c2508ge) {
        this.A00 = c2508ge;
    }

    public final int A01() {
        return this.A01;
    }

    public final C2508ge A02() {
        return this.A00;
    }

    public final String A03() {
        return this.A02;
    }

    public final String A04() {
        return this.A03;
    }

    public final List<C2508ge> A05() {
        return this.A04;
    }

    public final void A06(C2508ge c2508ge) {
        c2508ge.A00(this);
        this.A04.add(c2508ge);
    }
}
