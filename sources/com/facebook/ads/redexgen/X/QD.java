package com.facebook.ads.redexgen.X;

import android.media.metrics.LogSessionId;
import java.util.Objects;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class QD {
    public static final QD A03;
    public final String A00;
    public final QC A01;
    public final Object A02;

    static {
        QD qd;
        if (N1.A02 < 31) {
            qd = new QD("");
        } else {
            qd = new QD(QC.A01, "");
        }
        A03 = qd;
    }

    public QD(QC qc, String str) {
        this.A01 = qc;
        this.A00 = str;
        this.A02 = new Object();
    }

    public QD(String str) {
        AbstractC1747Ln.A08(N1.A02 < 31);
        this.A00 = str;
        this.A01 = null;
        this.A02 = new Object();
    }

    public final LogSessionId A00() {
        return ((QC) AbstractC1747Ln.A01(this.A01)).A00;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QD)) {
            return false;
        }
        QD qd = (QD) obj;
        if (Objects.equals(this.A00, qd.A00) && Objects.equals(this.A01, qd.A01) && Objects.equals(this.A02, qd.A02)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.A00, this.A01, this.A02);
    }
}
