###### Class ads_mobile_sdk.k02 (ads_mobile_sdk.k02)
.class public final Lads_mobile_sdk/k02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/k8;


# instance fields
.field public final a:Lads_mobile_sdk/aq;

.field public final b:Lads_mobile_sdk/u82;

.field public final c:Lads_mobile_sdk/cw2;

.field public final d:Lads_mobile_sdk/ks3;

.field public final e:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final f:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

.field public final g:J

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:Lads_mobile_sdk/j53;

.field public final k:I

.field public final l:Z

.field public final m:Lads_mobile_sdk/md1;

.field public final n:Z

.field public final o:Lads_mobile_sdk/gj1;

.field public final p:Lads_mobile_sdk/i82;

.field public final q:Lads_mobile_sdk/pb;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/aq;Lads_mobile_sdk/u82;Lads_mobile_sdk/dw2;Lads_mobile_sdk/ks3;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;JILjava/lang/String;Lads_mobile_sdk/j53;IZLads_mobile_sdk/md1;ZLads_mobile_sdk/gj1;Lads_mobile_sdk/i82;Lads_mobile_sdk/pb;)V
    .registers 28

    move-object v0, p5

    move-object v1, p6

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-object/from16 v4, p14

    move-object/from16 v5, p16

    move-object/from16 v6, p17

    move-object/from16 v7, p18

    .line 1
    const-string v8, "bannerRendererProvider"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "nativeRendererProvider"

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "multiFormatAdRenderComponentProvider"

    invoke-static {p3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "traceMetaSet"

    invoke-static {p4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "baseRequest"

    invoke-static {p5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "nativeRequest"

    invoke-static {p6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "requestId"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "requestType"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "inspectorAdLifecycleMonitor"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "refreshUpdateListener"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "recursiveAdLoader"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "adSourceResponseInfoCollector"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lads_mobile_sdk/k02;->a:Lads_mobile_sdk/aq;

    .line 7
    iput-object p2, p0, Lads_mobile_sdk/k02;->b:Lads_mobile_sdk/u82;

    .line 8
    iput-object p3, p0, Lads_mobile_sdk/k02;->c:Lads_mobile_sdk/cw2;

    .line 9
    iput-object p4, p0, Lads_mobile_sdk/k02;->d:Lads_mobile_sdk/ks3;

    .line 10
    iput-object v0, p0, Lads_mobile_sdk/k02;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 11
    iput-object v1, p0, Lads_mobile_sdk/k02;->f:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    move-wide/from16 p1, p7

    .line 12
    iput-wide p1, p0, Lads_mobile_sdk/k02;->g:J

    move/from16 p1, p9

    .line 13
    iput p1, p0, Lads_mobile_sdk/k02;->h:I

    .line 14
    iput-object v2, p0, Lads_mobile_sdk/k02;->i:Ljava/lang/String;

    .line 15
    iput-object v3, p0, Lads_mobile_sdk/k02;->j:Lads_mobile_sdk/j53;

    move/from16 p1, p12

    .line 16
    iput p1, p0, Lads_mobile_sdk/k02;->k:I

    move/from16 p1, p13

    .line 17
    iput-boolean p1, p0, Lads_mobile_sdk/k02;->l:Z

    .line 18
    iput-object v4, p0, Lads_mobile_sdk/k02;->m:Lads_mobile_sdk/md1;

    move/from16 p1, p15

    .line 19
    iput-boolean p1, p0, Lads_mobile_sdk/k02;->n:Z

    .line 20
    iput-object v5, p0, Lads_mobile_sdk/k02;->o:Lads_mobile_sdk/gj1;

    .line 21
    iput-object v6, p0, Lads_mobile_sdk/k02;->p:Lads_mobile_sdk/i82;

    .line 22
    iput-object v7, p0, Lads_mobile_sdk/k02;->q:Lads_mobile_sdk/pb;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;)Lads_mobile_sdk/h8;
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    const-string v3, "serverTransaction"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "adConfiguration"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v3, v0, Lads_mobile_sdk/k02;->c:Lads_mobile_sdk/cw2;

    .line 3
    invoke-interface {v3}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/yz1;

    .line 4
    iget-object v4, v0, Lads_mobile_sdk/k02;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    check-cast v3, Lads_mobile_sdk/ih0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iput-object v4, v3, Lads_mobile_sdk/ih0;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 7
    iget-object v4, v0, Lads_mobile_sdk/k02;->f:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iput-object v4, v3, Lads_mobile_sdk/ih0;->p:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iput-object v2, v3, Lads_mobile_sdk/ih0;->c:Lads_mobile_sdk/i2;

    .line 12
    iget-object v4, v1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object v4, v4, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iput-object v4, v3, Lads_mobile_sdk/ih0;->b:Lads_mobile_sdk/zy;

    .line 15
    iput-object v1, v3, Lads_mobile_sdk/ih0;->d:Lads_mobile_sdk/ec3;

    .line 16
    iget-object v4, v0, Lads_mobile_sdk/k02;->j:Lads_mobile_sdk/j53;

    .line 17
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iput-object v4, v3, Lads_mobile_sdk/ih0;->h:Lads_mobile_sdk/j53;

    .line 19
    iget-object v4, v0, Lads_mobile_sdk/k02;->d:Lads_mobile_sdk/ks3;

    iget-object v4, v4, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    .line 20
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    iput-object v4, v3, Lads_mobile_sdk/ih0;->j:Lads_mobile_sdk/n03;

    .line 22
    iget-object v4, v0, Lads_mobile_sdk/k02;->d:Lads_mobile_sdk/ks3;

    iget-object v4, v4, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    .line 23
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iput-object v4, v3, Lads_mobile_sdk/ih0;->k:Lads_mobile_sdk/tn1;

    .line 25
    iget-object v4, v0, Lads_mobile_sdk/k02;->i:Ljava/lang/String;

    .line 26
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    iput-object v4, v3, Lads_mobile_sdk/ih0;->i:Ljava/lang/String;

    .line 28
    iget-wide v4, v0, Lads_mobile_sdk/k02;->g:J

    .line 29
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lads_mobile_sdk/ih0;->e:Ljava/lang/Long;

    .line 30
    iget v4, v0, Lads_mobile_sdk/k02;->h:I

    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lads_mobile_sdk/ih0;->f:Ljava/lang/Integer;

    .line 32
    iget v4, v0, Lads_mobile_sdk/k02;->k:I

    .line 33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lads_mobile_sdk/ih0;->o:Ljava/lang/Integer;

    .line 34
    iget-boolean v4, v0, Lads_mobile_sdk/k02;->l:Z

    .line 35
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lads_mobile_sdk/ih0;->l:Ljava/lang/Boolean;

    .line 36
    iget-object v4, v0, Lads_mobile_sdk/k02;->m:Lads_mobile_sdk/md1;

    .line 37
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    iput-object v4, v3, Lads_mobile_sdk/ih0;->m:Lads_mobile_sdk/md1;

    .line 39
    iget-boolean v4, v0, Lads_mobile_sdk/k02;->n:Z

    .line 40
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lads_mobile_sdk/ih0;->q:Ljava/lang/Boolean;

    .line 41
    iget-object v4, v0, Lads_mobile_sdk/k02;->o:Lads_mobile_sdk/gj1;

    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    iput-object v4, v3, Lads_mobile_sdk/ih0;->r:Lads_mobile_sdk/gj1;

    .line 44
    iget-object v4, v0, Lads_mobile_sdk/k02;->p:Lads_mobile_sdk/i82;

    .line 45
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    iput-object v4, v3, Lads_mobile_sdk/ih0;->s:Lads_mobile_sdk/i82;

    .line 47
    iget-object v4, v0, Lads_mobile_sdk/k02;->q:Lads_mobile_sdk/pb;

    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    iput-object v4, v3, Lads_mobile_sdk/ih0;->n:Lads_mobile_sdk/pb;

    .line 50
    iget-object v4, v3, Lads_mobile_sdk/ih0;->b:Lads_mobile_sdk/zy;

    const-class v5, Lads_mobile_sdk/zy;

    invoke-static {v4, v5}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 51
    iget-object v4, v3, Lads_mobile_sdk/ih0;->c:Lads_mobile_sdk/i2;

    const-class v5, Lads_mobile_sdk/i2;

    invoke-static {v4, v5}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 52
    iget-object v4, v3, Lads_mobile_sdk/ih0;->d:Lads_mobile_sdk/ec3;

    const-class v5, Lads_mobile_sdk/ec3;

    invoke-static {v4, v5}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 53
    iget-object v4, v3, Lads_mobile_sdk/ih0;->e:Ljava/lang/Long;

    const-class v5, Ljava/lang/Long;

    invoke-static {v4, v5}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 54
    iget-object v4, v3, Lads_mobile_sdk/ih0;->f:Ljava/lang/Integer;

    const-class v5, Ljava/lang/Integer;

    invoke-static {v4, v5}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 55
    iget-object v4, v3, Lads_mobile_sdk/ih0;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    const-class v6, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-static {v4, v6}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 56
    iget-object v4, v3, Lads_mobile_sdk/ih0;->h:Lads_mobile_sdk/j53;

    const-class v6, Lads_mobile_sdk/j53;

    invoke-static {v4, v6}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 57
    iget-object v4, v3, Lads_mobile_sdk/ih0;->i:Ljava/lang/String;

    const-class v6, Ljava/lang/String;

    invoke-static {v4, v6}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 58
    iget-object v4, v3, Lads_mobile_sdk/ih0;->j:Lads_mobile_sdk/n03;

    const-class v6, Lads_mobile_sdk/n03;

    invoke-static {v4, v6}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 59
    iget-object v4, v3, Lads_mobile_sdk/ih0;->k:Lads_mobile_sdk/tn1;

    const-class v6, Lads_mobile_sdk/tn1;

    invoke-static {v4, v6}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 60
    iget-object v4, v3, Lads_mobile_sdk/ih0;->l:Ljava/lang/Boolean;

    const-class v6, Ljava/lang/Boolean;

    invoke-static {v4, v6}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 61
    iget-object v4, v3, Lads_mobile_sdk/ih0;->m:Lads_mobile_sdk/md1;

    const-class v7, Lads_mobile_sdk/md1;

    invoke-static {v4, v7}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 62
    iget-object v4, v3, Lads_mobile_sdk/ih0;->n:Lads_mobile_sdk/pb;

    const-class v7, Lads_mobile_sdk/pb;

    invoke-static {v4, v7}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 63
    iget-object v4, v3, Lads_mobile_sdk/ih0;->o:Ljava/lang/Integer;

    invoke-static {v4, v5}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 64
    iget-object v4, v3, Lads_mobile_sdk/ih0;->p:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    const-class v5, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-static {v4, v5}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 65
    iget-object v4, v3, Lads_mobile_sdk/ih0;->q:Ljava/lang/Boolean;

    invoke-static {v4, v6}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 66
    iget-object v4, v3, Lads_mobile_sdk/ih0;->r:Lads_mobile_sdk/gj1;

    const-class v5, Lads_mobile_sdk/gj1;

    invoke-static {v4, v5}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 67
    iget-object v4, v3, Lads_mobile_sdk/ih0;->s:Lads_mobile_sdk/i82;

    const-class v5, Lads_mobile_sdk/i82;

    invoke-static {v4, v5}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 68
    new-instance v6, Lads_mobile_sdk/jh0;

    iget-object v7, v3, Lads_mobile_sdk/ih0;->a:Lads_mobile_sdk/vf0;

    iget-object v8, v3, Lads_mobile_sdk/ih0;->b:Lads_mobile_sdk/zy;

    iget-object v9, v3, Lads_mobile_sdk/ih0;->c:Lads_mobile_sdk/i2;

    iget-object v10, v3, Lads_mobile_sdk/ih0;->d:Lads_mobile_sdk/ec3;

    iget-object v11, v3, Lads_mobile_sdk/ih0;->e:Ljava/lang/Long;

    iget-object v12, v3, Lads_mobile_sdk/ih0;->f:Ljava/lang/Integer;

    iget-object v13, v3, Lads_mobile_sdk/ih0;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v14, v3, Lads_mobile_sdk/ih0;->h:Lads_mobile_sdk/j53;

    iget-object v15, v3, Lads_mobile_sdk/ih0;->j:Lads_mobile_sdk/n03;

    iget-object v4, v3, Lads_mobile_sdk/ih0;->k:Lads_mobile_sdk/tn1;

    iget-object v5, v3, Lads_mobile_sdk/ih0;->l:Ljava/lang/Boolean;

    move-object/from16 v16, v4

    iget-object v4, v3, Lads_mobile_sdk/ih0;->m:Lads_mobile_sdk/md1;

    move-object/from16 v18, v4

    iget-object v4, v3, Lads_mobile_sdk/ih0;->n:Lads_mobile_sdk/pb;

    move-object/from16 v19, v4

    iget-object v4, v3, Lads_mobile_sdk/ih0;->o:Ljava/lang/Integer;

    move-object/from16 v20, v4

    iget-object v4, v3, Lads_mobile_sdk/ih0;->p:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    move-object/from16 v21, v4

    iget-object v4, v3, Lads_mobile_sdk/ih0;->q:Ljava/lang/Boolean;

    move-object/from16 v22, v4

    iget-object v4, v3, Lads_mobile_sdk/ih0;->r:Lads_mobile_sdk/gj1;

    iget-object v3, v3, Lads_mobile_sdk/ih0;->s:Lads_mobile_sdk/i82;

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    move-object/from16 v17, v5

    invoke-direct/range {v6 .. v24}, Lads_mobile_sdk/jh0;-><init>(Lads_mobile_sdk/vf0;Lads_mobile_sdk/zy;Lads_mobile_sdk/i2;Lads_mobile_sdk/ec3;Ljava/lang/Long;Ljava/lang/Integer;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Ljava/lang/Boolean;Lads_mobile_sdk/md1;Lads_mobile_sdk/pb;Ljava/lang/Integer;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;Ljava/lang/Boolean;Lads_mobile_sdk/gj1;Lads_mobile_sdk/i82;)V

    .line 69
    iget-object v3, v6, Lads_mobile_sdk/jh0;->u:Lads_mobile_sdk/dw2;

    invoke-interface {v3}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/h8;

    .line 70
    iget-object v4, v2, Lads_mobile_sdk/i2;->l:Lads_mobile_sdk/bc;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_17c

    const/4 v5, 0x3

    if-eq v4, v5, :cond_16e

    .line 86
    new-instance v1, Lads_mobile_sdk/j02;

    invoke-direct {v1}, Lads_mobile_sdk/j02;-><init>()V

    return-object v1

    .line 87
    :cond_16e
    iget-object v4, v0, Lads_mobile_sdk/k02;->b:Lads_mobile_sdk/u82;

    invoke-virtual {v4, v1, v2}, Lads_mobile_sdk/u82;->a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;)Lads_mobile_sdk/h8;

    move-result-object v1

    .line 88
    sget-object v2, Lads_mobile_sdk/i02;->a:Lads_mobile_sdk/i02;

    .line 89
    new-instance v4, Lads_mobile_sdk/h02;

    invoke-direct {v4, v3, v1, v2}, Lads_mobile_sdk/h02;-><init>(Lads_mobile_sdk/h8;Lads_mobile_sdk/h8;Lads_mobile_sdk/i02;)V

    return-object v4

    .line 90
    :cond_17c
    iget-object v4, v0, Lads_mobile_sdk/k02;->a:Lads_mobile_sdk/aq;

    invoke-virtual {v4, v1, v2}, Lads_mobile_sdk/aq;->a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;)Lads_mobile_sdk/h8;

    move-result-object v1

    .line 91
    sget-object v2, Lads_mobile_sdk/g02;->a:Lads_mobile_sdk/g02;

    .line 92
    new-instance v4, Lads_mobile_sdk/f02;

    invoke-direct {v4, v3, v1, v2}, Lads_mobile_sdk/f02;-><init>(Lads_mobile_sdk/h8;Lads_mobile_sdk/h8;Lads_mobile_sdk/g02;)V

    return-object v4
.end method
