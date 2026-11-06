package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class MS<T> {
    public static byte[] A09;
    public boolean A00;
    public boolean A01;
    public final InterfaceC1754Lu A02;
    public final MM A03;
    public final MQ<T> A04;
    public final Object A05;
    public final ArrayDeque<Runnable> A06;
    public final ArrayDeque<Runnable> A07;
    public final CopyOnWriteArraySet<MR<T>> A08;

    static {
        A03();
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public MS(CopyOnWriteArraySet<MR<T>> copyOnWriteArraySet, Looper looper, InterfaceC1754Lu interfaceC1754Lu, MQ<T> mq) {
        this.A02 = interfaceC1754Lu;
        this.A08 = copyOnWriteArraySet;
        this.A04 = mq;
        this.A05 = new Object();
        this.A06 = new ArrayDeque<>();
        this.A07 = new ArrayDeque<>();
        this.A03 = interfaceC1754Lu.A5y(looper, new Handler.Callback() { // from class: com.facebook.ads.redexgen.X.MO
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.A00.A05(message);
            }
        });
        this.A01 = true;
        this.A00 = XL.A03(XQ.A0E);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 52);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A09 = new byte[]{-91, -86, -78, -85, -89, -95, 2, 13, -2, 11, -6, 13, 2, 8, 7, -33, 2, 7, 2, 12, 1, -2, -3};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.MQ != com.facebook.ads.androidx.media3.common.util.ListenerSet$IterationFinishedEvent<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.MS != com.facebook.ads.androidx.media3.common.util.ListenerSet<T> */
    public MS(Looper looper, InterfaceC1754Lu interfaceC1754Lu, MQ<T> mq) {
        this(new CopyOnWriteArraySet(), looper, interfaceC1754Lu, mq);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.MQ != com.facebook.ads.androidx.media3.common.util.ListenerSet$IterationFinishedEvent<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.MS != com.facebook.ads.androidx.media3.common.util.ListenerSet<T> */
    private final MS<T> A00(Looper looper, InterfaceC1754Lu interfaceC1754Lu, MQ<T> mq) {
        return new MS<>(this.A08, looper, interfaceC1754Lu, mq);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.MS != com.facebook.ads.androidx.media3.common.util.ListenerSet<T> */
    private void A02() {
        if (!this.A01) {
            return;
        }
        AbstractC1747Ln.A08(Thread.currentThread() == this.A03.A93().getThread());
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.MR != com.facebook.ads.androidx.media3.common.util.ListenerSet$ListenerHolder<T> */
    public static /* synthetic */ void A04(CopyOnWriteArraySet copyOnWriteArraySet, int i, MP mp) {
        Iterator it = copyOnWriteArraySet.iterator();
        if (it.hasNext()) {
            it.next();
            throw new NullPointerException(A01(0, 6, 8));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.MR != com.facebook.ads.androidx.media3.common.util.ListenerSet$ListenerHolder<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.MS != com.facebook.ads.androidx.media3.common.util.ListenerSet<T> */
    public boolean A05(Message message) {
        Iterator<MR<T>> it = this.A08.iterator();
        if (it.hasNext()) {
            it.next();
            throw new NullPointerException(A01(6, 17, 101));
        }
        return true;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.MQ != com.facebook.ads.androidx.media3.common.util.ListenerSet$IterationFinishedEvent<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.MS != com.facebook.ads.androidx.media3.common.util.ListenerSet<T> */
    public final MS<T> A07(Looper looper, MQ<T> mq) {
        return A00(looper, this.A02, mq);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.MS != com.facebook.ads.androidx.media3.common.util.ListenerSet<T> */
    /* JADX WARN: Incorrect condition in loop: B:12:0x003d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A08() {
        /*
            r3 = this;
            r3.A02()
            java.util.ArrayDeque<java.lang.Runnable> r0 = r3.A07
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lc
            return
        Lc:
            com.facebook.ads.redexgen.X.MM r0 = r3.A03
            r2 = 0
            boolean r0 = r0.AAR(r2)
            if (r0 != 0) goto L20
            com.facebook.ads.redexgen.X.MM r1 = r3.A03
            com.facebook.ads.redexgen.X.MM r0 = r3.A03
            com.facebook.ads.redexgen.X.TV r0 = r0.ADX(r2)
            r1.AKV(r0)
        L20:
            java.util.ArrayDeque<java.lang.Runnable> r0 = r3.A06
            boolean r0 = r0.isEmpty()
            r2 = r0 ^ 1
            java.util.ArrayDeque<java.lang.Runnable> r1 = r3.A06
            java.util.ArrayDeque<java.lang.Runnable> r0 = r3.A07
            r1.addAll(r0)
            java.util.ArrayDeque<java.lang.Runnable> r0 = r3.A07
            r0.clear()
            if (r2 == 0) goto L37
            return
        L37:
            java.util.ArrayDeque<java.lang.Runnable> r0 = r3.A06
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L50
            java.util.ArrayDeque<java.lang.Runnable> r0 = r3.A06
            java.lang.Object r0 = r0.peekFirst()
            java.lang.Runnable r0 = (java.lang.Runnable) r0
            r0.run()
            java.util.ArrayDeque<java.lang.Runnable> r0 = r3.A06
            r0.removeFirst()
            goto L37
        L50:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.MS.A08():void");
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.MP != com.facebook.ads.androidx.media3.common.util.ListenerSet$Event<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.MR != com.facebook.ads.androidx.media3.common.util.ListenerSet$ListenerHolder<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.MS != com.facebook.ads.androidx.media3.common.util.ListenerSet<T> */
    public final void A09(final int i, final MP<T> mp) {
        A02();
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.A08);
        if (this.A00) {
            Iterator it = copyOnWriteArraySet.iterator();
            if (it.hasNext()) {
                it.next();
                throw new NullPointerException(A01(0, 6, 8));
            }
            return;
        }
        this.A07.add(new Runnable() { // from class: com.facebook.ads.redexgen.X.MN
            @Override // java.lang.Runnable
            public final void run() {
                MS.A04(copyOnWriteArraySet, i, mp);
            }
        });
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.MP != com.facebook.ads.androidx.media3.common.util.ListenerSet$Event<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.MS != com.facebook.ads.androidx.media3.common.util.ListenerSet<T> */
    public final void A0A(int i, MP<T> mp) {
        A09(i, mp);
        A08();
    }
}
