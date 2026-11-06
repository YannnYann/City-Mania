package com.facebook.ads.redexgen.X;

import java.util.ArrayDeque;
import java.util.PriorityQueue;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.89, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AnonymousClass89 implements InterfaceC1821Ok {
    public static String[] A06 = {"OD0VIyZTo4K3f6MExwpvLo", "A", "vwaHqPJQvgtDPtdCZzyRfWIQcT0p7AkL", "ZZatRx7", "w", "ThhWYZxDHVSLw9Te4TzTvbAOiOTgLGag", "u50WDGHoXr3dyy5IhstByo4KE7y3", "t"};
    public long A00;
    public long A01;
    public AnonymousClass46 A02;
    public final ArrayDeque<AnonymousClass46> A03 = new ArrayDeque<>();
    public final ArrayDeque<C8A> A04;
    public final PriorityQueue<AnonymousClass46> A05;

    public abstract C1818Oh A0Z();

    public abstract void A0b(C8B c8b);

    public abstract boolean A0d();

    public AnonymousClass89() {
        for (int i = 0; i < 10; i++) {
            this.A03.add(new AnonymousClass46());
        }
        this.A04 = new ArrayDeque<>();
        for (int i2 = 0; i2 < 2; i2++) {
            ArrayDeque<C8A> arrayDeque = this.A04;
            final InterfaceC1804Nt interfaceC1804Nt = new InterfaceC1804Nt() { // from class: com.facebook.ads.redexgen.X.Oi
                @Override // com.facebook.ads.redexgen.X.InterfaceC1804Nt
                public final void AIx(T1 t1) {
                    this.A00.A0c((AnonymousClass45) t1);
                }
            };
            arrayDeque.add(new C8A(interfaceC1804Nt) { // from class: com.facebook.ads.redexgen.X.45
                public InterfaceC1804Nt<AnonymousClass45> A00;

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Nt != com.facebook.ads.androidx.media3.decoder.DecoderOutputBuffer$Owner<com.facebook.ads.androidx.media3.extractor.text.cea.CeaDecoder$CeaOutputBuffer> */
                {
                    this.A00 = interfaceC1804Nt;
                }

                @Override // com.facebook.ads.redexgen.X.C8A, com.facebook.ads.redexgen.X.T1
                public final void A0B() {
                    this.A00.AIx(this);
                }
            });
        }
        this.A05 = new PriorityQueue<>();
    }

    private void A0U(AnonymousClass46 anonymousClass46) {
        anonymousClass46.A0A();
        this.A03.add(anonymousClass46);
    }

    public final long A0V() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1800Np
    /* JADX INFO: renamed from: A0W, reason: merged with bridge method [inline-methods] */
    public C8B A6Q() throws C1820Oj {
        AbstractC1747Ln.A08(this.A02 == null);
        if (this.A03.isEmpty()) {
            return null;
        }
        this.A02 = this.A03.pollFirst();
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1800Np
    /* JADX INFO: renamed from: A0X */
    public C8A A6S() throws C1820Oj {
        if (this.A04.isEmpty()) {
            return null;
        }
        while (!this.A05.isEmpty() && ((AnonymousClass46) N1.A0f(this.A05.peek())).A01 <= this.A00) {
            AnonymousClass46 anonymousClass46 = (AnonymousClass46) N1.A0f(this.A05.poll());
            if (anonymousClass46.A05()) {
                C8A outputBuffer = (C8A) N1.A0f(this.A04.pollFirst());
                outputBuffer.A00(4);
                A0U(anonymousClass46);
                return outputBuffer;
            }
            A0b(anonymousClass46);
            if (A0d()) {
                C1818Oh c1818OhA0Z = A0Z();
                C8A c8a = (C8A) N1.A0f(this.A04.pollFirst());
                c8a.A0C(anonymousClass46.A01, c1818OhA0Z, Long.MAX_VALUE);
                A0U(anonymousClass46);
                return c8a;
            }
            A0U(anonymousClass46);
        }
        return null;
    }

    public final C8A A0Y() {
        return this.A04.pollFirst();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1800Np
    /* JADX INFO: renamed from: A0a, reason: merged with bridge method [inline-methods] */
    public void AIW(C8B c8b) throws C1820Oj {
        AbstractC1747Ln.A07(c8b == this.A02);
        AnonymousClass46 anonymousClass46 = (AnonymousClass46) c8b;
        if (anonymousClass46.A04()) {
            A0U(anonymousClass46);
        } else {
            long j = this.A01;
            String[] strArr = A06;
            if (strArr[7].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A06;
            strArr2[4] = "e";
            strArr2[0] = "BEIB0xYeJ0AuSTdOyd3inH";
            this.A01 = 1 + j;
            anonymousClass46.A00 = j;
            this.A05.add(anonymousClass46);
        }
        this.A02 = null;
    }

    public final void A0c(C8A c8a) {
        c8a.A0A();
        this.A04.add(c8a);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1800Np
    public void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1821Ok
    public void AKz(long j) {
        this.A00 = j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1800Np
    public void flush() {
        this.A01 = 0L;
        this.A00 = 0L;
        while (!this.A05.isEmpty()) {
            PriorityQueue<AnonymousClass46> priorityQueue = this.A05;
            if (A06[3].length() != 7) {
                throw new RuntimeException();
            }
            String[] strArr = A06;
            strArr[7] = "k";
            strArr[1] = "q";
            A0U((AnonymousClass46) N1.A0f(priorityQueue.poll()));
        }
        if (this.A02 != null) {
            A0U(this.A02);
            this.A02 = null;
        }
    }
}
