package com.ironsource;

import android.os.OutcomeReceiver;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.u1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3866u1 {

    /* JADX INFO: renamed from: com.ironsource.u1$a */
    public static final class a implements OutcomeReceiver {
        final /* synthetic */ Continuation<Unit> a;

        /* JADX WARN: Multi-variable type inference failed */
        public a(Continuation<? super Unit> continuation) {
            this.a = continuation;
        }

        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onError(Exception error) {
            Intrinsics.checkNotNullParameter(error, "error");
            Continuation<Unit> continuation = this.a;
            Result.Companion companion = Result.Companion;
            continuation.resumeWith(Result.m2760constructorimpl(ResultKt.createFailure(error)));
        }

        public void onResult(Object obj) {
            Continuation<Unit> continuation = this.a;
            Result.Companion companion = Result.Companion;
            continuation.resumeWith(Result.m2760constructorimpl(Unit.INSTANCE));
        }
    }

    public static final OutcomeReceiver a(Continuation<? super Unit> continuation) {
        Intrinsics.checkNotNullParameter(continuation, "<this>");
        return new a(continuation);
    }
}
