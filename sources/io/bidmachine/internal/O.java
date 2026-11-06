package io.bidmachine.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class O {
    public final boolean a;

    public O(boolean z) {
        this.a = z;
    }

    public final boolean a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof O) && this.a == ((O) obj).a;
    }

    public int hashCode() {
        boolean z = this.a;
        if (z) {
            return 1;
        }
        return z ? 1 : 0;
    }

    public String toString() {
        return "TcfSignals(purpose1Consent=" + this.a + ')';
    }
}
