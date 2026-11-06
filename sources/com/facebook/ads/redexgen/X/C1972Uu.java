package com.facebook.ads.redexgen.X;

import android.os.Handler;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Uu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1972Uu {
    public static String[] A04 = {"0vX", "6NY9hrINV0Z5FlYuF4FI3UvdvbDoQp5r", "EDbrjiPnPeOJCpHUSCdz4kDKdyaM7EAX", "SRvChzoAelcCw1", "1EOpazjw38zi", "4Y8ngmqa57FSPe", "1cMpp1AjuI7QRMLTBGOGdi01Kt1oNo6X", "RzlHtD1JWpQymBpZHQSfPfdlRM"};
    public final int A00;
    public final C1887Rk A01;
    public final long A02;
    public final CopyOnWriteArrayList<C1971Ut> A03;

    public C1972Uu() {
        this(new CopyOnWriteArrayList(), 0, null, 0L);
    }

    public C1972Uu(CopyOnWriteArrayList<C1971Ut> copyOnWriteArrayList, int i, C1887Rk c1887Rk, long j) {
        this.A03 = copyOnWriteArrayList;
        this.A00 = i;
        this.A01 = c1887Rk;
        this.A02 = j;
    }

    private long A00(long j) {
        long jA0P = N1.A0P(j);
        if (jA0P == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long mediaTimeMs = this.A02;
        return mediaTimeMs + jA0P;
    }

    @MetaExoPlayerCustomization
    private final void A01(final Uc uc, final C1956Ue c1956Ue, final int i) {
        for (C1971Ut c1971Ut : this.A03) {
            final InterfaceC1973Uv interfaceC1973Uv = c1971Ut.A01;
            N1.A1B(c1971Ut.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.Uq
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }

    public final C1972Uu A02(int i, C1887Rk c1887Rk, long j) {
        return new C1972Uu(this.A03, i, c1887Rk, j);
    }

    public final void A03(int i, VC vc, int i2, Object obj, long j) {
        A0C(new C1956Ue(1, i, vc, i2, obj, A00(j), -9223372036854775807L));
    }

    public final void A04(Handler handler, InterfaceC1973Uv interfaceC1973Uv) {
        AbstractC1747Ln.A01(handler);
        AbstractC1747Ln.A01(interfaceC1973Uv);
        this.A03.add(new C1971Ut(handler, interfaceC1973Uv));
    }

    public final void A05(Uc uc, int i, int i2, VC vc, int i3, Object obj, long j, long j2) {
        A09(uc, new C1956Ue(i, i2, vc, i3, obj, A00(j), A00(j2)));
    }

    @MetaExoPlayerCustomization
    public final void A06(Uc uc, int i, int i2, VC vc, int i3, Object obj, long j, long j2, int i4) {
        A01(uc, new C1956Ue(i, i2, vc, i3, obj, A00(j), A00(j2)), i4);
    }

    public final void A07(Uc uc, int i, int i2, VC vc, int i3, Object obj, long j, long j2, IOException iOException, boolean z) {
        A0A(uc, new C1956Ue(i, i2, vc, i3, obj, A00(j), A00(j2)), iOException, z);
    }

    public final void A08(@MetaExoPlayerCustomization Uc uc, @MetaExoPlayerCustomization int i, int i2, VC vc, int i3, Object obj, long j, long j2, Object obj2, Object obj3) {
        A0B(uc, new C1956Ue(i, i2, vc, i3, obj, A00(j), A00(j2)), obj2, obj3);
    }

    public final void A09(final Uc uc, final C1956Ue c1956Ue) {
        for (C1971Ut c1971Ut : this.A03) {
            final InterfaceC1973Uv listener = c1971Ut.A01;
            N1.A1B(c1971Ut.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.Ur
                @Override // java.lang.Runnable
                public final void run() {
                    this.A02.A0E(listener, uc, c1956Ue);
                }
            });
        }
    }

    public final void A0A(final Uc uc, final C1956Ue c1956Ue, final IOException iOException, final boolean z) {
        Iterator<C1971Ut> it = this.A03.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A04[7].length() == 31) {
                throw new RuntimeException();
            }
            A04[2] = "oz6jN72mrVEJ84jwVsa80JdmUq2TtNhX";
            if (zHasNext) {
                C1971Ut next = it.next();
                final InterfaceC1973Uv interfaceC1973Uv = next.A01;
                N1.A1B(next.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.Um
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.A02.A0F(interfaceC1973Uv, uc, c1956Ue, iOException, z);
                    }
                });
            } else {
                return;
            }
        }
    }

    public final void A0B(@MetaExoPlayerCustomization final Uc uc, @MetaExoPlayerCustomization final C1956Ue c1956Ue, final Object obj, final Object obj2) {
        for (C1971Ut c1971Ut : this.A03) {
            final InterfaceC1973Uv interfaceC1973Uv = c1971Ut.A01;
            N1.A1B(c1971Ut.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.Un
                @Override // java.lang.Runnable
                public final void run() {
                    this.A02.A0G(interfaceC1973Uv, uc, c1956Ue, obj, obj2);
                }
            });
        }
    }

    public final void A0C(final C1956Ue c1956Ue) {
        Iterator<C1971Ut> it = this.A03.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A04[4].length() == 10) {
                throw new RuntimeException();
            }
            String[] strArr = A04;
            strArr[5] = "BPCliZ27Ak36vG";
            strArr[3] = "8XLyG4rB5BmC3z";
            if (zHasNext) {
                C1971Ut next = it.next();
                final InterfaceC1973Uv listener = next.A01;
                N1.A1B(next.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.Uo
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.A01.A0H(listener, c1956Ue);
                    }
                });
            } else {
                return;
            }
        }
    }

    public final void A0D(InterfaceC1973Uv interfaceC1973Uv) {
        for (C1971Ut listenerAndHandler : this.A03) {
            if (listenerAndHandler.A01 == interfaceC1973Uv) {
                this.A03.remove(listenerAndHandler);
            }
        }
    }

    public final /* synthetic */ void A0E(InterfaceC1973Uv interfaceC1973Uv, Uc uc, C1956Ue c1956Ue) {
        interfaceC1973Uv.AFe(this.A00, this.A01, uc, c1956Ue);
    }

    public final /* synthetic */ void A0F(InterfaceC1973Uv interfaceC1973Uv, Uc uc, C1956Ue c1956Ue, IOException iOException, boolean z) {
        interfaceC1973Uv.AFj(this.A00, this.A01, uc, c1956Ue, iOException, z);
    }

    public final /* synthetic */ void A0G(InterfaceC1973Uv interfaceC1973Uv, Uc uc, C1956Ue c1956Ue, Object obj, Object obj2) {
        interfaceC1973Uv.AFg(this.A00, this.A01, uc, c1956Ue, obj, obj2);
    }

    public final /* synthetic */ void A0H(InterfaceC1973Uv interfaceC1973Uv, C1956Ue c1956Ue) {
        interfaceC1973Uv.AEm(this.A00, this.A01, c1956Ue);
    }
}
