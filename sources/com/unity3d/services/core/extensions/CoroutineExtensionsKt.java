package com.unity3d.services.core.extensions;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: compiled from: CoroutineExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CoroutineExtensionsKt {
    private static final LinkedHashMap<Object, Deferred<?>> deferreds = new LinkedHashMap<Object, Deferred<?>>() { // from class: com.unity3d.services.core.extensions.CoroutineExtensionsKt$deferreds$1
        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsValue(Object obj) {
            if (obj instanceof Deferred) {
                return containsValue((Deferred<?>) obj);
            }
            return false;
        }

        public /* bridge */ boolean containsValue(Deferred<?> deferred) {
            return super.containsValue((Object) deferred);
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<Map.Entry<Object, Deferred<?>>> entrySet() {
            return getEntries();
        }

        public /* bridge */ Set<Map.Entry<Object, Deferred<?>>> getEntries() {
            return super.entrySet();
        }

        public /* bridge */ Set<Object> getKeys() {
            return super.keySet();
        }

        public /* bridge */ int getSize() {
            return super.size();
        }

        public /* bridge */ Collection<Deferred<?>> getValues() {
            return super.values();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<Object> keySet() {
            return getKeys();
        }

        @Override // java.util.HashMap, java.util.Map
        public final /* bridge */ boolean remove(Object obj, Object obj2) {
            if (obj != null && (obj2 instanceof Deferred)) {
                return remove(obj, (Deferred<?>) obj2);
            }
            return false;
        }

        public /* bridge */ boolean remove(Object obj, Deferred<?> deferred) {
            return super.remove(obj, (Object) deferred);
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ int size() {
            return getSize();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Collection<Deferred<?>> values() {
            return getValues();
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<Object, Deferred<?>> eldest) {
            Intrinsics.checkNotNullParameter(eldest, "eldest");
            return size() > 100;
        }
    };
    private static final Mutex mutex = MutexKt.Mutex$default(false, 1, null);

    /* JADX INFO: renamed from: com.unity3d.services.core.extensions.CoroutineExtensionsKt$runReturnSuspendCatching$1, reason: invalid class name */
    /* JADX INFO: compiled from: CoroutineExtensions.kt */
    @DebugMetadata(c = "com.unity3d.services.core.extensions.CoroutineExtensionsKt", f = "CoroutineExtensions.kt", l = {49}, m = "runReturnSuspendCatching")
    public static final class AnonymousClass1<R> extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object objRunReturnSuspendCatching = CoroutineExtensionsKt.runReturnSuspendCatching(null, this);
            return objRunReturnSuspendCatching == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objRunReturnSuspendCatching : Result.m2759boximpl(objRunReturnSuspendCatching);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.services.core.extensions.CoroutineExtensionsKt$runSuspendCatching$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CoroutineExtensions.kt */
    @DebugMetadata(c = "com.unity3d.services.core.extensions.CoroutineExtensionsKt", f = "CoroutineExtensions.kt", l = {15}, m = "runSuspendCatching")
    public static final class C40951<R> extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C40951(Continuation<? super C40951> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object objRunSuspendCatching = CoroutineExtensionsKt.runSuspendCatching(null, this);
            return objRunSuspendCatching == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objRunSuspendCatching : Result.m2759boximpl(objRunSuspendCatching);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <R> java.lang.Object runSuspendCatching(kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super R>, ? extends java.lang.Object> r4, kotlin.coroutines.Continuation<? super kotlin.Result<? extends R>> r5) {
        /*
            boolean r0 = r5 instanceof com.unity3d.services.core.extensions.CoroutineExtensionsKt.C40951
            if (r0 == 0) goto L13
            r0 = r5
            com.unity3d.services.core.extensions.CoroutineExtensionsKt$runSuspendCatching$1 r0 = (com.unity3d.services.core.extensions.CoroutineExtensionsKt.C40951) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.services.core.extensions.CoroutineExtensionsKt$runSuspendCatching$1 r0 = new com.unity3d.services.core.extensions.CoroutineExtensionsKt$runSuspendCatching$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L44 java.util.concurrent.CancellationException -> L50
            goto L3f
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.Result$Companion r5 = kotlin.Result.Companion     // Catch: java.lang.Throwable -> L44 java.util.concurrent.CancellationException -> L50
            r0.label = r3     // Catch: java.lang.Throwable -> L44 java.util.concurrent.CancellationException -> L50
            java.lang.Object r5 = r4.invoke(r0)     // Catch: java.lang.Throwable -> L44 java.util.concurrent.CancellationException -> L50
            if (r5 != r1) goto L3f
            return r1
        L3f:
            java.lang.Object r4 = kotlin.Result.m2760constructorimpl(r5)     // Catch: java.lang.Throwable -> L44 java.util.concurrent.CancellationException -> L50
            return r4
        L44:
            r4 = move-exception
            kotlin.Result$Companion r5 = kotlin.Result.Companion
            java.lang.Object r4 = kotlin.ResultKt.createFailure(r4)
            java.lang.Object r4 = kotlin.Result.m2760constructorimpl(r4)
            return r4
        L50:
            r4 = move-exception
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.extensions.CoroutineExtensionsKt.runSuspendCatching(kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final <R> Object runReturnSuspendCatching$$forInline(Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super Result<? extends R>> continuation) {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(function1.invoke(continuation));
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m2766isSuccessimpl(objM2760constructorimpl)) {
            return Result.m2760constructorimpl(objM2760constructorimpl);
        }
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        return thM2763exceptionOrNullimpl != null ? Result.m2760constructorimpl(ResultKt.createFailure(thM2763exceptionOrNullimpl)) : objM2760constructorimpl;
    }

    private static final <R> Object runSuspendCatching$$forInline(Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super Result<? extends R>> continuation) {
        try {
            Result.Companion companion = Result.Companion;
            return Result.m2760constructorimpl(function1.invoke(continuation));
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <R> java.lang.Object runReturnSuspendCatching(kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super R>, ? extends java.lang.Object> r4, kotlin.coroutines.Continuation<? super kotlin.Result<? extends R>> r5) {
        /*
            boolean r0 = r5 instanceof com.unity3d.services.core.extensions.CoroutineExtensionsKt.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r5
            com.unity3d.services.core.extensions.CoroutineExtensionsKt$runReturnSuspendCatching$1 r0 = (com.unity3d.services.core.extensions.CoroutineExtensionsKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.services.core.extensions.CoroutineExtensionsKt$runReturnSuspendCatching$1 r0 = new com.unity3d.services.core.extensions.CoroutineExtensionsKt$runReturnSuspendCatching$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L44 java.util.concurrent.CancellationException -> L69
            goto L3f
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.Result$Companion r5 = kotlin.Result.Companion     // Catch: java.lang.Throwable -> L44 java.util.concurrent.CancellationException -> L69
            r0.label = r3     // Catch: java.lang.Throwable -> L44 java.util.concurrent.CancellationException -> L69
            java.lang.Object r5 = r4.invoke(r0)     // Catch: java.lang.Throwable -> L44 java.util.concurrent.CancellationException -> L69
            if (r5 != r1) goto L3f
            return r1
        L3f:
            java.lang.Object r4 = kotlin.Result.m2760constructorimpl(r5)     // Catch: java.lang.Throwable -> L44 java.util.concurrent.CancellationException -> L69
            goto L4f
        L44:
            r4 = move-exception
            kotlin.Result$Companion r5 = kotlin.Result.Companion
            java.lang.Object r4 = kotlin.ResultKt.createFailure(r4)
            java.lang.Object r4 = kotlin.Result.m2760constructorimpl(r4)
        L4f:
            boolean r5 = kotlin.Result.m2766isSuccessimpl(r4)
            if (r5 == 0) goto L5a
            java.lang.Object r4 = kotlin.Result.m2760constructorimpl(r4)
            return r4
        L5a:
            java.lang.Throwable r5 = kotlin.Result.m2763exceptionOrNullimpl(r4)
            if (r5 == 0) goto L68
            java.lang.Object r4 = kotlin.ResultKt.createFailure(r5)
            java.lang.Object r4 = kotlin.Result.m2760constructorimpl(r4)
        L68:
            return r4
        L69:
            r4 = move-exception
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.extensions.CoroutineExtensionsKt.runReturnSuspendCatching(kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final LinkedHashMap<Object, Deferred<?>> getDeferreds() {
        return deferreds;
    }

    public static final Mutex getMutex() {
        return mutex;
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.unity3d.services.core.extensions.CoroutineExtensionsKt$memoize$2, reason: invalid class name */
    /* JADX INFO: compiled from: CoroutineExtensions.kt */
    @DebugMetadata(c = "com.unity3d.services.core.extensions.CoroutineExtensionsKt$memoize$2", f = "CoroutineExtensions.kt", l = {53, 45}, m = "invokeSuspend")
    public static final class AnonymousClass2<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
        final /* synthetic */ Function1<Continuation<? super T>, Object> $action;
        final /* synthetic */ Object $key;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Object obj, Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$key = obj;
            this.$action = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$key, this.$action, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineScope coroutineScope;
            Mutex mutex;
            Function1<Continuation<? super T>, Object> function1;
            Object obj2;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    coroutineScope = (CoroutineScope) this.L$0;
                    mutex = CoroutineExtensionsKt.getMutex();
                    Object obj3 = this.$key;
                    function1 = this.$action;
                    this.L$0 = coroutineScope;
                    this.L$1 = mutex;
                    this.L$2 = obj3;
                    this.L$3 = function1;
                    this.label = 1;
                    if (mutex.lock(null, this) != coroutine_suspended) {
                        obj2 = obj3;
                    }
                }
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                function1 = (Function1) this.L$3;
                obj2 = this.L$2;
                mutex = (Mutex) this.L$1;
                coroutineScope = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
                LinkedHashMap<Object, Deferred<?>> deferreds = CoroutineExtensionsKt.getDeferreds();
                Deferred<?> deferredAsync$default = deferreds.get(obj2);
                if (deferredAsync$default == null) {
                    deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new CoroutineExtensionsKt$memoize$2$deferred$1$1$1(function1, null), 3, null);
                    deferreds.put(obj2, deferredAsync$default);
                }
                Deferred<?> deferred = deferredAsync$default;
                mutex.unlock(null);
                this.L$0 = null;
                this.L$1 = null;
                this.L$2 = null;
                this.L$3 = null;
                this.label = 2;
                Object objAwait = deferred.await(this);
                return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
            } catch (Throwable th) {
                mutex.unlock(null);
                throw th;
            }
        }

        public final Object invokeSuspend$$forInline(Object obj) {
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            InlineMarker.mark(10);
            Mutex mutex = CoroutineExtensionsKt.getMutex();
            Object obj2 = this.$key;
            Function1<Continuation<? super T>, Object> function1 = this.$action;
            InlineMarker.mark(0);
            mutex.lock(null, this);
            InlineMarker.mark(1);
            try {
                LinkedHashMap<Object, Deferred<?>> deferreds = CoroutineExtensionsKt.getDeferreds();
                Deferred<?> deferredAsync$default = deferreds.get(obj2);
                if (deferredAsync$default == null) {
                    deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new CoroutineExtensionsKt$memoize$2$deferred$1$1$1(function1, null), 3, null);
                    deferreds.put(obj2, deferredAsync$default);
                }
                Deferred<?> deferred = deferredAsync$default;
                mutex.unlock(null);
                InlineMarker.mark(0);
                Object objAwait = deferred.await(this);
                InlineMarker.mark(1);
                return objAwait;
            } catch (Throwable th) {
                mutex.unlock(null);
                throw th;
            }
        }
    }

    public static final <T> Object memoize(Object obj, Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> continuation) {
        return CoroutineScopeKt.coroutineScope(new AnonymousClass2(obj, function1, null), continuation);
    }

    private static final <T> Object memoize$$forInline(Object obj, Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> continuation) {
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(obj, function1, null);
        InlineMarker.mark(0);
        Object objCoroutineScope = CoroutineScopeKt.coroutineScope(anonymousClass2, continuation);
        InlineMarker.mark(1);
        return objCoroutineScope;
    }
}
