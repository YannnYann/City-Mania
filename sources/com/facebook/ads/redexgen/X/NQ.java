package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class NQ extends IOException {
    public static final long serialVersionUID = 1;
    public final int A00;

    public NQ(int i) {
        this.A00 = i;
    }

    public NQ(String str, int i) {
        super(str);
        this.A00 = i;
    }

    public NQ(String str, Throwable th, int i) {
        super(str, th);
        this.A00 = i;
    }

    public NQ(Throwable th, int i) {
        super(th);
        this.A00 = i;
    }

    public static boolean A02(IOException iOException) {
        for (Throwable cause = iOException; cause != null; cause = cause.getCause()) {
            if ((cause instanceof NQ) && ((NQ) cause).A00 == 2008) {
                return true;
            }
        }
        return false;
    }
}
