package com.unity3d.ads.core.data.datasource;

import com.unity3d.ads.core.data.model.CacheResult;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.CreateFile;
import com.unity3d.ads.core.domain.GetFileExtensionFromUrl;
import com.unity3d.ads.core.domain.HttpClientProvider;
import com.vungle.ads.internal.protos.Sdk;
import java.io.File;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AndroidRemoteCacheDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidRemoteCacheDataSource implements CacheDataSource {
    private final CreateFile createFile;
    private final GetFileExtensionFromUrl getFileExtensionFromUrl;
    private final HttpClientProvider httpClientProvider;
    private final CoroutineDispatcher ioDispatcher;
    private final SessionRepository sessionRepository;

    public AndroidRemoteCacheDataSource(CoroutineDispatcher ioDispatcher, CreateFile createFile, GetFileExtensionFromUrl getFileExtensionFromUrl, HttpClientProvider httpClientProvider, SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(createFile, "createFile");
        Intrinsics.checkNotNullParameter(getFileExtensionFromUrl, "getFileExtensionFromUrl");
        Intrinsics.checkNotNullParameter(httpClientProvider, "httpClientProvider");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.ioDispatcher = ioDispatcher;
        this.createFile = createFile;
        this.getFileExtensionFromUrl = getFileExtensionFromUrl;
        this.httpClientProvider = httpClientProvider;
        this.sessionRepository = sessionRepository;
    }

    @Override // com.unity3d.ads.core.data.datasource.CacheDataSource
    public Object getFile(File file, String str, String str2, Integer num, int i, Function3<? super Long, ? super Long, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super CacheResult> continuation) {
        return getFileInternal(file, str, str2, num, i, function3, continuation);
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.datasource.AndroidRemoteCacheDataSource$getFileInternal$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidRemoteCacheDataSource.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.data.datasource.AndroidRemoteCacheDataSource$getFileInternal$2", f = "AndroidRemoteCacheDataSource.kt", l = {78, 79, Sdk.SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CacheResult>, Object> {
        final /* synthetic */ File $cachePath;
        final /* synthetic */ String $fileName;
        final /* synthetic */ int $intervalMs;
        final /* synthetic */ Function3<Long, Long, Continuation<? super Unit>, Object> $onProgress;
        final /* synthetic */ Integer $priority;
        final /* synthetic */ String $url;
        int I$0;
        long J$0;
        long J$1;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$10;
        Object L$11;
        Object L$12;
        Object L$13;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        Object L$9;
        int label;
        final /* synthetic */ AndroidRemoteCacheDataSource this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(String str, AndroidRemoteCacheDataSource androidRemoteCacheDataSource, File file, String str2, Integer num, int i, Function3<? super Long, ? super Long, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$url = str;
            this.this$0 = androidRemoteCacheDataSource;
            this.$cachePath = file;
            this.$fileName = str2;
            this.$priority = num;
            this.$intervalMs = i;
            this.$onProgress = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$url, this.this$0, this.$cachePath, this.$fileName, this.$priority, this.$intervalMs, this.$onProgress, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CacheResult> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:110:0x038c, code lost:
        
            r4 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r28 + ((long) r6.element));
            r5 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r26);
            r1.L$0 = r11;
            r1.L$1 = r3;
            r1.L$2 = r13;
            r1.L$3 = r12;
            r1.L$4 = r6;
            r1.L$5 = r2;
            r1.L$6 = r10;
            r1.L$7 = r7;
            r1.L$8 = r0;
            r1.L$9 = r9;
            r1.L$10 = r14;
            r1.L$11 = r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:111:0x03b1, code lost:
        
            r30 = r2;
            r2 = r23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:112:0x03b5, code lost:
        
            r1.L$12 = r2;
            r1.L$13 = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:113:0x03b9, code lost:
        
            r31 = r8;
            r23 = r9;
            r8 = r28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:114:0x03bf, code lost:
        
            r1.J$0 = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:115:0x03c1, code lost:
        
            r28 = r8;
            r8 = r26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:116:0x03c5, code lost:
        
            r1.J$1 = r8;
            r26 = r0;
            r0 = r22;
            r1.I$0 = r0;
            r1.label = 3;
            r4 = r10.invoke(r4, r5, r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:117:0x03d6, code lost:
        
            r5 = r24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:118:0x03d8, code lost:
        
            if (r4 != r5) goto L120;
         */
        /* JADX WARN: Code restructure failed: missing block: B:120:0x03db, code lost:
        
            r4 = r0;
            r22 = r26;
            r26 = r8;
            r9 = r23;
            r8 = r2;
            r2 = r30;
            r15 = r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:135:0x0438, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:136:0x0439, code lost:
        
            r28 = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:143:0x0465, code lost:
        
            r2 = r23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:144:0x0467, code lost:
        
            r0 = kotlin.Unit.INSTANCE;
         */
        /* JADX WARN: Code restructure failed: missing block: B:146:0x046a, code lost:
        
            kotlin.io.CloseableKt.closeFinally(r2, null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:147:0x046d, code lost:
        
            kotlin.io.CloseableKt.closeFinally(r15, null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:148:0x0470, code lost:
        
            kotlin.io.CloseableKt.closeFinally(r7, null);
            r0 = kotlin.Result.m2760constructorimpl(kotlin.Unit.INSTANCE);
         */
        /* JADX WARN: Code restructure failed: missing block: B:149:0x0479, code lost:
        
            r7 = r28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:150:0x047d, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:151:0x047e, code lost:
        
            r4 = r3;
            r5 = r13;
            r7 = r28;
            r13 = r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:152:0x0485, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:153:0x0486, code lost:
        
            r1 = r0;
            r4 = r3;
            r2 = r7;
            r5 = r13;
            r7 = r28;
            r13 = r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:154:0x048e, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:155:0x048f, code lost:
        
            r1 = r0;
            r4 = r3;
            r2 = r7;
            r5 = r13;
            r7 = r28;
            r13 = r6;
            r15 = r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:286:?, code lost:
        
            return r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x0263, code lost:
        
            if (r0 == r3) goto L56;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Path cross not found for [B:71:0x02b3, B:69:0x02a9], limit reached: 282 */
        /* JADX WARN: Removed duplicated region for block: B:105:0x0372  */
        /* JADX WARN: Removed duplicated region for block: B:185:0x04eb  */
        /* JADX WARN: Removed duplicated region for block: B:187:0x04f5  */
        /* JADX WARN: Removed duplicated region for block: B:283:0x0465 A[EDGE_INSN: B:283:0x0465->B:143:0x0465 BREAK  A[LOOP:0: B:269:0x0367->B:142:0x0452], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:75:0x02bb  */
        /* JADX WARN: Removed duplicated region for block: B:77:0x02be  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x02e0  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x02e4  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x02e7  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x02f8  */
        /* JADX WARN: Type inference failed for: r0v20 */
        /* JADX WARN: Type inference failed for: r0v69 */
        /* JADX WARN: Type inference failed for: r0v70, types: [java.io.InputStream, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v82 */
        /* JADX WARN: Type inference failed for: r0v93 */
        /* JADX WARN: Type inference failed for: r22v11 */
        /* JADX WARN: Type inference failed for: r22v8 */
        /* JADX WARN: Type inference failed for: r22v9 */
        /* JADX WARN: Type inference failed for: r26v10 */
        /* JADX WARN: Type inference failed for: r26v8 */
        /* JADX WARN: Type inference failed for: r31v1 */
        /* JADX WARN: Type inference failed for: r31v2 */
        /* JADX WARN: Type inference failed for: r31v3 */
        /* JADX WARN: Type inference failed for: r31v4 */
        /* JADX WARN: Type inference failed for: r31v5 */
        /* JADX WARN: Type inference failed for: r31v6 */
        /* JADX WARN: Type inference failed for: r5v15 */
        /* JADX WARN: Type inference failed for: r5v26 */
        /* JADX WARN: Type inference failed for: r5v27, types: [okio.BufferedSink] */
        /* JADX WARN: Type inference failed for: r5v32 */
        /* JADX WARN: Type inference failed for: r5v38 */
        /* JADX WARN: Type inference failed for: r8v13, types: [java.lang.Object] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:120:0x03db -> B:248:0x03e6). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r47) throws java.io.IOException {
            /*
                Method dump skipped, instruction units count: 1522
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.datasource.AndroidRemoteCacheDataSource.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getFileInternal(File file, String str, String str2, Integer num, int i, Function3<? super Long, ? super Long, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super CacheResult> continuation) {
        return BuildersKt.withContext(this.ioDispatcher, new AnonymousClass2(str2, this, file, str, num, i, function3, null), continuation);
    }
}
