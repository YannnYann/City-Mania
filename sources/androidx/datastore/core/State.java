package androidx.datastore.core;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: State.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class State<T> {
    public final int version;

    public /* synthetic */ State(int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(i);
    }

    public State(int i) {
        this.version = i;
    }

    public final int getVersion() {
        return this.version;
    }
}
