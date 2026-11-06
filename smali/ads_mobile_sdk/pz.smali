###### Class ads_mobile_sdk.pz (ads_mobile_sdk.pz)
.class public final Lads_mobile_sdk/pz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lads_mobile_sdk/pz;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/pz;

    invoke-direct {v0}, Lads_mobile_sdk/pz;-><init>()V

    sput-object v0, Lads_mobile_sdk/pz;->a:Lads_mobile_sdk/pz;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IJLjava/lang/String;)Lads_mobile_sdk/uq0;
    .registers 14

    .line 1
    const-string v0, "poolName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    new-instance v8, Lads_mobile_sdk/fr3;

    const/4 v0, 0x0

    .line 169
    invoke-direct {v8, p4, v0}, Lads_mobile_sdk/fr3;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    sget p4, Lads_mobile_sdk/sz;->$r8$clinit:I

    .line 171
    const-string p4, "threadFactory"

    invoke-static {v8, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 356
    invoke-static {p2, p3}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v4

    .line 357
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 358
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, p1

    move v2, p1

    .line 359
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 360
    new-instance p1, Lads_mobile_sdk/uq0;

    invoke-direct {p1, v1, v8}, Lads_mobile_sdk/uq0;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lads_mobile_sdk/fr3;)V

    return-object p1
.end method
