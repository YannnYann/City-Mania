###### Class org.chromium.net.impl.JavaUrlRequest (org.chromium.net.impl.JavaUrlRequest)
.class public final Lorg/chromium/net/impl/JavaUrlRequest;
.super Lorg/chromium/net/ExperimentalUrlRequest;
.source "JavaUrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;,
        Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;,
        Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "JavaUrlRequest"


# instance fields
.field public volatile mAdditionalStatusDetails:I

.field public final mAllowDirectExecutor:Z

.field public final mCallbackAsync:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

.field public final mCronetEngineId:I

.field public mCurrentUrl:Ljava/lang/String;

.field public mCurrentUrlConnection:Ljava/net/HttpURLConnection;

.field public final mEngine:Lorg/chromium/net/impl/JavaCronetEngine;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mFinalUserCallbackThrew:Z

.field public final mInitialMethod:Ljava/lang/String;

.field public final mLogger:Lorg/chromium/net/impl/CronetLogger;

.field public final mNetworkHandle:J

.field public mNonfinalUserCallbackExceptionCount:I

.field public mOutputStreamDataSink:Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;

.field public mPendingRedirectUrl:Ljava/lang/String;

.field public mReadCount:I

.field public final mRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mResponseChannel:Ljava/nio/channels/ReadableByteChannel;

.field public final mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mUploadDataProvider:Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

.field public final mUploadExecutor:Ljava/util/concurrent/Executor;

.field public final mUploadProviderClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUrlChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUrlResponseInfo:Lorg/chromium/net/impl/UrlResponseInfoImpl;

.field public final mUserAgent:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$02qzLzE_VPpZarHuSLhMV6jVulc(Lorg/chromium/net/impl/JavaUrlRequest;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest;->lambda$fireGetHeaders$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$38dzsNc1zmdQHSuBA_JyRMFyZtI(Lorg/chromium/net/impl/JavaUrlRequest;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest;->lambda$start$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$8Jo97Oa6sMq63KSfyXfVRlvw9I0(IZILjava/lang/Runnable;)V
    .registers 5

    .line 230
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    .line 231
    invoke-static {p0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    if-eqz p1, :cond_c

    .line 233
    invoke-static {p2}, Lorg/chromium/net/ThreadStatsUid;->set(I)V

    .line 236
    :cond_c
    :try_start_c
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_18

    if-eqz p1, :cond_14

    .line 239
    invoke-static {}, Lorg/chromium/net/ThreadStatsUid;->clear()V

    .line 241
    :cond_14
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return-void

    :catchall_18
    move-exception p0

    if-eqz p1, :cond_1e

    .line 239
    invoke-static {}, Lorg/chromium/net/ThreadStatsUid;->clear()V

    .line 241
    :cond_1e
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 242
    throw p0
.end method

.method public static synthetic $r8$lambda$GSdwLjQ4bmMzASRLACmvH5xfWmo(Lorg/chromium/net/impl/JavaUrlRequest;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest;->lambda$fireOpenConnection$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$NQYCbe0U94j06X1DTQBiU1HE4R4(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cronet JavaUrlRequest#executeOnExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " running callback"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1210
    invoke-static {p0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object p0

    .line 1214
    :try_start_1a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_23

    if-eqz p0, :cond_22

    .line 1215
    invoke-virtual {p0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_22
    return-void

    :catchall_23
    move-exception p1

    if-eqz p0, :cond_2e

    .line 1209
    :try_start_26
    invoke-virtual {p0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2e
    :goto_2e
    throw p1
.end method

.method public static synthetic $r8$lambda$PIFh1790Oeyx5a3X_KbAZQz5meg(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->lambda$userErrorSetting$9(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wkt5Drg-UQxBhoSqw7stujcUC7Y(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->lambda$read$12(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_wWXlBR8WJ1mu3-hFNKhRrcaJoA(Lorg/chromium/net/impl/JavaUrlRequest;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest;->lambda$closeResponseChannel$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$aHdNiaUE4hHQdj0jbu3NBWOvxDg(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->lambda$uploadErrorSetting$10(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bMvZoSNaUr4APxhn21vnlY_ECAQ(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->lambda$errorSetting$8(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bR7r4RzNBFEh7BVU9n2PGU-qg68(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/lang/String;Lorg/chromium/net/UrlResponseInfo;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/impl/JavaUrlRequest;->lambda$fireRedirectReceived$6(Ljava/lang/String;Lorg/chromium/net/UrlResponseInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ecpyyaPHU986yHiuxnDquO9vmIo(Ljava/util/concurrent/Executor;IZILjava/lang/Runnable;)V
    .registers 6

    .line 228
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda9;-><init>(IZILjava/lang/Runnable;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gJzZ29OPTZVGbpITnuc1VPRlWyc(Lorg/chromium/net/impl/JavaUrlRequest;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest;->lambda$fireDisconnect$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$r4_dhdLDT53SSUzE8bdt2qsjO3Q(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->lambda$fireRedirectReceived$5(Lorg/chromium/net/UrlResponseInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u-jVhrWpEjz9BKtoI5JBlbbMeKM(Lorg/chromium/net/impl/JavaUrlRequest;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest;->lambda$enterUserErrorState$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$yRZjnistK_LSFIhhQZTjA_r2CdQ(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->lambda$read$11(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowDirectExecutor(Lorg/chromium/net/impl/JavaUrlRequest;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mAllowDirectExecutor:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCronetEngineId(Lorg/chromium/net/impl/JavaUrlRequest;)I
    .registers 1

    .line 0
    iget p0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCronetEngineId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEngine(Lorg/chromium/net/impl/JavaUrlRequest;)Lorg/chromium/net/impl/JavaCronetEngine;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mEngine:Lorg/chromium/net/impl/JavaCronetEngine;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFinalUserCallbackThrew(Lorg/chromium/net/impl/JavaUrlRequest;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mFinalUserCallbackThrew:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogger(Lorg/chromium/net/impl/JavaUrlRequest;)Lorg/chromium/net/impl/CronetLogger;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mLogger:Lorg/chromium/net/impl/CronetLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNonfinalUserCallbackExceptionCount(Lorg/chromium/net/impl/JavaUrlRequest;)I
    .registers 1

    .line 0
    iget p0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mNonfinalUserCallbackExceptionCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOutputStreamDataSink(Lorg/chromium/net/impl/JavaUrlRequest;)Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mOutputStreamDataSink:Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingRedirectUrl(Lorg/chromium/net/impl/JavaUrlRequest;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mPendingRedirectUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReadCount(Lorg/chromium/net/impl/JavaUrlRequest;)I
    .registers 1

    .line 0
    iget p0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mReadCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestHeaders(Lorg/chromium/net/impl/JavaUrlRequest;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mRequestHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmState(Lorg/chromium/net/impl/JavaUrlRequest;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUrlResponseInfo(Lorg/chromium/net/impl/JavaUrlRequest;)Lorg/chromium/net/impl/UrlResponseInfoImpl;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUrlResponseInfo:Lorg/chromium/net/impl/UrlResponseInfoImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAdditionalStatusDetails(Lorg/chromium/net/impl/JavaUrlRequest;I)V
    .registers 2

    .line 0
    iput p1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mAdditionalStatusDetails:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentUrl(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrl:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPendingRedirectUrl(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mPendingRedirectUrl:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcloseResponseChannel(Lorg/chromium/net/impl/JavaUrlRequest;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest;->closeResponseChannel()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menterErrorState(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/CronetException;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->enterErrorState(Lorg/chromium/net/CronetException;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menterUploadErrorState(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/lang/Throwable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->enterUploadErrorState(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$merrorSetting(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->errorSetting(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mexecuteOnExecutor(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/impl/JavaUrlRequest;->executeOnExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfireGetHeaders(Lorg/chromium/net/impl/JavaUrlRequest;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest;->fireGetHeaders()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfireOpenConnection(Lorg/chromium/net/impl/JavaUrlRequest;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest;->fireOpenConnection()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monFinalCallbackException(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/impl/JavaUrlRequest;->onFinalCallbackException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$muploadErrorSetting(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->uploadErrorSetting(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$muserErrorSetting(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->userErrorSetting(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lorg/chromium/net/impl/JavaUrlRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smparseContentLengthString(Ljava/lang/String;)J
    .registers 3

    .line 0
    invoke-static {p0}, Lorg/chromium/net/impl/JavaUrlRequest;->parseContentLengthString(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/impl/JavaCronetEngine;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;ZZIZIJLjava/lang/String;Ljava/util/ArrayList;Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)V
    .registers 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x10,
            0x10,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "engine",
            "callback",
            "executor",
            "userExecutor",
            "url",
            "userAgent",
            "allowDirectExecutor",
            "trafficStatsTagSet",
            "trafficStatsTag",
            "trafficStatsUidSet",
            "trafficStatsUid",
            "networkHandle",
            "method",
            "requestHeaders",
            "uploadDataProvider",
            "uploadDataProviderExecutor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/impl/JavaCronetEngine;",
            "Lorg/chromium/net/UrlRequest$Callback;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZIZIJ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lorg/chromium/net/UploadDataProvider;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p17

    .line 214
    invoke-direct {p0}, Lorg/chromium/net/ExperimentalUrlRequest;-><init>()V

    .line 73
    new-instance v2, Ljava/util/TreeMap;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v2, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mRequestHeaders:Ljava/util/Map;

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUrlChain:Ljava/util/List;

    .line 86
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUploadProviderClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, -0x1

    .line 107
    iput v2, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mAdditionalStatusDetails:I

    .line 215
    const-string v2, "Cronet JavaUrlRequest#JavaUrlRequest"

    invoke-static {v2}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v2

    .line 216
    :try_start_2d
    const-string v3, "URL is required"

    invoke-static {p5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    const-string v3, "Listener is required"

    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    const-string v3, "Executor is required"

    invoke-static {p3, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    const-string v3, "userExecutor is required"

    invoke-static {p4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    iput-boolean p7, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mAllowDirectExecutor:Z

    .line 222
    new-instance v3, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    invoke-direct {v3, p0, p2, p4}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;-><init>(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)V

    iput-object v3, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCallbackAsync:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    if-eqz p8, :cond_4e

    move p2, p9

    goto :goto_52

    .line 224
    :cond_4e
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result p2

    .line 225
    :goto_52
    new-instance p4, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;

    new-instance v3, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda4;

    move/from16 v4, p10

    move/from16 v5, p11

    invoke-direct {v3, p3, p2, v4, v5}, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/Executor;IZI)V

    invoke-direct {p4, v3}, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p4, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mExecutor:Ljava/util/concurrent/Executor;

    .line 245
    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mEngine:Lorg/chromium/net/impl/JavaCronetEngine;

    .line 246
    invoke-virtual {p1}, Lorg/chromium/net/impl/JavaCronetEngine;->getCronetEngineId()I

    move-result p2

    iput p2, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCronetEngineId:I

    .line 247
    invoke-virtual {p1}, Lorg/chromium/net/impl/JavaCronetEngine;->getCronetLogger()Lorg/chromium/net/impl/CronetLogger;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mLogger:Lorg/chromium/net/impl/CronetLogger;

    .line 248
    iput-object p5, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrl:Ljava/lang/String;

    .line 249
    iput-object p6, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUserAgent:Ljava/lang/String;

    move-wide/from16 p1, p12

    .line 250
    iput-wide p1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mNetworkHandle:J

    .line 251
    invoke-static/range {p14 .. p14}, Lorg/chromium/net/impl/JavaUrlRequest;->checkedHttpMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mInitialMethod:Ljava/lang/String;

    move-object/from16 p1, p15

    .line 252
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->setHeaders(Ljava/util/ArrayList;)V

    move-object/from16 p1, p16

    .line 253
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->checkedUploadDataProvider(Lorg/chromium/net/UploadDataProvider;)Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUploadDataProvider:Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    if-eqz v1, :cond_99

    if-eqz p7, :cond_90

    goto :goto_99

    .line 257
    :cond_90
    new-instance p1, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor;

    invoke-direct {p1, v1}, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    goto :goto_9a

    :catchall_96
    move-exception v0

    move-object p1, v0

    goto :goto_a2

    :cond_99
    :goto_99
    move-object p1, v1

    :goto_9a
    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUploadExecutor:Ljava/util/concurrent/Executor;
    :try_end_9c
    .catchall {:try_start_2d .. :try_end_9c} :catchall_96

    if-eqz v2, :cond_a1

    .line 258
    invoke-virtual {v2}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_a1
    return-void

    :goto_a2
    if-eqz v2, :cond_ad

    .line 215
    :try_start_a4
    invoke-virtual {v2}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_a8

    goto :goto_ad

    :catchall_a8
    move-exception v0

    move-object p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ad
    :goto_ad
    throw p1
.end method

.method public static checkedHttpMethod(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    .line 262
    const-string v0, "Method is required."

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    const-string v0, "OPTIONS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "GET"

    .line 264
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "HEAD"

    .line 265
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "POST"

    .line 266
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "PUT"

    .line 267
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "DELETE"

    .line 268
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "TRACE"

    .line 269
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "PATCH"

    .line 270
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_5d

    .line 273
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid http method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    :goto_5d
    return-object p0
.end method

.method public static estimateHeadersSizeInBytes(Ljava/util/Map;)J
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "headers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    .line 827
    :cond_5
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 828
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_27

    .line 829
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 830
    :cond_27
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 831
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_d

    :cond_36
    return-wide v0
.end method

.method public static estimateHeadersSizeInBytesList(Ljava/util/Map;)J
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "headers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    .line 807
    :cond_5
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 808
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_27

    .line 809
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 810
    :cond_27
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2e

    goto :goto_d

    .line 812
    :cond_2e
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_38
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_38

    .line 813
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_38

    :cond_4d
    return-wide v0
.end method

.method public static isValidHeaderName(Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "header"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 288
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 289
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_35

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_35

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_35

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_35

    packed-switch v2, :pswitch_data_38

    packed-switch v2, :pswitch_data_42

    packed-switch v2, :pswitch_data_54

    .line 310
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-nez v3, :cond_35

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_35

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_35
    :goto_35
    :pswitch_35
    return v0

    :cond_36
    const/4 p0, 0x1

    return p0

    :pswitch_data_38
    .packed-switch 0x27
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0x3a
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x5b
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method public static parseContentLengthString(Ljava/lang/String;)J
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentLength"
        }
    .end annotation

    .line 838
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide v0

    :catch_5
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 765
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    const/4 v1, 0x5

    if-eq v0, v1, :cond_18

    return-void

    .line 778
    :cond_18
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest;->fireDisconnect()V

    .line 779
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest;->fireCloseUploadDataProvider()V

    .line 780
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCallbackAsync:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUrlResponseInfo:Lorg/chromium/net/impl/UrlResponseInfoImpl;

    invoke-virtual {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->onCanceled(Lorg/chromium/net/UrlResponseInfo;)V

    return-void
.end method

.method public final checkedUploadDataProvider(Lorg/chromium/net/UploadDataProvider;)Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uploadDataProvider"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 324
    :cond_4
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mRequestHeaders:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 328
    new-instance v0, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    invoke-direct {v0, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;-><init>(Lorg/chromium/net/UploadDataProvider;)V

    return-object v0

    .line 325
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Requests with upload data must have a Content-Type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final closeResponseChannel()V
    .registers 3

    .line 1172
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda12;-><init>(Lorg/chromium/net/impl/JavaUrlRequest;)V

    const-string v1, "closeResponseChannel"

    invoke-virtual {p0, v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->executeOnExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final enterCronetErrorState(Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    .line 477
    new-instance v0, Lorg/chromium/net/impl/CronetExceptionImpl;

    const-string v1, "System error"

    invoke-direct {v0, v1, p1}, Lorg/chromium/net/impl/CronetExceptionImpl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/chromium/net/impl/JavaUrlRequest;->enterErrorState(Lorg/chromium/net/CronetException;)V

    return-void
.end method

.method public final enterErrorState(Lorg/chromium/net/CronetException;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    const/4 v0, 0x6

    .line 424
    invoke-virtual {p0, v0}, Lorg/chromium/net/impl/JavaUrlRequest;->setTerminalState(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 425
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest;->fireDisconnect()V

    .line 426
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest;->fireCloseUploadDataProvider()V

    .line 427
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCallbackAsync:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUrlResponseInfo:Lorg/chromium/net/impl/UrlResponseInfoImpl;

    invoke-virtual {v0, v1, p1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->onFailed(Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V

    :cond_14
    return-void
.end method

.method public final enterUploadErrorState(Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    .line 470
    new-instance v0, Lorg/chromium/net/impl/CallbackExceptionImpl;

    const-string v1, "Exception received from UploadDataProvider"

    invoke-direct {v0, v1, p1}, Lorg/chromium/net/impl/CallbackExceptionImpl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/chromium/net/impl/JavaUrlRequest;->enterErrorState(Lorg/chromium/net/CronetException;)V

    return-void
.end method

.method public final enterUserErrorState(Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    .line 458
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda16;-><init>(Lorg/chromium/net/impl/JavaUrlRequest;)V

    const-string v1, "enterUserErrorState"

    invoke-virtual {p0, v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->executeOnExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 464
    new-instance v0, Lorg/chromium/net/impl/CallbackExceptionImpl;

    const-string v1, "Exception received from UrlRequest.Callback"

    invoke-direct {v0, v1, p1}, Lorg/chromium/net/impl/CallbackExceptionImpl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/chromium/net/impl/JavaUrlRequest;->enterErrorState(Lorg/chromium/net/CronetException;)V

    return-void
.end method

.method public final errorSetting(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "delegate"
        }
    .end annotation

    .line 680
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda8;-><init>(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    return-object v0
.end method

.method public final executeOnExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "name"
        }
    .end annotation

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cronet JavaUrlRequest#executeOnExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1206
    invoke-static {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 1207
    :try_start_15
    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda7;

    invoke-direct {v2, p2, p1}, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_25

    if-eqz v0, :cond_24

    .line 1217
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_24
    return-void

    :catchall_25
    move-exception p1

    if-eqz v0, :cond_30

    .line 1205
    :try_start_28
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    throw p1
.end method

.method public final fireCloseUploadDataProvider()V
    .registers 4

    .line 596
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUploadDataProvider:Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUploadProviderClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 597
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 600
    :try_start_e
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUploadExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUploadDataProvider:Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda2;-><init>(Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;)V

    invoke-virtual {p0, v2}, Lorg/chromium/net/impl/JavaUrlRequest;->uploadErrorSetting(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_21
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_e .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception v0

    .line 602
    sget-object v1, Lorg/chromium/net/impl/JavaUrlRequest;->TAG:Ljava/lang/String;

    const-string v2, "Exception when closing uploadDataProvider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    return-void
.end method

.method public final fireDisconnect()V
    .registers 3

    .line 746
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda3;-><init>(Lorg/chromium/net/impl/JavaUrlRequest;)V

    const-string v1, "fireDisconnect"

    invoke-virtual {p0, v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->executeOnExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final fireGetHeaders()V
    .registers 3

    const/16 v0, 0xd

    .line 525
    iput v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mAdditionalStatusDetails:I

    .line 526
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda11;-><init>(Lorg/chromium/net/impl/JavaUrlRequest;)V

    .line 527
    invoke-virtual {p0, v0}, Lorg/chromium/net/impl/JavaUrlRequest;->errorSetting(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;

    move-result-object v0

    const-string v1, "fireGetHeaders"

    .line 526
    invoke-virtual {p0, v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->executeOnExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final fireOpenConnection()V
    .registers 3

    .line 625
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda6;-><init>(Lorg/chromium/net/impl/JavaUrlRequest;)V

    .line 626
    invoke-virtual {p0, v0}, Lorg/chromium/net/impl/JavaUrlRequest;->errorSetting(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;

    move-result-object v0

    const-string v1, "fireOpenConnection"

    .line 625
    invoke-virtual {p0, v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->executeOnExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final fireRedirectReceived(Ljava/lang/String;Lorg/chromium/net/UrlResponseInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "locationField",
            "urlResponseInfo"
        }
    .end annotation

    .line 608
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda13;-><init>(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/lang/String;Lorg/chromium/net/UrlResponseInfo;)V

    const/4 p1, 0x1

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/net/impl/JavaUrlRequest;->transitionStates(IILjava/lang/Runnable;)V

    return-void
.end method

.method public followRedirect()V
    .registers 4

    .line 511
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$1;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/JavaUrlRequest$1;-><init>(Lorg/chromium/net/impl/JavaUrlRequest;)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lorg/chromium/net/impl/JavaUrlRequest;->transitionStates(IILjava/lang/Runnable;)V

    return-void
.end method

.method public final getNetworkFromHandle(J)Landroid/net/Network;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkHandle"
        }
    .end annotation

    .line 1187
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mEngine:Lorg/chromium/net/impl/JavaCronetEngine;

    .line 1189
    invoke-virtual {v0}, Lorg/chromium/net/impl/JavaCronetEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1190
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 1192
    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_24

    aget-object v3, v0, v2

    .line 1193
    invoke-virtual {v3}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_21

    return-object v3

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStatus(Lorg/chromium/net/UrlRequest$StatusListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 846
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 847
    iget v1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mAdditionalStatusDetails:I

    packed-switch v0, :pswitch_data_34

    .line 869
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch is exhaustive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_22
    const/16 v1, 0xe

    goto :goto_28

    :pswitch_25
    const/4 v1, 0x0

    goto :goto_28

    :pswitch_27
    const/4 v1, -0x1

    .line 872
    :goto_28
    :pswitch_28
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCallbackAsync:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    new-instance v2, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

    invoke-direct {v2, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;-><init>(Lorg/chromium/net/UrlRequest$StatusListener;)V

    invoke-virtual {v0, v2, v1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->sendStatus(Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;I)V

    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_27
        :pswitch_28
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_22
        :pswitch_27
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method public isDone()Z
    .registers 3

    .line 794
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_13

    const/4 v1, 0x6

    if-eq v0, v1, :cond_13

    const/16 v1, 0x8

    if-ne v0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic lambda$closeResponseChannel$14()V
    .registers 2

    .line 1174
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mResponseChannel:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_f

    .line 1176
    :try_start_4
    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 1178
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_c
    const/4 v0, 0x0

    .line 1180
    iput-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mResponseChannel:Ljava/nio/channels/ReadableByteChannel;

    :cond_f
    return-void
.end method

.method public final synthetic lambda$enterUserErrorState$3()V
    .registers 2

    .line 460
    iget v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mNonfinalUserCallbackExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mNonfinalUserCallbackExceptionCount:I

    return-void
.end method

.method public final synthetic lambda$errorSetting$8(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V
    .registers 2

    .line 682
    :try_start_0
    invoke-interface {p1}, Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception p1

    .line 684
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->enterCronetErrorState(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic lambda$fireDisconnect$13()V
    .registers 4

    .line 748
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mOutputStreamDataSink:Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;

    if-eqz v0, :cond_10

    .line 750
    :try_start_4
    invoke-virtual {v0}, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->closeOutputChannel()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    .line 752
    sget-object v1, Lorg/chromium/net/impl/JavaUrlRequest;->TAG:Ljava/lang/String;

    const-string v2, "Exception when closing OutputChannel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    :cond_10
    :goto_10
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1a

    .line 756
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 757
    iput-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    :cond_1a
    return-void
.end method

.method public final synthetic lambda$fireGetHeaders$4()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_5

    return-void

    .line 532
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 535
    const-string v2, "http/1.1"

    move-object v9, v2

    move v2, v1

    .line 537
    :goto_f
    iget-object v3, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    .line 536
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 539
    const-string v4, "X-Android-Selected-Transport"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 540
    iget-object v4, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    .line 542
    :cond_26
    const-string v4, "X-Android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 543
    new-instance v4, Ljava/util/AbstractMap$SimpleEntry;

    iget-object v5, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    .line 546
    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 543
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 550
    :cond_3f
    iget-object v2, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 555
    new-instance v3, Lorg/chromium/net/impl/UrlResponseInfoImpl;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUrlChain:Ljava/util/List;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    .line 559
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    .line 560
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    const-string v10, ""

    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v12}, Lorg/chromium/net/impl/UrlResponseInfoImpl;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    const/16 v0, 0x12c

    const/16 v2, 0x190

    if-lt v5, v0, :cond_80

    if-ge v5, v2, :cond_80

    .line 568
    invoke-virtual {v3}, Lorg/chromium/net/impl/UrlResponseInfoImpl;->getAllHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v4, "location"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_80

    .line 570
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lorg/chromium/net/impl/JavaUrlRequest;->fireRedirectReceived(Ljava/lang/String;Lorg/chromium/net/UrlResponseInfo;)V

    return-void

    .line 576
    :cond_80
    iput-object v3, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUrlResponseInfo:Lorg/chromium/net/impl/UrlResponseInfoImpl;

    .line 577
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest;->fireCloseUploadDataProvider()V

    if-lt v5, v2, :cond_9d

    .line 579
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_91

    const/4 v0, 0x0

    goto :goto_95

    .line 583
    :cond_91
    invoke-static {v0}, Lorg/chromium/net/impl/InputStreamChannel;->wrap(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    :goto_95
    iput-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mResponseChannel:Ljava/nio/channels/ReadableByteChannel;

    .line 584
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCallbackAsync:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    invoke-virtual {v0}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->onResponseStarted()V

    return-void

    .line 586
    :cond_9d
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    .line 588
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 587
    invoke-static {v0}, Lorg/chromium/net/impl/InputStreamChannel;->wrap(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mResponseChannel:Ljava/nio/channels/ReadableByteChannel;

    .line 589
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCallbackAsync:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    invoke-virtual {v0}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->onResponseStarted()V

    return-void
.end method

.method public final synthetic lambda$fireOpenConnection$7()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    return-void

    .line 634
    :cond_b
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 635
    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1c

    .line 636
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v1, 0x0

    .line 637
    iput-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    .line 640
    :cond_1c
    iget-wide v1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mNetworkHandle:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_2d

    .line 641
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    goto :goto_3b

    .line 643
    :cond_2d
    invoke-virtual {p0, v1, v2}, Lorg/chromium/net/impl/JavaUrlRequest;->getNetworkFromHandle(J)Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_af

    .line 651
    invoke-virtual {v1, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    .line 653
    :goto_3b
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 654
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mRequestHeaders:Ljava/util/Map;

    const-string v2, "User-Agent"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 655
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mRequestHeaders:Ljava/util/Map;

    iget-object v3, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUserAgent:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_52
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 658
    iget-object v3, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    .line 659
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 658
    invoke-virtual {v3, v4, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 661
    :cond_7a
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mInitialMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 662
    iget-object v8, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUploadDataProvider:Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    if-eqz v8, :cond_a1

    .line 663
    new-instance v3, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;

    iget-object v5, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUploadExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;-><init>(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/net/HttpURLConnection;Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;)V

    iput-object v3, v4, Lorg/chromium/net/impl/JavaUrlRequest;->mOutputStreamDataSink:Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;

    .line 669
    iget-object v0, v4, Lorg/chromium/net/impl/JavaUrlRequest;->mUrlChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9d

    move v1, v2

    :cond_9d
    invoke-virtual {v3, v1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->start(Z)V

    return-void

    :cond_a1
    move-object v4, p0

    const/16 v0, 0xa

    .line 671
    iput v0, v4, Lorg/chromium/net/impl/JavaUrlRequest;->mAdditionalStatusDetails:I

    .line 672
    iget-object v0, v4, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 673
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest;->fireGetHeaders()V

    return-void

    :cond_af
    move-object v4, p0

    .line 645
    new-instance v0, Lorg/chromium/net/impl/NetworkExceptionImpl;

    const/16 v1, 0x9

    const/4 v2, -0x4

    const-string v3, "Network bound to request not found"

    invoke-direct {v0, v3, v1, v2}, Lorg/chromium/net/impl/NetworkExceptionImpl;-><init>(Ljava/lang/String;II)V

    throw v0
.end method

.method public final synthetic lambda$fireRedirectReceived$5(Lorg/chromium/net/UrlResponseInfo;)V
    .registers 4

    .line 618
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCallbackAsync:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mPendingRedirectUrl:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->onRedirectReceived(Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$fireRedirectReceived$6(Ljava/lang/String;Lorg/chromium/net/UrlResponseInfo;)V
    .registers 4

    .line 612
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrl:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mPendingRedirectUrl:Ljava/lang/String;

    .line 613
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUrlChain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    new-instance p1, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0, p2}, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda14;-><init>(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/UrlResponseInfo;)V

    const/4 p2, 0x2

    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->transitionStates(IILjava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic lambda$read$11(Ljava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mResponseChannel:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_f

    .line 717
    iget v1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mReadCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mReadCount:I

    .line 718
    invoke-interface {v0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, -0x1

    .line 720
    :goto_10
    invoke-virtual {p0, v0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->processReadResult(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public final synthetic lambda$read$12(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V
    .registers 3

    .line 726
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->errorSetting(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-string v0, "read"

    invoke-virtual {p0, p1, v0}, Lorg/chromium/net/impl/JavaUrlRequest;->executeOnExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$start$2()V
    .registers 3

    .line 418
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUrlChain:Ljava/util/List;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCurrentUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest;->fireOpenConnection()V

    return-void
.end method

.method public final synthetic lambda$uploadErrorSetting$10(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V
    .registers 2

    .line 702
    :try_start_0
    invoke-interface {p1}, Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception p1

    .line 704
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->enterUploadErrorState(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic lambda$userErrorSetting$9(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V
    .registers 2

    .line 692
    :try_start_0
    invoke-interface {p1}, Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception p1

    .line 694
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->enterUserErrorState(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onFinalCallbackException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "e"
        }
    .end annotation

    .line 1200
    sget-object v0, Lorg/chromium/net/impl/JavaUrlRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " method"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 1201
    iput-boolean p1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mFinalUserCallbackThrew:Z

    return-void
.end method

.method public final processReadResult(ILjava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "read",
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    .line 732
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCallbackAsync:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUrlResponseInfo:Lorg/chromium/net/impl/UrlResponseInfoImpl;

    invoke-virtual {p1, v0, p2}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->onReadCompleted(Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V

    return-void

    .line 734
    :cond_b
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mResponseChannel:Ljava/nio/channels/ReadableByteChannel;

    if-eqz p1, :cond_12

    .line 735
    invoke-interface {p1}, Ljava/nio/channels/Channel;->close()V

    .line 737
    :cond_12
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x5

    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 739
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest;->fireDisconnect()V

    .line 740
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mCallbackAsync:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    iget-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mUrlResponseInfo:Lorg/chromium/net/impl/UrlResponseInfoImpl;

    invoke-virtual {p1, p2}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->onSucceeded(Lorg/chromium/net/UrlResponseInfo;)V

    :cond_26
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 711
    invoke-static {p1}, Lorg/chromium/net/impl/Preconditions;->checkDirect(Ljava/nio/ByteBuffer;)V

    .line 712
    invoke-static {p1}, Lorg/chromium/net/impl/Preconditions;->checkHasRemaining(Ljava/nio/ByteBuffer;)V

    .line 713
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda0;-><init>(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/nio/ByteBuffer;)V

    .line 722
    new-instance p1, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v0}, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda1;-><init>(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->transitionStates(IILjava/lang/Runnable;)V

    return-void
.end method

.method public final setHeaders(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestHeaders"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 279
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/net/impl/JavaUrlRequest;->isValidHeaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 283
    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 280
    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 281
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid header with headername: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_59
    return-void
.end method

.method public final setTerminalState(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 433
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1c

    .line 442
    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1

    .line 436
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t enter error state before start"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .registers 4

    const/16 v0, 0xa

    .line 412
    iput v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mAdditionalStatusDetails:I

    .line 413
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mEngine:Lorg/chromium/net/impl/JavaCronetEngine;

    invoke-virtual {v0}, Lorg/chromium/net/impl/JavaCronetEngine;->incrementActiveRequestCount()V

    .line 414
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda5;-><init>(Lorg/chromium/net/impl/JavaUrlRequest;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lorg/chromium/net/impl/JavaUrlRequest;->transitionStates(IILjava/lang/Runnable;)V

    return-void
.end method

.method public final transitionStates(IILjava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "expected",
            "newState",
            "afterTransition"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 489
    iget-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/16 p3, 0x8

    if-eq p2, p3, :cond_6a

    const/4 p3, 0x6

    if-ne p2, p3, :cond_16

    goto :goto_6a

    .line 491
    :cond_16
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 493
    invoke-static {p1}, Lorg/chromium/net/impl/JavaUrlRequestUtils;->stateToString(I)Ljava/lang/String;

    move-result-object p1

    .line 495
    invoke-static {p2}, Lorg/chromium/net/impl/JavaUrlRequestUtils;->stateToString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid state transition - expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 501
    :cond_3d
    invoke-static {p1}, Lorg/chromium/net/impl/JavaUrlRequestUtils;->stateToString(I)Ljava/lang/String;

    move-result-object p1

    .line 503
    invoke-static {p2}, Lorg/chromium/net/impl/JavaUrlRequestUtils;->stateToString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cronet JavaUrlRequest#transitionStates "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 499
    invoke-static {p1}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object p1

    .line 504
    :try_start_62
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_6b

    if-eqz p1, :cond_6a

    .line 505
    invoke-virtual {p1}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_6a
    :goto_6a
    return-void

    :catchall_6b
    move-exception p2

    if-eqz p1, :cond_76

    .line 498
    :try_start_6e
    invoke-virtual {p1}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_76

    :catchall_72
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_76
    :goto_76
    throw p2
.end method

.method public final uploadErrorSetting(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "delegate"
        }
    .end annotation

    .line 700
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda10;-><init>(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    return-object v0
.end method

.method public final userErrorSetting(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "delegate"
        }
    .end annotation

    .line 690
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda15;-><init>(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    return-object v0
.end method

###### Class org.chromium.net.impl.JavaUrlRequest.AnonymousClass1 (org.chromium.net.impl.JavaUrlRequest$1)
.class public Lorg/chromium/net/impl/JavaUrlRequest$1;
.super Ljava/lang/Object;
.source "JavaUrlRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/JavaUrlRequest;->followRedirect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/chromium/net/impl/JavaUrlRequest;


# direct methods
.method public constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 514
    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$1;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 517
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$1;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmPendingRedirectUrl(Lorg/chromium/net/impl/JavaUrlRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fputmCurrentUrl(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$1;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fputmPendingRedirectUrl(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$1;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$mfireOpenConnection(Lorg/chromium/net/impl/JavaUrlRequest;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest.AsyncUrlRequestCallback (org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback)
.class public final Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;
.super Ljava/lang/Object;
.source "JavaUrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/JavaUrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AsyncUrlRequestCallback"
.end annotation


# instance fields
.field public final mCallback:Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

.field public final mFallbackExecutor:Ljava/util/concurrent/Executor;

.field public final mUserExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic this$0:Lorg/chromium/net/impl/JavaUrlRequest;


# direct methods
.method public static synthetic $r8$lambda$-ElxwdM5p9ntEnR5c00jhA5ySA4(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->lambda$onSucceeded$6(Lorg/chromium/net/UrlResponseInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D3Lg1jcdUAIZEKduVfK-uga6A4E(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cronet JavaUrlRequest.AsyncUrlRequestCallback#executeOnUserExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " running callback"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1135
    invoke-static {p0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object p0

    .line 1141
    :try_start_1a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_23

    if-eqz p0, :cond_22

    .line 1142
    invoke-virtual {p0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_22
    return-void

    :catchall_23
    move-exception p1

    if-eqz p0, :cond_2e

    .line 1134
    :try_start_26
    invoke-virtual {p0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2e
    :goto_2e
    throw p1
.end method

.method public static synthetic $r8$lambda$L2MmDQF1IP9TU3XYnKRRuW-u5Xs(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->lambda$onReadCompleted$3(Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RXe1m0PdxXhwUrKBIben1xR2I_M(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->lambda$onRedirectReceived$1(Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U-zbUASvl6MLjUvoY4iIFSdcqHE(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->lambda$onCanceled$5(Lorg/chromium/net/UrlResponseInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WCDd2pugEgBS6NGVWYDm2iefcwo(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->lambda$onResponseStarted$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$YvZtwCJrGUY8GOrtOFEOSZ9D6T8(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->lambda$onFailed$7(Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_9B4GRLfAWjHu6e_D7q3tew4R6c(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cronet JavaUrlRequest.AsyncUrlRequestCallback#executeOnFallbackExecutor  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " running callback"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1157
    invoke-static {p0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object p0

    .line 1164
    :try_start_1a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_23

    if-eqz p0, :cond_22

    .line 1165
    invoke-virtual {p0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_22
    return-void

    :catchall_23
    move-exception p1

    if-eqz p0, :cond_2e

    .line 1156
    :try_start_26
    invoke-virtual {p0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2e
    :goto_2e
    throw p1
.end method

.method public static synthetic $r8$lambda$j74u9kjJ0lKsvlwf7wLiKfktJzQ(Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;I)V
    .registers 2

    .line 897
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;->onStatus(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wBc_bJEQLJvr4m_oENjqxQ9IYig(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->lambda$maybeReportMetrics$4()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x10
        }
        names = {
            "this$0",
            "callback",
            "userExecutor"
        }
    .end annotation

    .line 882
    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 883
    new-instance v0, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    invoke-direct {v0, p2}, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;-><init>(Lorg/chromium/net/UrlRequest$Callback;)V

    iput-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->mCallback:Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    .line 884
    invoke-static {p1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmAllowDirectExecutor(Lorg/chromium/net/impl/JavaUrlRequest;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 885
    iput-object p3, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->mUserExecutor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    .line 886
    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->mFallbackExecutor:Ljava/util/concurrent/Executor;

    return-void

    .line 888
    :cond_18
    new-instance p1, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor;

    invoke-direct {p1, p3}, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->mUserExecutor:Ljava/util/concurrent/Executor;

    .line 889
    iput-object p3, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->mFallbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final buildCronetTrafficInfo()Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;
    .registers 43

    move-object/from16 v0, p0

    .line 961
    iget-object v1, v0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmUrlResponseInfo(Lorg/chromium/net/impl/JavaUrlRequest;)Lorg/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    .line 962
    iget-object v1, v0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmUrlResponseInfo(Lorg/chromium/net/impl/JavaUrlRequest;)Lorg/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/net/impl/UrlResponseInfoImpl;->getAllHeaders()Ljava/util/Map;

    move-result-object v1

    .line 963
    iget-object v3, v0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v3}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmUrlResponseInfo(Lorg/chromium/net/impl/JavaUrlRequest;)Lorg/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/net/impl/UrlResponseInfoImpl;->getNegotiatedProtocol()Ljava/lang/String;

    move-result-object v3

    .line 964
    iget-object v4, v0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v4}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmUrlResponseInfo(Lorg/chromium/net/impl/JavaUrlRequest;)Lorg/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/net/impl/UrlResponseInfoImpl;->getHttpStatusCode()I

    move-result v4

    .line 965
    iget-object v5, v0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v5}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmUrlResponseInfo(Lorg/chromium/net/impl/JavaUrlRequest;)Lorg/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/net/impl/UrlResponseInfoImpl;->wasCached()Z

    move-result v5

    move v12, v4

    :goto_34
    move-object v15, v3

    goto :goto_3d

    .line 967
    :cond_36
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 970
    const-string v3, ""

    move v5, v2

    move v12, v5

    goto :goto_34

    :goto_3d
    const-wide/16 v3, -0x1

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_46

    move-wide v8, v6

    move-wide v10, v8

    goto :goto_52

    .line 979
    :cond_46
    iget-object v8, v0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v8}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmRequestHeaders(Lorg/chromium/net/impl/JavaUrlRequest;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v8}, Lorg/chromium/net/impl/JavaUrlRequest;->estimateHeadersSizeInBytes(Ljava/util/Map;)J

    move-result-wide v8

    move-wide v10, v6

    move-wide v6, v3

    :goto_52
    if-eqz v5, :cond_57

    move-wide v3, v10

    move-wide v13, v3

    goto :goto_73

    .line 990
    :cond_57
    invoke-static {v1}, Lorg/chromium/net/impl/JavaUrlRequest;->estimateHeadersSizeInBytesList(Ljava/util/Map;)J

    move-result-wide v13

    .line 993
    const-string v5, "Content-Length"

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_73

    .line 995
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$smparseContentLengthString(Ljava/lang/String;)J

    move-result-wide v3

    .line 1002
    :cond_73
    :goto_73
    invoke-static {v10, v11}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v1

    .line 1003
    invoke-static {v10, v11}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v5

    .line 1005
    iget-object v10, v0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v10}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmState(Lorg/chromium/net/impl/JavaUrlRequest;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    const/4 v11, 0x6

    if-eq v10, v11, :cond_b4

    const/4 v11, 0x7

    if-eq v10, v11, :cond_b1

    const/16 v11, 0x8

    if-ne v10, v11, :cond_95

    .line 1015
    sget-object v10, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->CANCELLED:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    :goto_91
    move-object/from16 v18, v10

    move-wide v10, v3

    goto :goto_b7

    .line 1018
    :cond_95
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal Cronet error: attempted to report metrics but current state ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is not a done state!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1009
    :cond_b1
    sget-object v10, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->SUCCEEDED:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    goto :goto_91

    .line 1012
    :cond_b4
    sget-object v10, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->ERROR:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    goto :goto_91

    .line 1024
    :goto_b7
    new-instance v3, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;

    iget-object v4, v0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v4}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmNonfinalUserCallbackExceptionCount(Lorg/chromium/net/impl/JavaUrlRequest;)I

    move-result v19

    iget-object v4, v0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v4}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmReadCount(Lorg/chromium/net/impl/JavaUrlRequest;)I

    move-result v20

    .line 1039
    iget-object v4, v0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v4}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmOutputStreamDataSink(Lorg/chromium/net/impl/JavaUrlRequest;)Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;

    move-result-object v4

    if-nez v4, :cond_d0

    :goto_cd
    move/from16 v21, v2

    goto :goto_db

    :cond_d0
    iget-object v2, v0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v2}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmOutputStreamDataSink(Lorg/chromium/net/impl/JavaUrlRequest;)Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->getReadCount()I

    move-result v2

    goto :goto_cd

    :goto_db
    iget-object v2, v0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v2}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmFinalUserCallbackThrew(Lorg/chromium/net/impl/JavaUrlRequest;)Z

    move-result v23

    .line 1042
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v24

    sget-object v28, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->UNKNOWN:Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    .line 1048
    invoke-static {}, Lorg/chromium/net/impl/ImplVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v30

    sget-object v31, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_FALLBACK:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    const-wide/16 v36, -0x1

    const-wide/16 v38, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const-wide/16 v32, -0x1

    const-wide/16 v34, -0x1

    move-wide/from16 v40, v13

    move-object v14, v5

    move-wide v4, v8

    move-wide/from16 v8, v40

    move-object v13, v1

    invoke-direct/range {v3 .. v39}, Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;-><init>(JJJJILj$/time/Duration;Lj$/time/Duration;Ljava/lang/String;ZZLorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;IIIZZIIIILorg/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;ZLjava/lang/String;Lorg/chromium/net/impl/CronetLogger$CronetSource;JJJJ)V

    return-object v3
.end method

.method public execute(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "name"
        }
    .end annotation

    .line 904
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$muserErrorSetting(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->executeOnUserExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    .line 906
    iget-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    new-instance v0, Lorg/chromium/net/impl/CronetExceptionImpl;

    const-string v1, "Exception posting task to executor"

    invoke-direct {v0, v1, p1}, Lorg/chromium/net/impl/CronetExceptionImpl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$menterErrorState(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/CronetException;)V

    return-void
.end method

.method public executeOnFallbackExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "name"
        }
    .end annotation

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cronet JavaUrlRequest.AsyncUrlRequestCallback#executeOnFallbackExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1149
    invoke-static {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 1154
    :try_start_15
    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->mFallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda6;

    invoke-direct {v2, p2, p1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_25

    if-eqz v0, :cond_24

    .line 1167
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_24
    return-void

    :catchall_25
    move-exception p1

    if-eqz v0, :cond_30

    .line 1148
    :try_start_28
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    throw p1
.end method

.method public executeOnUserExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "name"
        }
    .end annotation

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cronet JavaUrlRequest.AsyncUrlRequestCallback#executeOnUserExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1129
    invoke-static {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 1132
    :try_start_15
    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->mUserExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda5;

    invoke-direct {v2, p2, p1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_25

    if-eqz v0, :cond_24

    .line 1144
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_24
    return-void

    :catchall_25
    move-exception p1

    if-eqz v0, :cond_30

    .line 1128
    :try_start_28
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    throw p1
.end method

.method public final synthetic lambda$maybeReportMetrics$4()V
    .registers 5

    .line 1067
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmLogger(Lorg/chromium/net/impl/JavaUrlRequest;)Lorg/chromium/net/impl/CronetLogger;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmCronetEngineId(Lorg/chromium/net/impl/JavaUrlRequest;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->buildCronetTrafficInfo()Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/net/impl/CronetLogger;->logCronetTrafficInfo(JLorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    .line 1071
    invoke-static {}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error while trying to log CronetTrafficInfo: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$onCanceled$5(Lorg/chromium/net/UrlResponseInfo;)V
    .registers 4

    .line 1082
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->mCallback:Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-virtual {v0, v1, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->onCanceled(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p1

    .line 1084
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    const-string v1, "onCanceled"

    invoke-static {v0, v1, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$monFinalCallbackException(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1086
    :goto_10
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->maybeReportMetrics()V

    .line 1087
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {p1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmEngine(Lorg/chromium/net/impl/JavaUrlRequest;)Lorg/chromium/net/impl/JavaCronetEngine;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/impl/JavaCronetEngine;->decrementActiveRequestCount()V

    return-void
.end method

.method public final synthetic lambda$onFailed$7(Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .registers 5

    .line 1111
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->mCallback:Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-virtual {v0, v1, p1, p2}, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p1

    .line 1113
    iget-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    const-string v0, "onFailed"

    invoke-static {p2, v0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$monFinalCallbackException(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1115
    :goto_10
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->maybeReportMetrics()V

    .line 1116
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {p1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmEngine(Lorg/chromium/net/impl/JavaUrlRequest;)Lorg/chromium/net/impl/JavaCronetEngine;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/impl/JavaCronetEngine;->decrementActiveRequestCount()V

    return-void
.end method

.method public final synthetic lambda$onReadCompleted$3(Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 933
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmState(Lorg/chromium/net/impl/JavaUrlRequest;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 936
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->mCallback:Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-virtual {v0, v1, p1, p2}, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V

    :cond_15
    return-void
.end method

.method public final synthetic lambda$onRedirectReceived$1(Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->mCallback:Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-virtual {v0, v1, p1, p2}, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$onResponseStarted$2()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 921
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmState(Lorg/chromium/net/impl/JavaUrlRequest;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 924
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->mCallback:Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmUrlResponseInfo(Lorg/chromium/net/impl/JavaUrlRequest;)Lorg/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V

    :cond_19
    return-void
.end method

.method public final synthetic lambda$onSucceeded$6(Lorg/chromium/net/UrlResponseInfo;)V
    .registers 4

    .line 1096
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->mCallback:Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-virtual {v0, v1, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p1

    .line 1098
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    const-string v1, "onSucceded"

    invoke-static {v0, v1, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$monFinalCallbackException(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1100
    :goto_10
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->maybeReportMetrics()V

    .line 1101
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {p1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fgetmEngine(Lorg/chromium/net/impl/JavaUrlRequest;)Lorg/chromium/net/impl/JavaCronetEngine;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/impl/JavaCronetEngine;->decrementActiveRequestCount()V

    return-void
.end method

.method public final maybeReportMetrics()V
    .registers 4

    .line 1059
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_7

    return-void

    .line 1064
    :cond_7
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    new-instance v1, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda8;-><init>(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;)V

    const-string v2, "maybeReportMetrics"

    invoke-static {v0, v1, v2}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$mexecuteOnExecutor(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public onCanceled(Lorg/chromium/net/UrlResponseInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "info"
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$mcloseResponseChannel(Lorg/chromium/net/impl/JavaUrlRequest;)V

    .line 1079
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda1;-><init>(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;)V

    const-string p1, "onCanceled"

    invoke-virtual {p0, v0, p1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->executeOnUserExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public onFailed(Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "urlResponseInfo",
            "e"
        }
    .end annotation

    .line 1107
    const-string v0, "onFailed"

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$mcloseResponseChannel(Lorg/chromium/net/impl/JavaUrlRequest;)V

    .line 1108
    new-instance v1, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda3;-><init>(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V

    .line 1119
    :try_start_c
    invoke-virtual {p0, v1, v0}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->executeOnUserExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/chromium/net/InlineExecutionProhibitedException; {:try_start_c .. :try_end_f} :catch_10

    return-void

    .line 1121
    :catch_10
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->mFallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_17

    .line 1122
    invoke-virtual {p0, v1, v0}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->executeOnFallbackExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public onReadCompleted(Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "info",
            "byteBuffer"
        }
    .end annotation

    .line 931
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda4;-><init>(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V

    const-string p1, "onReadCompleted"

    invoke-virtual {p0, v0, p1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->execute(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;Ljava/lang/String;)V

    return-void
.end method

.method public onRedirectReceived(Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "info",
            "newLocationUrl"
        }
    .end annotation

    .line 911
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda9;-><init>(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V

    const-string p1, "onRedirectReceived"

    invoke-virtual {p0, v0, p1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->execute(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;Ljava/lang/String;)V

    return-void
.end method

.method public onResponseStarted()V
    .registers 3

    .line 919
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda7;-><init>(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;)V

    const-string v1, "onResponseStarted"

    invoke-virtual {p0, v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->execute(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;Ljava/lang/String;)V

    return-void
.end method

.method public onSucceeded(Lorg/chromium/net/UrlResponseInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "info"
        }
    .end annotation

    .line 1093
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda2;-><init>(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;)V

    const-string p1, "onSucceeded"

    invoke-virtual {p0, v0, p1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->executeOnUserExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public sendStatus(Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "listener",
            "status"
        }
    .end annotation

    .line 895
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda0;-><init>(Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;I)V

    const-string p1, "sendStatus"

    invoke-virtual {p0, v0, p1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->executeOnUserExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda0 (org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda0;->f$0:Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

    iput p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda0;->f$0:Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

    iget v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->$r8$lambda$j74u9kjJ0lKsvlwf7wLiKfktJzQ(Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;I)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda1 (org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda1)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

.field public final synthetic f$1:Lorg/chromium/net/UrlResponseInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda1;->f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    iput-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda1;->f$1:Lorg/chromium/net/UrlResponseInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda1;->f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda1;->f$1:Lorg/chromium/net/UrlResponseInfo;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->$r8$lambda$U-zbUASvl6MLjUvoY4iIFSdcqHE(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda2 (org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda2)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

.field public final synthetic f$1:Lorg/chromium/net/UrlResponseInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda2;->f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    iput-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda2;->f$1:Lorg/chromium/net/UrlResponseInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda2;->f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda2;->f$1:Lorg/chromium/net/UrlResponseInfo;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->$r8$lambda$-ElxwdM5p9ntEnR5c00jhA5ySA4(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda3 (org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda3)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

.field public final synthetic f$1:Lorg/chromium/net/UrlResponseInfo;

.field public final synthetic f$2:Lorg/chromium/net/CronetException;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda3;->f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    iput-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda3;->f$1:Lorg/chromium/net/UrlResponseInfo;

    iput-object p3, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda3;->f$2:Lorg/chromium/net/CronetException;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda3;->f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda3;->f$1:Lorg/chromium/net/UrlResponseInfo;

    iget-object v2, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda3;->f$2:Lorg/chromium/net/CronetException;

    invoke-static {v0, v1, v2}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->$r8$lambda$YvZtwCJrGUY8GOrtOFEOSZ9D6T8(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda4 (org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda4)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

.field public final synthetic f$1:Lorg/chromium/net/UrlResponseInfo;

.field public final synthetic f$2:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda4;->f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    iput-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda4;->f$1:Lorg/chromium/net/UrlResponseInfo;

    iput-object p3, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda4;->f$2:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda4;->f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda4;->f$1:Lorg/chromium/net/UrlResponseInfo;

    iget-object v2, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda4;->f$2:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->$r8$lambda$L2MmDQF1IP9TU3XYnKRRuW-u5Xs(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda5 (org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda5)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->$r8$lambda$D3Lg1jcdUAIZEKduVfK-uga6A4E(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda6 (org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda6)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->$r8$lambda$_9B4GRLfAWjHu6e_D7q3tew4R6c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda7 (org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda7)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda7;->f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda7;->f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->$r8$lambda$WCDd2pugEgBS6NGVWYDm2iefcwo(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda8 (org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda8)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda8;->f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda8;->f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->$r8$lambda$wBc_bJEQLJvr4m_oENjqxQ9IYig(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda9 (org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda9)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

.field public final synthetic f$1:Lorg/chromium/net/UrlResponseInfo;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda9;->f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    iput-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda9;->f$1:Lorg/chromium/net/UrlResponseInfo;

    iput-object p3, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda9;->f$0:Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda9;->f$1:Lorg/chromium/net/UrlResponseInfo;

    iget-object v2, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->$r8$lambda$RXe1m0PdxXhwUrKBIben1xR2I_M(Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest.OutputStreamDataSink (org.chromium.net.impl.JavaUrlRequest$OutputStreamDataSink)
.class public final Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;
.super Lorg/chromium/net/impl/JavaUploadDataSinkBase;
.source "JavaUrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/JavaUrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OutputStreamDataSink"
.end annotation


# instance fields
.field public mOutputChannel:Ljava/nio/channels/WritableByteChannel;

.field public final mOutputChannelClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUrlConnection:Ljava/net/HttpURLConnection;

.field public mUrlConnectionOutputStream:Ljava/io/OutputStream;

.field public final synthetic this$0:Lorg/chromium/net/impl/JavaUrlRequest;


# direct methods
.method public constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/net/HttpURLConnection;Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "userExecutor",
            "executor",
            "urlConnection",
            "provider"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    .line 342
    invoke-direct {p0, p2, p3, p5}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/chromium/net/UploadDataProvider;)V

    .line 333
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mOutputChannelClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 343
    iput-object p4, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mUrlConnection:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public closeOutputChannel()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mOutputChannel:Ljava/nio/channels/WritableByteChannel;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mOutputChannelClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 360
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 362
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mOutputChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V

    :cond_13
    return-void
.end method

.method public finish()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->closeOutputChannel()V

    .line 369
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$mfireGetHeaders(Lorg/chromium/net/impl/JavaUrlRequest;)V

    return-void
.end method

.method public getErrorSettingRunnable(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$merrorSetting(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public getUploadErrorSettingRunnable(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$muploadErrorSetting(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public initializeRead()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mOutputChannel:Ljava/nio/channels/WritableByteChannel;

    if-nez v0, :cond_2b

    .line 349
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fputmAdditionalStatusDetails(Lorg/chromium/net/impl/JavaUrlRequest;I)V

    .line 350
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mUrlConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 351
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 352
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$fputmAdditionalStatusDetails(Lorg/chromium/net/impl/JavaUrlRequest;I)V

    .line 353
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mUrlConnectionOutputStream:Ljava/io/OutputStream;

    .line 354
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mOutputChannel:Ljava/nio/channels/WritableByteChannel;

    :cond_2b
    return-void
.end method

.method public initializeStart(J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalBytes"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_c

    .line 375
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    return-void

    .line 377
    :cond_c
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mUrlConnection:Ljava/net/HttpURLConnection;

    const/16 p2, 0x2000

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public processSuccessfulRead(Ljava/nio/ByteBuffer;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 384
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 385
    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mOutputChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 390
    :cond_f
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mUrlConnectionOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return v0
.end method

.method public processUploadError(Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->this$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->-$$Nest$menterUploadErrorState(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest.SerializingExecutor (org.chromium.net.impl.JavaUrlRequest$SerializingExecutor)
.class public final Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;
.super Ljava/lang/Object;
.source "JavaUrlRequest.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/JavaUrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializingExecutor"
.end annotation


# instance fields
.field public final mRunTasks:Ljava/lang/Runnable;

.field public mRunning:Z

.field public final mTaskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final mUnderlyingExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$73N2fPyyNbL0NrlrYZlCbgePDq0(Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->runTasks()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "underlyingExecutor"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor$$ExternalSyntheticLambda0;-><init>(Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;)V

    iput-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mRunTasks:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mTaskQueue:Ljava/util/ArrayDeque;

    .line 143
    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mUnderlyingExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 149
    :try_start_3
    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_10

    .line 151
    :try_start_8
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mUnderlyingExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mRunTasks:Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_8 .. :try_end_f} :catch_12
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    goto :goto_17

    :catchall_10
    move-exception p1

    goto :goto_19

    .line 154
    :catch_12
    :try_start_12
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 156
    :goto_17
    monitor-exit v0

    return-void

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_10

    throw p1
.end method

.method public final runTasks()V
    .registers 6

    .line 161
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 162
    :try_start_3
    iget-boolean v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mRunning:Z

    if-eqz v1, :cond_b

    .line 163
    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    goto :goto_4e

    .line 165
    :cond_b
    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    move v4, v2

    goto :goto_1a

    :cond_19
    move v4, v3

    .line 166
    :goto_1a
    iput-boolean v4, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mRunning:Z

    .line 167
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_9

    :goto_1d
    if-eqz v1, :cond_4d

    .line 171
    :try_start_1f
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_39

    .line 174
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 185
    :try_start_25
    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_31

    move v4, v2

    goto :goto_32

    :cond_31
    move v4, v3

    .line 186
    :goto_32
    iput-boolean v4, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mRunning:Z

    .line 188
    monitor-exit v0

    goto :goto_1d

    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_36

    throw v1

    :catchall_39
    move-exception v0

    .line 174
    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 178
    :try_start_3d
    iput-boolean v3, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mRunning:Z
    :try_end_3f
    .catchall {:try_start_3d .. :try_end_3f} :catchall_47

    .line 180
    :try_start_3f
    iget-object v2, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mUnderlyingExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->mRunTasks:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_46
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3f .. :try_end_46} :catch_49
    .catchall {:try_start_3f .. :try_end_46} :catchall_47

    goto :goto_49

    :catchall_47
    move-exception v0

    goto :goto_4b

    .line 188
    :catch_49
    :goto_49
    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_47

    .line 189
    throw v0

    .line 188
    :goto_4b
    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_47

    throw v0

    :cond_4d
    return-void

    .line 167
    :goto_4e
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_9

    throw v1
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$SerializingExecutor$$ExternalSyntheticLambda0 (org.chromium.net.impl.JavaUrlRequest$SerializingExecutor$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor$$ExternalSyntheticLambda0;->f$0:Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor$$ExternalSyntheticLambda0;->f$0:Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;->$r8$lambda$73N2fPyyNbL0NrlrYZlCbgePDq0(Lorg/chromium/net/impl/JavaUrlRequest$SerializingExecutor;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda0 (org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest;

.field public final synthetic f$1:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda0;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    iput-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda0;->f$1:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda0;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda0;->f$1:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->$r8$lambda$yRZjnistK_LSFIhhQZTjA_r2CdQ(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/nio/ByteBuffer;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda1 (org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda1)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest;

.field public final synthetic f$1:Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda1;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    iput-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda1;->f$1:Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda1;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda1;->f$1:Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->$r8$lambda$Wkt5Drg-UQxBhoSqw7stujcUC7Y(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda10 (org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda10)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest;

.field public final synthetic f$1:Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda10;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    iput-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda10;->f$1:Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda10;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda10;->f$1:Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->$r8$lambda$aHdNiaUE4hHQdj0jbu3NBWOvxDg(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda11 (org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda11)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda11;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda11;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUrlRequest;->$r8$lambda$02qzLzE_VPpZarHuSLhMV6jVulc(Lorg/chromium/net/impl/JavaUrlRequest;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda12 (org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda12)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda12;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda12;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUrlRequest;->$r8$lambda$_wWXlBR8WJ1mu3-hFNKhRrcaJoA(Lorg/chromium/net/impl/JavaUrlRequest;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda13 (org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda13)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/chromium/net/UrlResponseInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/lang/String;Lorg/chromium/net/UrlResponseInfo;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda13;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    iput-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda13;->f$2:Lorg/chromium/net/UrlResponseInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda13;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda13;->f$2:Lorg/chromium/net/UrlResponseInfo;

    invoke-static {v0, v1, v2}, Lorg/chromium/net/impl/JavaUrlRequest;->$r8$lambda$bR7r4RzNBFEh7BVU9n2PGU-qg68(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/lang/String;Lorg/chromium/net/UrlResponseInfo;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda14 (org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda14)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest;

.field public final synthetic f$1:Lorg/chromium/net/UrlResponseInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda14;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    iput-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda14;->f$1:Lorg/chromium/net/UrlResponseInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda14;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda14;->f$1:Lorg/chromium/net/UrlResponseInfo;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->$r8$lambda$r4_dhdLDT53SSUzE8bdt2qsjO3Q(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/UrlResponseInfo;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda15 (org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda15)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest;

.field public final synthetic f$1:Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda15;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    iput-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda15;->f$1:Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda15;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda15;->f$1:Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->$r8$lambda$PIFh1790Oeyx5a3X_KbAZQz5meg(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda16 (org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda16)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda16;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda16;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUrlRequest;->$r8$lambda$u-jVhrWpEjz9BKtoI5JBlbbMeKM(Lorg/chromium/net/impl/JavaUrlRequest;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda2 (org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda2)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda2;->f$0:Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda2;->f$0:Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    invoke-virtual {v0}, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->close()V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda3 (org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda3)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda3;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda3;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUrlRequest;->$r8$lambda$gJzZ29OPTZVGbpITnuc1VPRlWyc(Lorg/chromium/net/impl/JavaUrlRequest;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda4 (org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda4)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;IZI)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda4;->f$0:Ljava/util/concurrent/Executor;

    iput p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda4;->f$1:I

    iput-boolean p3, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda4;->f$2:Z

    iput p4, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda4;->f$3:I

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda4;->f$0:Ljava/util/concurrent/Executor;

    iget v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda4;->f$1:I

    iget-boolean v2, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda4;->f$2:Z

    iget v3, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda4;->f$3:I

    invoke-static {v0, v1, v2, v3, p1}, Lorg/chromium/net/impl/JavaUrlRequest;->$r8$lambda$ecpyyaPHU986yHiuxnDquO9vmIo(Ljava/util/concurrent/Executor;IZILjava/lang/Runnable;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda9 (org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda9)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(IZILjava/lang/Runnable;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda9;->f$0:I

    iput-boolean p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda9;->f$1:Z

    iput p3, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda9;->f$2:I

    iput-object p4, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda9;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda9;->f$0:I

    iget-boolean v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda9;->f$1:Z

    iget v2, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda9;->f$2:I

    iget-object v3, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda9;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/net/impl/JavaUrlRequest;->$r8$lambda$8Jo97Oa6sMq63KSfyXfVRlvw9I0(IZILjava/lang/Runnable;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda5 (org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda5)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda5;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda5;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUrlRequest;->$r8$lambda$38dzsNc1zmdQHSuBA_JyRMFyZtI(Lorg/chromium/net/impl/JavaUrlRequest;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda6 (org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda6)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda6;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda6;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUrlRequest;->$r8$lambda$GSdwLjQ4bmMzASRLACmvH5xfWmo(Lorg/chromium/net/impl/JavaUrlRequest;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda7 (org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda7)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->$r8$lambda$NQYCbe0U94j06X1DTQBiU1HE4R4(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda8 (org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda8)
.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest;

.field public final synthetic f$1:Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda8;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    iput-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda8;->f$1:Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda8;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda8;->f$1:Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->$r8$lambda$bMvZoSNaUr4APxhn21vnlY_ECAQ(Lorg/chromium/net/impl/JavaUrlRequest;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    return-void
.end method
