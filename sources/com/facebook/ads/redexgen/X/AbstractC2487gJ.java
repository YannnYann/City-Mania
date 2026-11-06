package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.gJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2487gJ {

    @Nullable
    public static HandlerC2486gI A00;
    public static final AtomicBoolean A01 = new AtomicBoolean();

    public static HandlerC2486gI A00(C1642Hh c1642Hh) {
        if (A00 == null) {
            A00 = new HandlerC2486gI(c1642Hh);
        }
        return A00;
    }

    public static void A01(C1642Hh c1642Hh) {
        if (AbstractC2891my.A0M(c1642Hh)) {
            A03(c1642Hh);
        }
    }

    public static void A02(C1642Hh c1642Hh) {
        if (AbstractC2891my.A0L(c1642Hh)) {
            A03(c1642Hh);
        }
    }

    public static void A03(C1642Hh c1642Hh) {
        if (A01.compareAndSet(false, true)) {
            ExecutorC3104qV.A01.execute(new C1690Je(c1642Hh));
        }
    }
}
