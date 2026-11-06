###### Class ads_mobile_sdk.iw3 (ads_mobile_sdk.iw3)
.class public final Lads_mobile_sdk/iw3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/j92;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/j92;)V
    .registers 3

    .line 1
    const-string v0, "nativeVideoViewabilityMonitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lads_mobile_sdk/iw3;->a:Lads_mobile_sdk/j92;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 19
    iget-object p1, p0, Lads_mobile_sdk/iw3;->a:Lads_mobile_sdk/j92;

    .line 20
    iget-object p1, p1, Lads_mobile_sdk/j92;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 22
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->E:Lads_mobile_sdk/u11;

    return-object v0
.end method
