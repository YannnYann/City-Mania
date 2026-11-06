package androidx.datastore.core;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;

/* JADX INFO: compiled from: Message.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class Message<T> {
    public /* synthetic */ Message(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public Message() {
    }

    /* JADX INFO: compiled from: Message.kt */
    public static final class Update<T> extends Message<T> {
        public final CompletableDeferred<T> ack;
        public final CoroutineContext callerContext;
        public final State<T> lastState;
        public final Function2<T, Continuation<? super T>, Object> transform;

        public final Function2<T, Continuation<? super T>, Object> getTransform() {
            return this.transform;
        }

        public final CompletableDeferred<T> getAck() {
            return this.ack;
        }

        public State<T> getLastState() {
            return this.lastState;
        }

        public final CoroutineContext getCallerContext() {
            return this.callerContext;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public Update(Function2<? super T, ? super Continuation<? super T>, ? extends Object> transform, CompletableDeferred<T> ack, State<T> state, CoroutineContext callerContext) {
            super(null);
            Intrinsics.checkNotNullParameter(transform, "transform");
            Intrinsics.checkNotNullParameter(ack, "ack");
            Intrinsics.checkNotNullParameter(callerContext, "callerContext");
            this.transform = transform;
            this.ack = ack;
            this.lastState = state;
            this.callerContext = callerContext;
        }
    }
}
