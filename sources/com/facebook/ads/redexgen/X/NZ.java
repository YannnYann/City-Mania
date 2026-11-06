package com.facebook.ads.redexgen.X;

import android.system.ErrnoException;
import android.system.OsConstants;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class NZ {
    public static boolean A00(Throwable th) {
        return (th instanceof ErrnoException) && ((ErrnoException) th).errno == OsConstants.EACCES;
    }
}
