package kotlin.sequences;

/* JADX INFO: compiled from: Sequences.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface DropTakeSequence<T> extends Sequence<T> {
    Sequence<T> drop(int i);

    Sequence<T> take(int i);
}
