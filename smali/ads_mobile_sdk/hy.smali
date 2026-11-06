###### Class ads_mobile_sdk.hy (ads_mobile_sdk.hy)
.class public final Lads_mobile_sdk/hy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 2
    iget-object p1, p1, Lads_mobile_sdk/r31;->p:Lads_mobile_sdk/ay0;

    if-eqz p1, :cond_9

    .line 3
    sget-object p2, Lads_mobile_sdk/ky;->c:Lads_mobile_sdk/ky;

    invoke-interface {p1, p2}, Lads_mobile_sdk/ay0;->a(Lads_mobile_sdk/ky;)V

    .line 4
    :cond_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->q:Lads_mobile_sdk/u11;

    return-object v0
.end method

.method public final i()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
