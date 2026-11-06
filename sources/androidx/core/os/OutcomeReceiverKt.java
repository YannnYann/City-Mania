package androidx.core.os;

import android.os.OutcomeReceiver;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: OutcomeReceiver.kt */
/* JADX INFO: loaded from: classes.dex */
public final class OutcomeReceiverKt {
    public static final <R, E extends Throwable> OutcomeReceiver asOutcomeReceiver(Continuation<? super R> continuation) {
        return OutcomeReceiverKt$$ExternalSyntheticApiModelOutline0.m(new ContinuationOutcomeReceiver(continuation));
    }
}
