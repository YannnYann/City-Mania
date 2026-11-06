###### Class ads_mobile_sdk.r71 (ads_mobile_sdk.r71)
.class public final Lads_mobile_sdk/r71;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/s71;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/s71;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/r71;->a:Lads_mobile_sdk/s71;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/r71;->a:Lads_mobile_sdk/s71;

    .line 3
    iget-object v0, v0, Lads_mobile_sdk/s71;->a:Lads_mobile_sdk/a81;

    .line 4
    iget-object v1, v0, Lads_mobile_sdk/a81;->e:Lkotlin/Lazy;

    .line 5
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 6
    iget-object v0, v0, Lads_mobile_sdk/a81;->c:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lads_mobile_sdk/e01;

    goto :goto_29

    .line 10
    :cond_1e
    iget-object v0, v0, Lads_mobile_sdk/a81;->b:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lads_mobile_sdk/e01;

    .line 12
    :goto_29
    iget-object v1, p0, Lads_mobile_sdk/r71;->a:Lads_mobile_sdk/s71;

    .line 13
    iget-object v1, v1, Lads_mobile_sdk/s71;->c:Lads_mobile_sdk/vk0;

    if-eqz v1, :cond_32

    .line 14
    invoke-interface {v0, v1}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/vk0;)V

    .line 15
    :cond_32
    iget-object v1, p0, Lads_mobile_sdk/r71;->a:Lads_mobile_sdk/s71;

    .line 16
    iget-object v1, v1, Lads_mobile_sdk/s71;->b:Lads_mobile_sdk/uv;

    if-eqz v1, :cond_3b

    .line 17
    invoke-interface {v0, v1}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/uv;)V

    :cond_3b
    return-object v0
.end method
