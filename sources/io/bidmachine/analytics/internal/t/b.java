package io.bidmachine.analytics.internal.t;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Iterator;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.Sequence;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes4.dex */
public final class b {
    private final e a;
    private final f b;
    private final CoroutineScope c;
    private Job d;

    public interface a {
        b a();
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.t.b$b, reason: collision with other inner class name */
    public static final class C1147b extends SuspendLambda implements Function2 {
        int a;
        private /* synthetic */ Object b;
        final /* synthetic */ String d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1147b(String str, Continuation continuation) {
            super(2, continuation);
            this.d = str;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C1147b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C1147b c1147b = b.this.new C1147b(this.d, continuation);
            c1147b.b = obj;
            return c1147b;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            f fVar = b.this.b;
            b bVar = b.this;
            String str = this.d;
            synchronized (fVar) {
                try {
                    Result.Companion companion = Result.Companion;
                    InputStream inputStreamA = bVar.b.a(StringsKt__StringsKt.split$default((CharSequence) io.bidmachine.analytics.internal.I.g.b(str), new String[]{" "}, false, 0, 6, (Object) null));
                    Unit unit = null;
                    BufferedReader bufferedReader = inputStreamA != null ? new BufferedReader(new InputStreamReader(inputStreamA, Charsets.UTF_8), 8192) : null;
                    if (bufferedReader != null) {
                        try {
                            bVar.a(str, TextStreamsKt.lineSequence(bufferedReader));
                            Unit unit2 = Unit.INSTANCE;
                            CloseableKt.closeFinally(bufferedReader, null);
                        } finally {
                        }
                    }
                    if (bufferedReader != null) {
                        bufferedReader.close();
                        unit = Unit.INSTANCE;
                    }
                    Result.m2760constructorimpl(unit);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.Companion;
                    Result.m2760constructorimpl(ResultKt.createFailure(th));
                }
            }
            return Unit.INSTANCE;
        }
    }

    public b(e eVar, f fVar, CoroutineScope coroutineScope) {
        this.a = eVar;
        this.b = fVar;
        this.c = coroutineScope;
    }

    private final boolean b() {
        Job job = this.d;
        return job != null && job.isActive();
    }

    public final void a(String str) {
        Job job = this.d;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
        this.d = BuildersKt__Builders_commonKt.launch$default(this.c, null, null, new C1147b(str, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str, Sequence sequence) {
        Iterator it = sequence.iterator();
        while (b() && it.hasNext()) {
            this.a.a(str, (String) it.next());
        }
    }

    public final void a() {
        Job job = this.d;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
        this.d = null;
        synchronized (this.b) {
            try {
                Result.Companion companion = Result.Companion;
                this.b.a();
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
        }
    }
}
