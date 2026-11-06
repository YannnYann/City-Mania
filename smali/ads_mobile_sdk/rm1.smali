###### Class ads_mobile_sdk.rm1 (ads_mobile_sdk.rm1)
.class public final Lads_mobile_sdk/rm1;
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

.field public final p:Lads_mobile_sdk/dw2;

.field public final q:Lads_mobile_sdk/dw2;

.field public final r:Lads_mobile_sdk/dw2;

.field public final s:Lads_mobile_sdk/dw2;

.field public final t:Lads_mobile_sdk/dw2;

.field public final u:Lads_mobile_sdk/dw2;

.field public final v:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/vh1;Lads_mobile_sdk/vh1;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/ol0;Lads_mobile_sdk/dw2;Lads_mobile_sdk/vh1;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/ol0;Lads_mobile_sdk/vh1;Lads_mobile_sdk/dw2;Lads_mobile_sdk/vh1;Lads_mobile_sdk/dw2;)V
    .registers 23

    .line 1
    sget-object v0, Lads_mobile_sdk/y41;->a:Lads_mobile_sdk/z41;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/rm1;->a:Lads_mobile_sdk/dw2;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/rm1;->b:Lads_mobile_sdk/dw2;

    .line 5
    iput-object p3, p0, Lads_mobile_sdk/rm1;->c:Lads_mobile_sdk/dw2;

    .line 6
    iput-object p4, p0, Lads_mobile_sdk/rm1;->d:Lads_mobile_sdk/dw2;

    .line 7
    iput-object p5, p0, Lads_mobile_sdk/rm1;->e:Lads_mobile_sdk/dw2;

    .line 8
    iput-object p6, p0, Lads_mobile_sdk/rm1;->f:Lads_mobile_sdk/dw2;

    .line 9
    iput-object p7, p0, Lads_mobile_sdk/rm1;->g:Lads_mobile_sdk/dw2;

    .line 10
    iput-object p8, p0, Lads_mobile_sdk/rm1;->h:Lads_mobile_sdk/dw2;

    .line 11
    iput-object p9, p0, Lads_mobile_sdk/rm1;->i:Lads_mobile_sdk/dw2;

    .line 12
    iput-object p10, p0, Lads_mobile_sdk/rm1;->j:Lads_mobile_sdk/dw2;

    .line 13
    iput-object p11, p0, Lads_mobile_sdk/rm1;->k:Lads_mobile_sdk/dw2;

    .line 14
    iput-object p12, p0, Lads_mobile_sdk/rm1;->l:Lads_mobile_sdk/dw2;

    .line 15
    iput-object p13, p0, Lads_mobile_sdk/rm1;->m:Lads_mobile_sdk/dw2;

    .line 16
    iput-object p14, p0, Lads_mobile_sdk/rm1;->n:Lads_mobile_sdk/dw2;

    move-object/from16 p1, p15

    .line 17
    iput-object p1, p0, Lads_mobile_sdk/rm1;->o:Lads_mobile_sdk/dw2;

    move-object/from16 p1, p16

    .line 18
    iput-object p1, p0, Lads_mobile_sdk/rm1;->p:Lads_mobile_sdk/dw2;

    .line 19
    iput-object v0, p0, Lads_mobile_sdk/rm1;->q:Lads_mobile_sdk/dw2;

    move-object/from16 p1, p17

    .line 20
    iput-object p1, p0, Lads_mobile_sdk/rm1;->r:Lads_mobile_sdk/dw2;

    move-object/from16 p1, p18

    .line 21
    iput-object p1, p0, Lads_mobile_sdk/rm1;->s:Lads_mobile_sdk/dw2;

    move-object/from16 p1, p19

    .line 22
    iput-object p1, p0, Lads_mobile_sdk/rm1;->t:Lads_mobile_sdk/dw2;

    move-object/from16 p1, p20

    .line 23
    iput-object p1, p0, Lads_mobile_sdk/rm1;->u:Lads_mobile_sdk/dw2;

    move-object/from16 p1, p21

    .line 24
    iput-object p1, p0, Lads_mobile_sdk/rm1;->v:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 26

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lads_mobile_sdk/rm1;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->c:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lads_mobile_sdk/i2;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->d:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lads_mobile_sdk/zy;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->e:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lads_mobile_sdk/ks3;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->f:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/Optional;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->g:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lads_mobile_sdk/v3;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->h:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lads_mobile_sdk/fm0;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->i:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lads_mobile_sdk/s02;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->j:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lads_mobile_sdk/j12;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->k:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lads_mobile_sdk/t32;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->l:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lads_mobile_sdk/b42;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->m:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lads_mobile_sdk/hl1;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->n:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/util/Optional;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->o:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lads_mobile_sdk/bn2;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->p:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lads_mobile_sdk/s93;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->q:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/google/gson/Gson;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->r:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lads_mobile_sdk/ur3;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->s:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lads_mobile_sdk/eo2;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->t:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lads_mobile_sdk/ex0;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->u:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v1, v0, Lads_mobile_sdk/rm1;->v:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lads_mobile_sdk/nr3;

    .line 3
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-direct/range {v2 .. v24}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;-><init>(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ks3;Ljava/util/Optional;Lads_mobile_sdk/v3;Lads_mobile_sdk/fm0;Lads_mobile_sdk/s02;Lads_mobile_sdk/j12;Lads_mobile_sdk/t32;Lads_mobile_sdk/b42;Lads_mobile_sdk/hl1;Ljava/util/Optional;Lads_mobile_sdk/bn2;Lads_mobile_sdk/s93;Lcom/google/gson/Gson;Lads_mobile_sdk/ur3;Lads_mobile_sdk/eo2;Lads_mobile_sdk/ex0;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/nr3;)V

    return-object v2
.end method
