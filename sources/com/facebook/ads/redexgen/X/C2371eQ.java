package com.facebook.ads.redexgen.X;

import java.io.InterruptedIOException;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.eQ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2371eQ {
    public static String[] A0A = {"t4b1NIYxcZBrapVcjEzL4J0oJeRqrgew", "swfMi0mumkRMNTfN9gjixboFPAbGrR7b", "0NRJscgydOLmxuKxdcXS6qyTWNEVTV2L", "ohQHELtXyKexlFHse2cuWokjw1EsRvOg", "VhJ6SuQTF6tn8wTQKVjWlG8ESzgqX0mL", "t5bqH2QV2Q1caO6B62lIjTzaAwZLEpph", "SmWNgPIgg2cQ4UXWYZ0EUcN61mFZDYar", "fEDmRUEmNCVt0TxVjdiAbAnLVC0eYFcb"};
    public long A00;
    public long A01;
    public long A02;
    public final NX A03;
    public final InterfaceC2356eB A04;
    public final C14177y A05;
    public final InterfaceC2370eP A06;
    public final String A07;
    public final byte[] A08;
    public volatile boolean A09;

    public C2371eQ(C14177y c14177y, NX nx, byte[] bArr, InterfaceC2370eP interfaceC2370eP) {
        this.A05 = c14177y;
        this.A04 = c14177y.A0E();
        this.A03 = nx;
        this.A08 = bArr == null ? new byte[131072] : bArr;
        this.A06 = interfaceC2370eP;
        this.A07 = c14177y.A0F().A5H(nx);
        this.A02 = nx.A04;
    }

    private long A00() {
        if (this.A01 == -1) {
            return -1L;
        }
        return this.A01 - this.A03.A04;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private long A01(long r11, long r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2371eQ.A01(long, long):long");
    }

    private void A02() throws InterruptedIOException {
        if (!this.A09) {
        } else {
            throw new InterruptedIOException();
        }
    }

    private void A03(long j) {
        this.A00 += j;
        if (this.A06 != null) {
            this.A06.AGe(A00(), this.A00, j);
        }
    }

    private void A04(long j) {
        if (this.A01 == j) {
            return;
        }
        this.A01 = j;
        if (this.A06 != null) {
            this.A06.AGe(A00(), this.A00, 0L);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A05() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 231
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2371eQ.A05():void");
    }

    public final void A06() {
        this.A09 = true;
    }
}
