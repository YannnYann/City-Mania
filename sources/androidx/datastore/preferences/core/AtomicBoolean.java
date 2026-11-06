package androidx.datastore.preferences.core;

/* JADX INFO: compiled from: Actual.jvmAndroid.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AtomicBoolean {
    public final java.util.concurrent.atomic.AtomicBoolean delegate;

    public AtomicBoolean(boolean z) {
        this.delegate = new java.util.concurrent.atomic.AtomicBoolean(z);
    }

    public final void set(boolean z) {
        this.delegate.set(z);
    }

    public final boolean get() {
        return this.delegate.get();
    }
}
