###### Class ads_mobile_sdk.fh3 (ads_mobile_sdk.fh3)
.class public final Lads_mobile_sdk/fh3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;

.field public final b:Lads_mobile_sdk/dw2;

.field public final c:Lads_mobile_sdk/dw2;

.field public final d:Lads_mobile_sdk/dw2;

.field public final e:Lads_mobile_sdk/dw2;

.field public final f:Lads_mobile_sdk/dw2;

.field public final g:Lads_mobile_sdk/dw2;

.field public final h:Lads_mobile_sdk/dw2;

.field public final i:Lads_mobile_sdk/dw2;

.field public final j:Lads_mobile_sdk/dw2;

.field public final k:Lads_mobile_sdk/dw2;

.field public final l:Lads_mobile_sdk/dw2;

.field public final m:Lads_mobile_sdk/dw2;

.field public final n:Lads_mobile_sdk/dw2;

.field public final o:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/ol0;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/vh1;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/ol0;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/ol0;)V
    .registers 16

    .line 1
    sget-object v0, Lads_mobile_sdk/y41;->a:Lads_mobile_sdk/z41;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/fh3;->a:Lads_mobile_sdk/dw2;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/fh3;->b:Lads_mobile_sdk/dw2;

    .line 5
    iput-object p3, p0, Lads_mobile_sdk/fh3;->c:Lads_mobile_sdk/dw2;

    .line 6
    iput-object p4, p0, Lads_mobile_sdk/fh3;->d:Lads_mobile_sdk/dw2;

    .line 7
    iput-object p5, p0, Lads_mobile_sdk/fh3;->e:Lads_mobile_sdk/dw2;

    .line 8
    iput-object p6, p0, Lads_mobile_sdk/fh3;->f:Lads_mobile_sdk/dw2;

    .line 9
    iput-object p7, p0, Lads_mobile_sdk/fh3;->g:Lads_mobile_sdk/dw2;

    .line 10
    iput-object p8, p0, Lads_mobile_sdk/fh3;->h:Lads_mobile_sdk/dw2;

    .line 11
    iput-object p9, p0, Lads_mobile_sdk/fh3;->i:Lads_mobile_sdk/dw2;

    .line 12
    iput-object p10, p0, Lads_mobile_sdk/fh3;->j:Lads_mobile_sdk/dw2;

    .line 13
    iput-object p11, p0, Lads_mobile_sdk/fh3;->k:Lads_mobile_sdk/dw2;

    .line 14
    iput-object p12, p0, Lads_mobile_sdk/fh3;->l:Lads_mobile_sdk/dw2;

    .line 15
    iput-object p13, p0, Lads_mobile_sdk/fh3;->m:Lads_mobile_sdk/dw2;

    .line 16
    iput-object p14, p0, Lads_mobile_sdk/fh3;->n:Lads_mobile_sdk/dw2;

    .line 17
    iput-object v0, p0, Lads_mobile_sdk/fh3;->o:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lads_mobile_sdk/fh3;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, v0, Lads_mobile_sdk/fh3;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    iget-object v1, v0, Lads_mobile_sdk/fh3;->c:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    iget-object v1, v0, Lads_mobile_sdk/fh3;->d:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, v0, Lads_mobile_sdk/fh3;->e:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    iget-object v1, v0, Lads_mobile_sdk/fh3;->f:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lads_mobile_sdk/g83;

    iget-object v1, v0, Lads_mobile_sdk/fh3;->g:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lads_mobile_sdk/ks3;

    iget-object v1, v0, Lads_mobile_sdk/fh3;->h:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lads_mobile_sdk/yf3;

    iget-object v1, v0, Lads_mobile_sdk/fh3;->i:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

    iget-object v1, v0, Lads_mobile_sdk/fh3;->j:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lads_mobile_sdk/jb3;

    iget-object v1, v0, Lads_mobile_sdk/fh3;->k:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lads_mobile_sdk/f13;

    iget-object v1, v0, Lads_mobile_sdk/fh3;->l:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lads_mobile_sdk/ex0;

    iget-object v1, v0, Lads_mobile_sdk/fh3;->m:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lads_mobile_sdk/j43;

    iget-object v1, v0, Lads_mobile_sdk/fh3;->n:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lads_mobile_sdk/ur3;

    iget-object v1, v0, Lads_mobile_sdk/fh3;->o:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/google/gson/Gson;

    .line 3
    new-instance v2, Lads_mobile_sdk/eh3;

    invoke-direct/range {v2 .. v17}, Lads_mobile_sdk/eh3;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;ILcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;Lads_mobile_sdk/yf3;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lads_mobile_sdk/jb3;Lads_mobile_sdk/f13;Lads_mobile_sdk/ex0;Lads_mobile_sdk/j43;Lads_mobile_sdk/ur3;Lcom/google/gson/Gson;)V

    return-object v2
.end method
