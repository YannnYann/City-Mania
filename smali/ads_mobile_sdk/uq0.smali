###### Class ads_mobile_sdk.uq0 (ads_mobile_sdk.uq0)
.class public final Lads_mobile_sdk/uq0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/AbstractExecutorService;

.field public final b:Lads_mobile_sdk/fr3;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Lads_mobile_sdk/fr3;)V
    .registers 4

    .line 1
    const-string v0, "executorService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threadFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/uq0;->a:Ljava/util/concurrent/AbstractExecutorService;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/uq0;->b:Lads_mobile_sdk/fr3;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/AbstractExecutorService;
    .registers 2

    .line 230
    iget-object v0, p0, Lads_mobile_sdk/uq0;->a:Ljava/util/concurrent/AbstractExecutorService;

    return-object v0
.end method
