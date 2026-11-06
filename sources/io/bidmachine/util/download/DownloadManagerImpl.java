package io.bidmachine.util.download;

import android.content.Context;
import io.bidmachine.util.SdkDispatchers;
import io.bidmachine.util.download.DownloadManager;
import io.bidmachine.util.download.DownloadManagerImpl;
import io.bidmachine.util.file.FileUtilsKt;
import io.bidmachine.util.log.EmptyLoggerInstance;
import io.bidmachine.util.log.LoggerInstance;
import io.bidmachine.util.network.NetworkError;
import io.bidmachine.util.network.NetworkRequest;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.time.Duration;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: DownloadManagerImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DownloadManagerImpl implements DownloadManager {
    public static final Companion Companion = new Companion(null);
    public final Map<DownloadKey, DownloadManager.DownloadTask> activeDownloads;
    public final Object activeDownloadsLock;
    public final Context applicationContext;
    public final Deferred<Unit> cleanupDeferred;
    public final Lazy contentFetcher$delegate;
    public final Function3<Context, File, LoggerInstance, ContentFetcher> contentFetcherBuilder;
    public final SdkDispatchers dispatchers;
    public final LoggerInstance logger;
    public final Lazy scope$delegate;
    public final File tempDir;

    /* JADX INFO: compiled from: DownloadManagerImpl.kt */
    public interface ContentFetcher {
        /* JADX INFO: renamed from: get-WS52aQU, reason: not valid java name */
        Object mo2743getWS52aQU(String str, File file, Duration duration, Continuation<? super Result<DownloadManager.DownloadData>> continuation);

        /* JADX INFO: renamed from: head-2Ivn440, reason: not valid java name */
        Object mo2744head2Ivn440(String str, Duration duration, Continuation<? super Result<DownloadManager.CallData>> continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DownloadManagerImpl(Context context, File tempDir, Function3<? super Context, ? super File, ? super LoggerInstance, ? extends ContentFetcher> contentFetcherBuilder, SdkDispatchers dispatchers, LoggerInstance logger) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(tempDir, "tempDir");
        Intrinsics.checkNotNullParameter(contentFetcherBuilder, "contentFetcherBuilder");
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.tempDir = tempDir;
        this.contentFetcherBuilder = contentFetcherBuilder;
        this.dispatchers = dispatchers;
        this.logger = logger;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.applicationContext = applicationContext;
        this.scope$delegate = LazyKt__LazyJVMKt.lazy(new Function0<CoroutineScope>() { // from class: io.bidmachine.util.download.DownloadManagerImpl$scope$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final CoroutineScope invoke() {
                return CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(this.this$0.dispatchers.getIo()));
            }
        });
        this.contentFetcher$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ContentFetcher>() { // from class: io.bidmachine.util.download.DownloadManagerImpl$contentFetcher$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DownloadManagerImpl.ContentFetcher invoke() {
                return (DownloadManagerImpl.ContentFetcher) this.this$0.contentFetcherBuilder.invoke(this.this$0.applicationContext, this.this$0.tempDir, this.this$0.logger);
            }
        });
        this.activeDownloadsLock = new Object();
        this.activeDownloads = new LinkedHashMap();
        this.cleanupDeferred = cleanupNotCompletedDownloads();
    }

    public /* synthetic */ DownloadManagerImpl(Context context, File file, Function3 function3, SdkDispatchers sdkDispatchers, LoggerInstance loggerInstance, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, file, (i & 4) != 0 ? new Function3<Context, File, LoggerInstance, NetworkContentFetcher>() { // from class: io.bidmachine.util.download.DownloadManagerImpl.1
            @Override // kotlin.jvm.functions.Function3
            public final NetworkContentFetcher invoke(Context context2, File tempDownloadDir, LoggerInstance logger) {
                Intrinsics.checkNotNullParameter(context2, "context");
                Intrinsics.checkNotNullParameter(tempDownloadDir, "tempDownloadDir");
                Intrinsics.checkNotNullParameter(logger, "logger");
                return new NetworkContentFetcher(context2, tempDownloadDir, logger);
            }
        } : function3, (i & 8) != 0 ? SdkDispatchers.Companion.getDefault() : sdkDispatchers, (i & 16) != 0 ? EmptyLoggerInstance.Companion.getINSTANCE() : loggerInstance);
    }

    public final CoroutineScope getScope() {
        return (CoroutineScope) this.scope$delegate.getValue();
    }

    public final ContentFetcher getContentFetcher() {
        return (ContentFetcher) this.contentFetcher$delegate.getValue();
    }

    /* JADX INFO: renamed from: io.bidmachine.util.download.DownloadManagerImpl$cleanupNotCompletedDownloads$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DownloadManagerImpl.kt */
    @DebugMetadata(c = "io.bidmachine.util.download.DownloadManagerImpl$cleanupNotCompletedDownloads$1", f = "DownloadManagerImpl.kt", l = {}, m = "invokeSuspend")
    public static final class C42701 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public int label;

        public C42701(Continuation<? super C42701> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DownloadManagerImpl.this.new C42701(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C42701) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            final Ref$IntRef ref$IntRef = new Ref$IntRef();
            FileUtilsKt.deleteChildFiles(DownloadManagerImpl.this.tempDir, new Function1<File, Boolean>() { // from class: io.bidmachine.util.download.DownloadManagerImpl.cleanupNotCompletedDownloads.1.1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(File it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    boolean zIsFile = it.isFile();
                    if (zIsFile) {
                        ref$IntRef.element++;
                    }
                    return Boolean.valueOf(zIsFile);
                }
            });
            DownloadManagerImpl.this.logger.d("DownloadManager", new Function0<String>() { // from class: io.bidmachine.util.download.DownloadManagerImpl.cleanupNotCompletedDownloads.1.2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Cleanup unused files completed, removed count: " + ref$IntRef.element;
                }
            });
            return Unit.INSTANCE;
        }
    }

    public final Deferred<Unit> cleanupNotCompletedDownloads() {
        return BuildersKt__Builders_commonKt.async$default(getScope(), this.dispatchers.getIo(), null, new C42701(null), 2, null);
    }

    public final Object ensureCleanupCompleted$bidmachine_android_sdk_bd_3_8_0(Continuation<? super Unit> continuation) {
        Object objAwait = this.cleanupDeferred.await(continuation);
        return objAwait == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwait : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // io.bidmachine.util.download.DownloadManager
    /* JADX INFO: renamed from: getHeadCallData-2Ivn440 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object mo2739getHeadCallData2Ivn440(java.lang.String r6, kotlin.time.Duration r7, kotlin.coroutines.Continuation<? super kotlin.Result<io.bidmachine.util.download.DownloadManager.CallData>> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof io.bidmachine.util.download.DownloadManagerImpl$getHeadCallData$1
            if (r0 == 0) goto L13
            r0 = r8
            io.bidmachine.util.download.DownloadManagerImpl$getHeadCallData$1 r0 = (io.bidmachine.util.download.DownloadManagerImpl$getHeadCallData$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.bidmachine.util.download.DownloadManagerImpl$getHeadCallData$1 r0 = new io.bidmachine.util.download.DownloadManagerImpl$getHeadCallData$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r8)
            goto L49
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r8)
            io.bidmachine.util.SdkDispatchers r8 = r5.dispatchers
            kotlinx.coroutines.CoroutineDispatcher r8 = r8.getIo()
            io.bidmachine.util.download.DownloadManagerImpl$getHeadCallData$2 r2 = new io.bidmachine.util.download.DownloadManagerImpl$getHeadCallData$2
            r4 = 0
            r2.<init>(r5, r6, r7, r4)
            r0.label = r3
            java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r8, r2, r0)
            if (r8 != r1) goto L49
            return r1
        L49:
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r6 = r8.m2768unboximpl()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.download.DownloadManagerImpl.mo2739getHeadCallData2Ivn440(java.lang.String, kotlin.time.Duration, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // io.bidmachine.util.download.DownloadManager
    public DownloadManager.DownloadTask getActiveDownloadTask(String url, File outputFile) {
        DownloadManager.DownloadTask downloadTask;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(outputFile, "outputFile");
        synchronized (this.activeDownloadsLock) {
            downloadTask = this.activeDownloads.get(createDownloadKey(url, outputFile));
        }
        return downloadTask;
    }

    @Override // io.bidmachine.util.download.DownloadManager
    /* JADX INFO: renamed from: download-moChb0s */
    public DownloadManager.DownloadTask mo2738downloadmoChb0s(final String url, File outputFile, Duration duration) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(outputFile, "outputFile");
        synchronized (this.activeDownloadsLock) {
            DownloadKey downloadKeyCreateDownloadKey = createDownloadKey(url, outputFile);
            DownloadManager.DownloadTask downloadTask = this.activeDownloads.get(downloadKeyCreateDownloadKey);
            if (downloadTask != null) {
                this.logger.d("DownloadManager", new Function0<String>() { // from class: io.bidmachine.util.download.DownloadManagerImpl$download$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final String invoke() {
                        return "Active download detected: " + url;
                    }
                });
                return downloadTask;
            }
            DownloadManager.DownloadTask downloadTask2 = new DownloadManager.DownloadTask(url, m2742runDownloadQ2Q30fc(downloadKeyCreateDownloadKey, url, outputFile, duration));
            this.activeDownloads.put(downloadKeyCreateDownloadKey, downloadTask2);
            return downloadTask2;
        }
    }

    /* JADX INFO: renamed from: runDownload-Q2Q30fc, reason: not valid java name */
    public final Deferred<Result<DownloadManager.DownloadData>> m2742runDownloadQ2Q30fc(DownloadKey downloadKey, String str, File file, Duration duration) {
        return BuildersKt__Builders_commonKt.async$default(getScope(), null, null, new DownloadManagerImpl$runDownload$1(this, str, file, duration, downloadKey, null), 3, null);
    }

    public final DownloadKey createDownloadKey(String str, File file) {
        String path = file.getPath();
        Intrinsics.checkNotNullExpressionValue(path, "outputFile.path");
        return new DownloadKey(str, path);
    }

    /* JADX INFO: compiled from: DownloadManagerImpl.kt */
    public static final class NetworkContentFetcher implements ContentFetcher {
        public final Context applicationContext;
        public final LoggerInstance logger;
        public final File tempDownloadDir;

        public NetworkContentFetcher(Context context, File tempDownloadDir, LoggerInstance logger) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(tempDownloadDir, "tempDownloadDir");
            Intrinsics.checkNotNullParameter(logger, "logger");
            this.tempDownloadDir = tempDownloadDir;
            this.logger = logger;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            this.applicationContext = applicationContext;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        @Override // io.bidmachine.util.download.DownloadManagerImpl.ContentFetcher
        /* JADX INFO: renamed from: get-WS52aQU */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Object mo2743getWS52aQU(final java.lang.String r8, java.io.File r9, kotlin.time.Duration r10, kotlin.coroutines.Continuation<? super kotlin.Result<io.bidmachine.util.download.DownloadManager.DownloadData>> r11) {
            /*
                Method dump skipped, instruction units count: 202
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.download.DownloadManagerImpl.NetworkContentFetcher.mo2743getWS52aQU(java.lang.String, java.io.File, kotlin.time.Duration, kotlin.coroutines.Continuation):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        @Override // io.bidmachine.util.download.DownloadManagerImpl.ContentFetcher
        /* JADX INFO: renamed from: head-2Ivn440 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Object mo2744head2Ivn440(java.lang.String r8, kotlin.time.Duration r9, kotlin.coroutines.Continuation<? super kotlin.Result<io.bidmachine.util.download.DownloadManager.CallData>> r10) {
            /*
                r7 = this;
                boolean r0 = r10 instanceof io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$1
                if (r0 == 0) goto L13
                r0 = r10
                io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$1 r0 = (io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$1 r0 = new io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$1
                r0.<init>(r7, r10)
            L18:
                java.lang.Object r10 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L39
                if (r2 != r3) goto L31
                java.lang.Object r8 = r0.L$1
                kotlin.time.Duration r8 = (kotlin.time.Duration) r8
                java.lang.Object r8 = r0.L$0
                java.lang.String r8 = (java.lang.String) r8
                kotlin.ResultKt.throwOnFailure(r10)
                goto L9a
            L31:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r9)
                throw r8
            L39:
                kotlin.ResultKt.throwOnFailure(r10)
                r0.L$0 = r8
                r0.L$1 = r9
                r0.label = r3
                kotlinx.coroutines.CancellableContinuationImpl r10 = new kotlinx.coroutines.CancellableContinuationImpl
                kotlin.coroutines.Continuation r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.intercepted(r0)
                r10.<init>(r2, r3)
                r10.initCancellability()
                io.bidmachine.util.download.DownloadManagerImpl$CoroutineNetworkRequestListener r2 = new io.bidmachine.util.download.DownloadManagerImpl$CoroutineNetworkRequestListener
                io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1 r4 = new kotlin.jvm.functions.Function2<io.bidmachine.util.network.NetworkRequest<java.util.Map<java.lang.String, ? extends java.util.List<? extends java.lang.String>>>, java.util.Map<java.lang.String, ? extends java.util.List<? extends java.lang.String>>, kotlin.Result<? extends io.bidmachine.util.download.DownloadManager.CallData>>() { // from class: io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1
                    static {
                        /*
                            io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1 r0 = new io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1
                            r0.<init>()
                            
                            // error: 0x0005: SPUT (r0 I:io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1) io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1.INSTANCE io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1.<clinit>():void");
                    }

                    {
                        /*
                            r1 = this;
                            r0 = 2
                            r1.<init>(r0)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1.<init>():void");
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ kotlin.Result<? extends io.bidmachine.util.download.DownloadManager.CallData> invoke(io.bidmachine.util.network.NetworkRequest<java.util.Map<java.lang.String, ? extends java.util.List<? extends java.lang.String>>> r1, java.util.Map<java.lang.String, ? extends java.util.List<? extends java.lang.String>> r2) {
                        /*
                            r0 = this;
                            io.bidmachine.util.network.NetworkRequest r1 = (io.bidmachine.util.network.NetworkRequest) r1
                            java.util.Map r2 = (java.util.Map) r2
                            java.lang.Object r1 = r0.m2747invokegIAlus(r1, r2)
                            kotlin.Result r1 = kotlin.Result.m2759boximpl(r1)
                            return r1
                        */
                        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1.invoke(java.lang.Object, java.lang.Object):java.lang.Object");
                    }

                    /* JADX INFO: renamed from: invoke-gIAlu-s, reason: not valid java name */
                    public final java.lang.Object m2747invokegIAlus(io.bidmachine.util.network.NetworkRequest<java.util.Map<java.lang.String, java.util.List<java.lang.String>>> r4, java.util.Map<java.lang.String, ? extends java.util.List<java.lang.String>> r5) {
                        /*
                            r3 = this;
                            kotlin.Result$Companion r0 = kotlin.Result.Companion
                            io.bidmachine.util.download.DownloadManager$CallData r0 = new io.bidmachine.util.download.DownloadManager$CallData
                            if (r4 == 0) goto L11
                            kotlin.time.Duration r4 = r4.m2750getExecutionTimeFghU774()
                            if (r4 == 0) goto L11
                            long r1 = r4.m2906unboximpl()
                            goto L1a
                        L11:
                            kotlin.time.Duration$Companion r4 = kotlin.time.Duration.Companion
                            r4 = 0
                            kotlin.time.DurationUnit r1 = kotlin.time.DurationUnit.MILLISECONDS
                            long r1 = kotlin.time.DurationKt.toDuration(r4, r1)
                        L1a:
                            if (r5 != 0) goto L20
                            java.util.Map r5 = kotlin.collections.MapsKt__MapsKt.emptyMap()
                        L20:
                            r4 = 0
                            r0.<init>(r1, r5, r4)
                            java.lang.Object r4 = kotlin.Result.m2760constructorimpl(r0)
                            return r4
                        */
                        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1.m2747invokegIAlus(io.bidmachine.util.network.NetworkRequest, java.util.Map):java.lang.Object");
                    }
                }
                io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2 r5 = new kotlin.jvm.functions.Function2<io.bidmachine.util.network.NetworkRequest<java.util.Map<java.lang.String, ? extends java.util.List<? extends java.lang.String>>>, io.bidmachine.util.network.NetworkError, kotlin.Result<? extends io.bidmachine.util.download.DownloadManager.CallData>>() { // from class: io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2
                    static {
                        /*
                            io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2 r0 = new io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2
                            r0.<init>()
                            
                            // error: 0x0005: SPUT (r0 I:io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2) io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2.INSTANCE io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2.<clinit>():void");
                    }

                    {
                        /*
                            r1 = this;
                            r0 = 2
                            r1.<init>(r0)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2.<init>():void");
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ kotlin.Result<? extends io.bidmachine.util.download.DownloadManager.CallData> invoke(io.bidmachine.util.network.NetworkRequest<java.util.Map<java.lang.String, ? extends java.util.List<? extends java.lang.String>>> r1, io.bidmachine.util.network.NetworkError r2) {
                        /*
                            r0 = this;
                            io.bidmachine.util.network.NetworkRequest r1 = (io.bidmachine.util.network.NetworkRequest) r1
                            io.bidmachine.util.network.NetworkError r2 = (io.bidmachine.util.network.NetworkError) r2
                            java.lang.Object r1 = r0.m2748invokegIAlus(r1, r2)
                            kotlin.Result r1 = kotlin.Result.m2759boximpl(r1)
                            return r1
                        */
                        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2.invoke(java.lang.Object, java.lang.Object):java.lang.Object");
                    }

                    /* JADX INFO: renamed from: invoke-gIAlu-s, reason: not valid java name */
                    public final java.lang.Object m2748invokegIAlus(io.bidmachine.util.network.NetworkRequest<java.util.Map<java.lang.String, java.util.List<java.lang.String>>> r1, io.bidmachine.util.network.NetworkError r2) {
                        /*
                            r0 = this;
                            java.lang.String r1 = "networkError"
                            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
                            kotlin.Result$Companion r1 = kotlin.Result.Companion
                            java.lang.Throwable r1 = r2.getThrowable()
                            java.lang.Object r1 = kotlin.ResultKt.createFailure(r1)
                            java.lang.Object r1 = kotlin.Result.m2760constructorimpl(r1)
                            return r1
                        */
                        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2.m2748invokegIAlus(io.bidmachine.util.network.NetworkRequest, io.bidmachine.util.network.NetworkError):java.lang.Object");
                    }
                }
                r2.<init>(r10, r4, r5)
                io.bidmachine.util.network.NetworkRequest$Builder r4 = new io.bidmachine.util.network.NetworkRequest$Builder
                io.bidmachine.util.network.Method r5 = io.bidmachine.util.network.Method.Head
                r4.<init>(r8, r5)
                io.bidmachine.util.network.HeadersResponseProcessor r8 = new io.bidmachine.util.network.HeadersResponseProcessor
                r8.<init>()
                io.bidmachine.util.network.NetworkRequest$Builder r8 = r4.setResponseProcessor(r8)
                io.bidmachine.util.network.NetworkRequest$Builder r8 = r8.setListener(r2)
                r4 = 0
                if (r9 == 0) goto L7b
                long r5 = r9.m2906unboximpl()
                long r5 = kotlin.time.Duration.m2881getInWholeMillisecondsimpl(r5)
                java.lang.Long r9 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r5)
                goto L7c
            L7b:
                r9 = r4
            L7c:
                io.bidmachine.util.network.NetworkRequest$Builder r8 = r8.setTimeoutMs(r9)
                io.bidmachine.util.network.NetworkRequest r8 = r8.build()
                r2.setRequest(r8)
                io.bidmachine.util.network.NetworkRequest.send$default(r8, r4, r3, r4)
                java.lang.Object r10 = r10.getResult()
                java.lang.Object r8 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                if (r10 != r8) goto L97
                kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)
            L97:
                if (r10 != r1) goto L9a
                return r1
            L9a:
                kotlin.Result r10 = (kotlin.Result) r10
                java.lang.Object r8 = r10.m2768unboximpl()
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.download.DownloadManagerImpl.NetworkContentFetcher.mo2744head2Ivn440(java.lang.String, kotlin.time.Duration, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    /* JADX INFO: compiled from: DownloadManagerImpl.kt */
    public static final class CoroutineNetworkRequestListener<T, R> implements NetworkRequest.Listener<T> {
        public final CancellableContinuation<R> continuation;
        public final Function2<NetworkRequest<T>, NetworkError, R> errorBuilder;
        public NetworkRequest<T> request;
        public final Function2<NetworkRequest<T>, T, R> successBuilder;

        /* JADX WARN: Multi-variable type inference failed */
        public CoroutineNetworkRequestListener(CancellableContinuation<? super R> continuation, Function2<? super NetworkRequest<T>, ? super T, ? extends R> successBuilder, Function2<? super NetworkRequest<T>, ? super NetworkError, ? extends R> errorBuilder) {
            Intrinsics.checkNotNullParameter(continuation, "continuation");
            Intrinsics.checkNotNullParameter(successBuilder, "successBuilder");
            Intrinsics.checkNotNullParameter(errorBuilder, "errorBuilder");
            this.continuation = continuation;
            this.successBuilder = successBuilder;
            this.errorBuilder = errorBuilder;
        }

        public final void setRequest(NetworkRequest<T> networkRequest) {
            this.request = networkRequest;
        }

        @Override // io.bidmachine.util.network.NetworkRequest.Listener
        public void onSuccess(T t) {
            if (this.continuation.isActive()) {
                CancellableContinuation<R> cancellableContinuation = this.continuation;
                Result.Companion companion = Result.Companion;
                cancellableContinuation.resumeWith(Result.m2760constructorimpl(this.successBuilder.invoke(this.request, t)));
            }
        }

        @Override // io.bidmachine.util.network.NetworkRequest.Listener
        public void onError(NetworkError networkError) {
            Intrinsics.checkNotNullParameter(networkError, "networkError");
            if (this.continuation.isActive()) {
                CancellableContinuation<R> cancellableContinuation = this.continuation;
                Result.Companion companion = Result.Companion;
                cancellableContinuation.resumeWith(Result.m2760constructorimpl(this.errorBuilder.invoke(this.request, networkError)));
            }
        }
    }

    /* JADX INFO: compiled from: DownloadManagerImpl.kt */
    public static final class DownloadKey {
        public final String outputFilePath;
        public final String url;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DownloadKey)) {
                return false;
            }
            DownloadKey downloadKey = (DownloadKey) obj;
            return Intrinsics.areEqual(this.url, downloadKey.url) && Intrinsics.areEqual(this.outputFilePath, downloadKey.outputFilePath);
        }

        public int hashCode() {
            return (this.url.hashCode() * 31) + this.outputFilePath.hashCode();
        }

        public String toString() {
            return "DownloadKey(url=" + this.url + ", outputFilePath=" + this.outputFilePath + ')';
        }

        public DownloadKey(String url, String outputFilePath) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(outputFilePath, "outputFilePath");
            this.url = url;
            this.outputFilePath = outputFilePath;
        }
    }

    /* JADX INFO: compiled from: DownloadManagerImpl.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }
}
