###### Class io.bidmachine.Debugger (io.bidmachine.Debugger)
.class public final Lio/bidmachine/Debugger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "features"

.field private static final FILE_NAME:Ljava/lang/String; = "DebugParameters.json"

.field public static final INSTANCE:Lio/bidmachine/Debugger;

.field private static final LOGGING_LOCK:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final PARAMETER_CONSENT:Ljava/lang/String; = "consent"

.field private static final PARAMETER_COPPA:Ljava/lang/String; = "coppa"

.field private static final PARAMETER_ENDPOINT:Ljava/lang/String; = "endpoint"

.field private static final PARAMETER_GDPR_STRING:Ljava/lang/String; = "GDPRString"

.field private static final PARAMETER_LOGGING_ENABLED:Ljava/lang/String; = "loggingEnabled"

.field private static final PARAMETER_SUBJECT_TO_GDPR:Ljava/lang/String; = "subjectToGDPR"

.field private static final PARAMETER_TEST_MODE:Ljava/lang/String; = "testMode"

.field private static final PARAMETER_US_PRIVACY_STRING:Ljava/lang/String; = "usPrivacyString"

.field private static final TAG:Ljava/lang/String; = "Debugger"

.field private static final TEST_MODE_LOCK:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final scope$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/Debugger;

    invoke-direct {v0}, Lio/bidmachine/Debugger;-><init>()V

    sput-object v0, Lio/bidmachine/Debugger;->INSTANCE:Lio/bidmachine/Debugger;

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/Debugger;->LOGGING_LOCK:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/Debugger;->TEST_MODE_LOCK:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    sget-object v0, Lio/bidmachine/Debugger$b;->a:Lio/bidmachine/Debugger$b;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/Debugger;->scope$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final applyAndLockIfExists(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/json/JSONObject;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 134
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p4, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 135
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_15
    return-void
.end method

.method private final checkGlobalSettings(Landroid/content/Context;Ljava/io/File;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Lio/bidmachine/Debugger;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lio/bidmachine/Debugger$a;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p2, v1}, Lio/bidmachine/Debugger$a;-><init>(Landroid/content/Context;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final getScope()Lkotlinx/coroutines/CoroutineScope;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/Debugger;->scope$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public static final isLoggingLock()Z
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/Debugger;->LOGGING_LOCK:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static synthetic isLoggingLock$annotations()V
    .registers 0

    .line 0
    return-void
.end method

.method public static final isTestModeLock()Z
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/Debugger;->TEST_MODE_LOCK:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static synthetic isTestModeLock$annotations()V
    .registers 0

    .line 0
    return-void
.end method

.method public static final setup(Landroid/content/Context;)V
    .registers 5

    const-string v0, "Debugger"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_7
    invoke-static {p0}, Lio/bidmachine/util/file/FileUtilsKt;->getExternalDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_35

    .line 2
    :cond_e
    new-instance v2, Ljava/io/File;

    const-string v3, "features/DebugParameters.json"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_23

    .line 4
    sget-object v1, Lio/bidmachine/Debugger;->INSTANCE:Lio/bidmachine/Debugger;

    invoke-direct {v1, p0, v2}, Lio/bidmachine/Debugger;->checkGlobalSettings(Landroid/content/Context;Ljava/io/File;)V

    return-void

    :catchall_21
    move-exception p0

    goto :goto_32

    .line 7
    :cond_23
    const-string p0, "Debug file found"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sget-object p0, Lio/bidmachine/Debugger;->INSTANCE:Lio/bidmachine/Debugger;

    invoke-static {v2}, Lio/bidmachine/util/file/FileUtilsKt;->readSafely(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/bidmachine/Debugger;->setupFromJson$bidmachine_android_sdk_ba_3_8_0(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_21

    return-void

    .line 11
    :goto_32
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    return-void
.end method


# virtual methods
.method public final setupFromJson$bidmachine_android_sdk_ba_3_8_0(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_b2

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_b2

    .line 4
    :cond_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    sget-object p1, Lio/bidmachine/Debugger;->LOGGING_LOCK:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    const-string v1, "loggingEnabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_24

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 9
    invoke-static {v1}, Lio/bidmachine/BidMachine;->setLoggingEnabled(Z)V

    .line 10
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    :cond_24
    sget-object p1, Lio/bidmachine/Debugger;->TEST_MODE_LOCK:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    const-string v1, "testMode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 13
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 14
    invoke-static {v1}, Lio/bidmachine/BidMachine;->setTestMode(Z)V

    .line 15
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    :cond_38
    const-string p1, "endpoint"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 17
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "jsonObject.optString(PARAMETER_ENDPOINT)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_60

    invoke-static {p1}, Lio/bidmachine/util/Utils;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 19
    invoke-static {p1}, Lio/bidmachine/BidMachine;->setEndpoint(Ljava/lang/String;)V

    .line 22
    :cond_60
    const-string p1, "coppa"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 23
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/BidMachine;->setCoppa(Ljava/lang/Boolean;)V

    .line 26
    :cond_73
    const-string p1, "usPrivacyString"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 27
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p1}, Lio/bidmachine/BidMachine;->setUSPrivacyString(Ljava/lang/String;)V

    .line 30
    :cond_82
    const-string p1, "subjectToGDPR"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 31
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 32
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/BidMachine;->setSubjectToGDPR(Ljava/lang/Boolean;)V

    .line 34
    :cond_95
    const-string p1, "consent"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 35
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 36
    const-string v1, "GDPRString"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 37
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_af

    :cond_ae
    const/4 v0, 0x0

    .line 41
    :goto_af
    invoke-static {p1, v0}, Lio/bidmachine/BidMachine;->setConsentConfig(ZLjava/lang/String;)V

    :cond_b2
    :goto_b2
    return-void
.end method

###### Class io.bidmachine.Debugger.a (io.bidmachine.Debugger$a)
.class public final Lio/bidmachine/Debugger$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/Debugger;->checkGlobalSettings(Landroid/content/Context;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/Debugger$a;->b:Landroid/content/Context;

    iput-object p2, p0, Lio/bidmachine/Debugger$a;->c:Ljava/io/File;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/Debugger$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/Debugger$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/Debugger$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance p1, Lio/bidmachine/Debugger$a;

    iget-object v0, p0, Lio/bidmachine/Debugger$a;->b:Landroid/content/Context;

    iget-object v1, p0, Lio/bidmachine/Debugger$a;->c:Ljava/io/File;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/Debugger$a;-><init>(Landroid/content/Context;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/Debugger$a;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const-string v0, "Debugger"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v1, p0, Lio/bidmachine/Debugger$a;->a:I

    if-nez v1, :cond_41

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5
    :try_start_c
    iget-object p1, p0, Lio/bidmachine/Debugger$a;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "bmsdk_dfp"

    invoke-static {p1, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1f

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1d
    move-exception p1

    goto :goto_3b

    .line 6
    :cond_1f
    const-string v1, "Debug config found, restart the app to apply"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v1, p0, Lio/bidmachine/Debugger$a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 8
    :cond_33
    iget-object v1, p0, Lio/bidmachine/Debugger$a;->c:Ljava/io/File;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p1, v3, v2, v3}, Lkotlin/io/FilesKt__FileReadWriteKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_1d

    goto :goto_3e

    .line 10
    :goto_3b
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :goto_3e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 13
    :cond_41
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.Debugger.b (io.bidmachine.Debugger$b)
.class public final Lio/bidmachine/Debugger$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/Debugger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/Debugger$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/Debugger$b;

    invoke-direct {v0}, Lio/bidmachine/Debugger$b;-><init>()V

    sput-object v0, Lio/bidmachine/Debugger$b;->a:Lio/bidmachine/Debugger$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/CoroutineScope;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/Debugger$b;->a()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method
