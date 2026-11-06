package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.facebook.ads.androidx.media3.exoplayer.offline.DownloadRequest;
import com.facebook.ads.androidx.media3.exoplayer.scheduler.Requirements;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Tr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1946Tr {
    public static byte[] A0G;
    public static String[] A0H = {"Oa0AxzF3H", "BtRyrqu6RTm", "N", "OPQ0Y4w6r0z03hYE8U3KqqomxIJZ2", "xfRLkNoVSAgn242Wp", "U6Rvuvos0L1tDIEEvYa", "x03fLqe", "BZ5pywAUPVBgV9E1L9uBrs1xPQCkFzfu"};
    public static final Requirements A0I;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public UJ A05;
    public List<TW> A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public final Context A0A;
    public final Handler A0B;
    public final HandlerC1943To A0C;
    public final InterfaceC1899Rw A0D;
    public final UF A0E;
    public final CopyOnWriteArraySet<InterfaceC1945Tq> A0F;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A0H[1].length() != 11) {
                throw new RuntimeException();
            }
            A0H[2] = "IT7qXUHk";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 16);
            i4++;
        }
    }

    public static void A03() {
        byte[] bArr = {-81, -30, -39, -70, -42, -53, -29, -49, -36, -92, -82, -39, -31, -40, -42, -39, -53, -50, -73, -53, -40, -53, -47, -49, -36};
        String[] strArr = A0H;
        if (strArr[3].length() == strArr[5].length()) {
            throw new RuntimeException();
        }
        A0H[4] = "FwviogkCPu2cZmsnt";
        A0G = bArr;
    }

    static {
        A03();
        A0I = new Requirements(1);
    }

    public C1946Tr(Context context, ND nd, InterfaceC2356eB interfaceC2356eB, NN nn, Executor executor) {
        this(context, new C8u(nd), new S2(new C1771Mm().A06(interfaceC2356eB).A05(nn), executor));
    }

    public C1946Tr(Context context, InterfaceC1899Rw interfaceC1899Rw, U5 u5) {
        this.A0A = context.getApplicationContext();
        this.A0D = interfaceC1899Rw;
        this.A01 = 3;
        this.A02 = 5;
        this.A07 = true;
        this.A06 = Collections.emptyList();
        this.A0F = new CopyOnWriteArraySet<>();
        Handler handlerA0b = N1.A0b(new Handler.Callback() { // from class: com.facebook.ads.redexgen.X.Tk
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.A00.A0B(message);
            }
        });
        this.A0B = handlerA0b;
        HandlerThread handlerThread = new HandlerThread(A01(0, 25, 90));
        handlerThread.start();
        this.A0C = new HandlerC1943To(handlerThread, interfaceC1899Rw, u5, handlerA0b, this.A01, this.A02, this.A07);
        UF requirementsListener = new UF() { // from class: com.facebook.ads.redexgen.X.S1
            @Override // com.facebook.ads.redexgen.X.UF
            public final void AGo(UJ uj, int i) {
                this.A00.A07(uj, i);
            }
        };
        this.A0E = requirementsListener;
        this.A05 = new UJ(context, requirementsListener, A0I);
        this.A03 = this.A05.A09();
        this.A04 = 1;
        this.A0C.obtainMessage(0, this.A03, 0).sendToTarget();
    }

    public static TW A00(TW tw, DownloadRequest downloadRequest, int i, long j) {
        long j2;
        int i2;
        int i3 = tw.A02;
        if (i3 == 5 || tw.A02()) {
            j2 = j;
        } else {
            j2 = tw.A05;
        }
        if (i3 == 5 || i3 == 7) {
            i2 = 7;
        } else if (i != 0) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        return new TW(tw.A07.A02(downloadRequest), i2, j2, j, -1L, i, 0);
    }

    private void A02() {
        for (InterfaceC1945Tq listener : this.A0F) {
            listener.AHp(this, this.A09);
        }
    }

    private void A04(int i, int i2) {
        this.A04 -= i;
        this.A00 = i2;
        if (A0I()) {
            Iterator<InterfaceC1945Tq> it = this.A0F.iterator();
            while (it.hasNext()) {
                it.next().AF9(this);
            }
        }
    }

    private void A05(C1941Tm c1941Tm) {
        this.A06 = Collections.unmodifiableList(c1941Tm.A02);
        TW tw = c1941Tm.A00;
        boolean zA0A = A0A();
        if (c1941Tm.A03) {
            Iterator<InterfaceC1945Tq> it = this.A0F.iterator();
            while (it.hasNext()) {
                it.next().AEk(this, tw);
            }
        } else {
            Iterator<InterfaceC1945Tq> it2 = this.A0F.iterator();
            while (it2.hasNext()) {
                it2.next().AEj(this, tw, c1941Tm.A01);
            }
        }
        if (zA0A) {
            A02();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07(UJ uj, int i) {
        Requirements requirementsA0A = uj.A0A();
        if (this.A03 != i) {
            this.A03 = i;
            this.A04++;
            this.A0C.obtainMessage(2, i, 0).sendToTarget();
        }
        boolean zA0A = A0A();
        Iterator<InterfaceC1945Tq> it = this.A0F.iterator();
        while (it.hasNext()) {
            it.next().AGn(this, requirementsA0A, i);
        }
        if (zA0A) {
            A02();
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0017 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A08(java.util.List<com.facebook.ads.redexgen.X.TW> r4) {
        /*
            r3 = this;
            r0 = 1
            r3.A08 = r0
            java.util.List r0 = java.util.Collections.unmodifiableList(r4)
            r3.A06 = r0
            boolean r2 = r3.A0A()
            java.util.concurrent.CopyOnWriteArraySet<com.facebook.ads.redexgen.X.Tq> r0 = r3.A0F
            java.util.Iterator r1 = r0.iterator()
        L13:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L23
            java.lang.Object r0 = r1.next()
            com.facebook.ads.redexgen.X.Tq r0 = (com.facebook.ads.redexgen.X.InterfaceC1945Tq) r0
            r0.AFE(r3)
            goto L13
        L23:
            if (r2 == 0) goto L28
            r3.A02()
        L28:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1946Tr.A08(java.util.List):void");
    }

    private void A09(boolean z) {
        if (this.A07 == z) {
            return;
        }
        this.A07 = z;
        this.A04++;
        this.A0C.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
        boolean zA0A = A0A();
        Iterator<InterfaceC1945Tq> it = this.A0F.iterator();
        while (it.hasNext()) {
            it.next();
        }
        if (zA0A) {
            A02();
        }
    }

    private boolean A0A() {
        boolean z = false;
        boolean waitingForRequirements = this.A07;
        if (!waitingForRequirements && this.A03 != 0) {
            int i = 0;
            while (true) {
                if (i >= this.A06.size()) {
                    break;
                }
                if (this.A06.get(i).A02 == 0) {
                    z = true;
                    break;
                }
                i++;
            }
        }
        boolean z2 = this.A09;
        String[] strArr = A0H;
        if (strArr[3].length() == strArr[5].length()) {
            throw new RuntimeException();
        }
        A0H[2] = "De";
        boolean waitingForRequirements2 = z2 != z;
        this.A09 = z;
        return waitingForRequirements2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0B(Message message) {
        switch (message.what) {
            case 0:
                A08((List) message.obj);
                return true;
            case 1:
                int activeTaskCount = message.arg1;
                int processedMessageCount = message.arg2;
                A04(activeTaskCount, processedMessageCount);
                return true;
            case 2:
                C1941Tm update = (C1941Tm) message.obj;
                A05(update);
                return true;
            default:
                throw new IllegalStateException();
        }
    }

    public final List<TW> A0D() {
        return this.A06;
    }

    public final void A0E() {
        A09(false);
    }

    public final void A0F(InterfaceC1945Tq interfaceC1945Tq) {
        AbstractC1747Ln.A01(interfaceC1945Tq);
        this.A0F.add(interfaceC1945Tq);
    }

    public final void A0G(DownloadRequest downloadRequest) {
        A0H(downloadRequest, 0);
    }

    public final void A0H(DownloadRequest downloadRequest, int i) {
        this.A04++;
        this.A0C.obtainMessage(6, i, 0, downloadRequest).sendToTarget();
    }

    public final boolean A0I() {
        return this.A00 == 0 && this.A04 == 0;
    }
}
