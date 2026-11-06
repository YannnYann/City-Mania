package com.facebook.ads.redexgen.X;

import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ay, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1478Ay implements InterfaceC2348e3 {
    public static String[] A0E = {"ua4Z1F3Vn1tdURaP0tTj5Z", "VlqKJtfjGqtNso0qX2A6lmnvOZsZ2xTE", "1pb0xsuTqC4ySw1JjiCpjHk6a0KK", "HW9a8amQa56v9usqS4J3KzzxMBRp7oUY", "lzg290ZQq0ECc78zj7A2Pt", "9JBQniCNh78hbF6UnJo6", "DIRAqcjzgSQz4x9q8OrEXdtc6Zce0V5V", "FPN1H6gS7aT4O5CCkRk249I"};
    public C1484Be A01;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public boolean A06;
    public final BG A09 = new BG() { // from class: com.facebook.ads.redexgen.X.5U
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
        /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(C5W c5w) {
            this.A00.A07.removeCallbacksAndMessages(null);
            if (this.A00.A0G(EnumC2322dc.A05)) {
                this.A00.A03();
                this.A00.A06(true, false);
            }
            this.A00.A05 = true;
        }
    };
    public final BM A08 = new BM() { // from class: com.facebook.ads.redexgen.X.5T
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
        /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(C5Y c5y) {
            this.A00.A02 = true;
            if (this.A00.A03) {
                return;
            }
            this.A00.A03();
            this.A00.A06(false, false);
            this.A00.A05 = true;
        }
    };
    public final BE A0A = new C5S(this);
    public final BB A0B = new BB() { // from class: com.facebook.ads.redexgen.X.5R
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
        /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(C5V c5v) {
            if (this.A00.A04 || !this.A00.A0G(EnumC2322dc.A05)) {
                return;
            }
            this.A00.A03();
            this.A00.A06(true, false);
        }
    };
    public final B5 A0C = new C5Q(this);
    public final Handler A07 = new Handler();
    public final List<InterfaceC2321db> A0D = new ArrayList();
    public int A00 = 2000;
    public boolean A02 = false;

    public C1478Ay(boolean z, boolean z2) {
        this.A04 = z;
        this.A03 = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03() {
        this.A07.removeCallbacksAndMessages(null);
        Iterator<InterfaceC2321db> it = this.A0D.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A0E[2].length() != 28) {
                throw new RuntimeException();
            }
            A0E[1] = "SzC94btdcN1119JNHgRanzsWdfoutew0";
            if (zHasNext) {
                it.next().cancel();
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A06(boolean z, boolean z2) {
        for (InterfaceC2321db interfaceC2321db : this.A0D) {
            if (A0E[2].length() != 28) {
                throw new RuntimeException();
            }
            A0E[1] = "qWrr7wKcnD6M25Nm7U3j0NNRElcnIA4d";
            interfaceC2321db.A4b(z, z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0G(EnumC2322dc enumC2322dc) {
        Iterator<InterfaceC2321db> it = this.A0D.iterator();
        while (it.hasNext()) {
            if (it.next().A9o() != enumC2322dc) {
                return false;
            }
        }
        return true;
    }

    public final void A0H() {
        this.A0D.clear();
    }

    public final void A0I() {
        if (this.A04) {
            this.A07.removeCallbacksAndMessages(null);
            this.A04 = false;
        }
    }

    public final void A0J() {
        this.A06 = true;
        this.A05 = true;
        A06(false, false);
    }

    public final void A0K(int i) {
        this.A00 = i;
    }

    public final void A0L(InterfaceC2321db interfaceC2321db) {
        this.A0D.add(interfaceC2321db);
    }

    public final boolean A0M() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2348e3
    public final void ABd(C1484Be c1484Be) {
        this.A01 = c1484Be;
        c1484Be.getEventBus().A03(this.A09, this.A0C, this.A0A, this.A0B, this.A08);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2348e3
    public final void ALp(C1484Be c1484Be) {
        A03();
        this.A01 = null;
        if (c1484Be == null) {
            return;
        }
        c1484Be.getEventBus().A04(this.A08, this.A0C, this.A0A, this.A0B, this.A09);
    }
}
