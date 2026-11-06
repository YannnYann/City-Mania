package com.unity3d.ads.core.data.datasource;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.DataStore;
import com.unity3d.ads.datastore.WebviewConfigurationStore;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: WebviewConfigurationDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class WebviewConfigurationDataSource {
    private final DataStore<WebviewConfigurationStore.WebViewConfigurationStore> webviewConfigurationStore;

    public WebviewConfigurationDataSource(DataStore<WebviewConfigurationStore.WebViewConfigurationStore> webviewConfigurationStore) {
        Intrinsics.checkNotNullParameter(webviewConfigurationStore, "webviewConfigurationStore");
        this.webviewConfigurationStore = webviewConfigurationStore;
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.datasource.WebviewConfigurationDataSource$get$2, reason: invalid class name */
    /* JADX INFO: compiled from: WebviewConfigurationDataSource.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.data.datasource.WebviewConfigurationDataSource$get$2", f = "WebviewConfigurationDataSource.kt", l = {15}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function3<FlowCollector<? super WebviewConfigurationStore.WebViewConfigurationStore>, Throwable, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        public AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(FlowCollector<? super WebviewConfigurationStore.WebViewConfigurationStore> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = flowCollector;
            anonymousClass2.L$1 = th;
            return anonymousClass2.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                FlowCollector flowCollector = (FlowCollector) this.L$0;
                Throwable th = (Throwable) this.L$1;
                if (th instanceof CorruptionException) {
                    WebviewConfigurationStore.WebViewConfigurationStore defaultInstance = WebviewConfigurationStore.WebViewConfigurationStore.getDefaultInstance();
                    Intrinsics.checkNotNullExpressionValue(defaultInstance, "getDefaultInstance(...)");
                    this.L$0 = null;
                    this.label = 1;
                    if (flowCollector.emit(defaultInstance, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    throw th;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public final Object get(Continuation<? super WebviewConfigurationStore.WebViewConfigurationStore> continuation) {
        return FlowKt.first(FlowKt.m2969catch(this.webviewConfigurationStore.getData(), new AnonymousClass2(null)), continuation);
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.datasource.WebviewConfigurationDataSource$set$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebviewConfigurationDataSource.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.data.datasource.WebviewConfigurationDataSource$set$2", f = "WebviewConfigurationDataSource.kt", l = {}, m = "invokeSuspend")
    public static final class C40062 extends SuspendLambda implements Function2<WebviewConfigurationStore.WebViewConfigurationStore, Continuation<? super WebviewConfigurationStore.WebViewConfigurationStore>, Object> {
        final /* synthetic */ WebviewConfigurationStore.WebViewConfigurationStore $data;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C40062(WebviewConfigurationStore.WebViewConfigurationStore webViewConfigurationStore, Continuation<? super C40062> continuation) {
            super(2, continuation);
            this.$data = webViewConfigurationStore;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C40062(this.$data, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(WebviewConfigurationStore.WebViewConfigurationStore webViewConfigurationStore, Continuation<? super WebviewConfigurationStore.WebViewConfigurationStore> continuation) {
            return ((C40062) create(webViewConfigurationStore, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return this.$data;
        }
    }

    public final Object set(WebviewConfigurationStore.WebViewConfigurationStore webViewConfigurationStore, Continuation<? super Unit> continuation) {
        Object objUpdateData = this.webviewConfigurationStore.updateData(new C40062(webViewConfigurationStore, null), continuation);
        return objUpdateData == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objUpdateData : Unit.INSTANCE;
    }
}
