###### Class ads_mobile_sdk.vo (ads_mobile_sdk.vo)
.class public abstract Lads_mobile_sdk/vo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)Lkotlinx/coroutines/channels/Channel;
    .registers 7

    .line 1
    const-string v0, "adResponse"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vf0;

    .line 3
    iget-object v0, v0, Lads_mobile_sdk/vf0;->q3:Lads_mobile_sdk/dw2;

    .line 4
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/cm1;

    .line 5
    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v1

    .line 6
    check-cast v1, Lads_mobile_sdk/vf0;

    .line 7
    iget-object v1, v1, Lads_mobile_sdk/vf0;->c:Lads_mobile_sdk/vf0;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    sget-object v2, Lads_mobile_sdk/j53;->f:Lads_mobile_sdk/j53;

    .line 10
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    new-instance v4, Lads_mobile_sdk/wh0;

    invoke-direct {v4, v1, v2, p0, v3}, Lads_mobile_sdk/wh0;-><init>(Lads_mobile_sdk/vf0;Lads_mobile_sdk/j53;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 12
    iget-object p0, v4, Lads_mobile_sdk/wh0;->i:Lads_mobile_sdk/dw2;

    invoke-interface {p0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/zy2;

    .line 13
    new-instance v1, Lads_mobile_sdk/to;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lads_mobile_sdk/to;-><init>(Lads_mobile_sdk/zy2;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v1}, Lads_mobile_sdk/cm1;->a(Lkotlin/jvm/functions/Function1;)V

    .line 14
    iget-object p0, v4, Lads_mobile_sdk/wh0;->h:Lads_mobile_sdk/dw2;

    invoke-interface {p0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method
