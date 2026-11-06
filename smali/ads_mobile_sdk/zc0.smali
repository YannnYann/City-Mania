###### Class ads_mobile_sdk.zc0 (ads_mobile_sdk.zc0)
.class public final Lads_mobile_sdk/zc0;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lads_mobile_sdk/g83;

.field public final d:Lads_mobile_sdk/ur3;

.field public e:Landroidx/browser/customtabs/CustomTabsSession;

.field public f:Landroidx/browser/customtabs/CustomTabsClient;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/ur3;)V
    .registers 6

    .line 1
    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 35
    iput-object p1, p0, Lads_mobile_sdk/zc0;->a:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lads_mobile_sdk/zc0;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 37
    iput-object p3, p0, Lads_mobile_sdk/zc0;->c:Lads_mobile_sdk/g83;

    .line 38
    iput-object p4, p0, Lads_mobile_sdk/zc0;->d:Lads_mobile_sdk/ur3;

    .line 43
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/zc0;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .registers 9

    .line 1
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "client"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p2, p0, Lads_mobile_sdk/zc0;->f:Landroidx/browser/customtabs/CustomTabsClient;

    const-wide/16 v0, 0x0

    .line 55
    :try_start_e
    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    .line 59
    new-instance p1, Lads_mobile_sdk/xc0;

    invoke-direct {p1, p0}, Lads_mobile_sdk/xc0;-><init>(Lads_mobile_sdk/zc0;)V

    .line 60
    invoke-virtual {p2, p1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p1

    .line 61
    iput-object p1, p0, Lads_mobile_sdk/zc0;->e:Landroidx/browser/customtabs/CustomTabsSession;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception v0

    move-object p1, v0

    const/4 p2, 0x0

    .line 77
    iput-object p2, p0, Lads_mobile_sdk/zc0;->e:Landroidx/browser/customtabs/CustomTabsSession;

    .line 78
    iget-object v0, p0, Lads_mobile_sdk/zc0;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/yc0;

    invoke-direct {v1, p0, p1, p2}, Lads_mobile_sdk/yc0;-><init>(Lads_mobile_sdk/zc0;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)V

    move-object p1, v1

    .line 79
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 80
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p1, p2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lads_mobile_sdk/zc0;->e:Landroidx/browser/customtabs/CustomTabsSession;

    .line 47
    iput-object p1, p0, Lads_mobile_sdk/zc0;->f:Landroidx/browser/customtabs/CustomTabsClient;

    return-void
.end method
