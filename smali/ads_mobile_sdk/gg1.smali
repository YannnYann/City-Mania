###### Class ads_mobile_sdk.gg1 (ads_mobile_sdk.gg1)
.class public final Lads_mobile_sdk/gg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/fg1;


# instance fields
.field public final a:Lads_mobile_sdk/hg1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/hg1;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lads_mobile_sdk/gg1;->a:Lads_mobile_sdk/hg1;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/if1;Lads_mobile_sdk/r31;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)Lads_mobile_sdk/eg1;
    .registers 22

    move-object/from16 v0, p0

    .line 35
    iget-object v1, v0, Lads_mobile_sdk/gg1;->a:Lads_mobile_sdk/hg1;

    .line 36
    iget-object v2, v1, Lads_mobile_sdk/hg1;->a:Lads_mobile_sdk/dw2;

    .line 37
    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lads_mobile_sdk/f0;

    iget-object v2, v1, Lads_mobile_sdk/hg1;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/content/Context;

    iget-object v2, v1, Lads_mobile_sdk/hg1;->c:Lads_mobile_sdk/dw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, v1, Lads_mobile_sdk/hg1;->d:Lads_mobile_sdk/dw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lkotlin/coroutines/CoroutineContext;

    iget-object v2, v1, Lads_mobile_sdk/hg1;->e:Lads_mobile_sdk/dw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, v1, Lads_mobile_sdk/hg1;->f:Lads_mobile_sdk/dw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/coroutines/CoroutineContext;

    iget-object v2, v1, Lads_mobile_sdk/hg1;->g:Lads_mobile_sdk/dw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lads_mobile_sdk/ex0;

    iget-object v2, v1, Lads_mobile_sdk/hg1;->h:Lads_mobile_sdk/dw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lads_mobile_sdk/ur3;

    iget-object v2, v1, Lads_mobile_sdk/hg1;->i:Lads_mobile_sdk/dw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    iget-object v2, v1, Lads_mobile_sdk/hg1;->j:Lads_mobile_sdk/dw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lads_mobile_sdk/o21;

    iget-object v1, v1, Lads_mobile_sdk/hg1;->k:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lads_mobile_sdk/lo;

    .line 38
    new-instance v3, Lads_mobile_sdk/eg1;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v17}, Lads_mobile_sdk/eg1;-><init>(Lads_mobile_sdk/if1;Lads_mobile_sdk/r31;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;Lads_mobile_sdk/f0;Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ex0;Lads_mobile_sdk/ur3;Ljava/lang/String;Lads_mobile_sdk/o21;Lads_mobile_sdk/lo;)V

    return-object v3
.end method
