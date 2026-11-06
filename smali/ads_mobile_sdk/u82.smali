###### Class ads_mobile_sdk.u82 (ads_mobile_sdk.u82)
.class public final Lads_mobile_sdk/u82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/k8;


# instance fields
.field public final a:Lads_mobile_sdk/cw2;

.field public final b:Lads_mobile_sdk/ks3;

.field public final c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final d:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

.field public final e:J

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Lads_mobile_sdk/j53;

.field public final i:I

.field public final j:Z

.field public final k:Lads_mobile_sdk/md1;

.field public final l:Z

.field public final m:Lads_mobile_sdk/gj1;

.field public final n:Lads_mobile_sdk/i82;

.field public final o:Lads_mobile_sdk/pb;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/ks3;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;JILjava/lang/String;Lads_mobile_sdk/j53;IZLads_mobile_sdk/md1;ZLads_mobile_sdk/gj1;Lads_mobile_sdk/i82;Lads_mobile_sdk/pb;)V
    .registers 23

    move-object v0, p9

    move-object/from16 v1, p12

    move-object/from16 v2, p14

    move-object/from16 v3, p15

    move-object/from16 v4, p16

    .line 1
    const-string v5, "nativeRenderComponentProvider"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "traceMetaSet"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "baseRequest"

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "nativeRequest"

    invoke-static {p4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "requestId"

    invoke-static {p8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "requestType"

    invoke-static {p9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "inspectorAdLifecycleMonitor"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "refreshUpdateListener"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "recursiveAdLoader"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "adSourceResponseInfoCollector"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lads_mobile_sdk/u82;->a:Lads_mobile_sdk/cw2;

    .line 7
    iput-object p2, p0, Lads_mobile_sdk/u82;->b:Lads_mobile_sdk/ks3;

    .line 8
    iput-object p3, p0, Lads_mobile_sdk/u82;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 9
    iput-object p4, p0, Lads_mobile_sdk/u82;->d:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 10
    iput-wide p5, p0, Lads_mobile_sdk/u82;->e:J

    .line 11
    iput p7, p0, Lads_mobile_sdk/u82;->f:I

    .line 12
    iput-object p8, p0, Lads_mobile_sdk/u82;->g:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lads_mobile_sdk/u82;->h:Lads_mobile_sdk/j53;

    move/from16 p1, p10

    .line 14
    iput p1, p0, Lads_mobile_sdk/u82;->i:I

    move/from16 p1, p11

    .line 15
    iput-boolean p1, p0, Lads_mobile_sdk/u82;->j:Z

    .line 16
    iput-object v1, p0, Lads_mobile_sdk/u82;->k:Lads_mobile_sdk/md1;

    move/from16 p1, p13

    .line 17
    iput-boolean p1, p0, Lads_mobile_sdk/u82;->l:Z

    .line 18
    iput-object v2, p0, Lads_mobile_sdk/u82;->m:Lads_mobile_sdk/gj1;

    .line 19
    iput-object v3, p0, Lads_mobile_sdk/u82;->n:Lads_mobile_sdk/i82;

    .line 20
    iput-object v4, p0, Lads_mobile_sdk/u82;->o:Lads_mobile_sdk/pb;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;)Lads_mobile_sdk/h8;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    const-string v3, "serverTransaction"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "adConfiguration"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v3, v0, Lads_mobile_sdk/u82;->a:Lads_mobile_sdk/cw2;

    .line 52
    invoke-interface {v3}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/l82;

    .line 53
    iget-object v4, v0, Lads_mobile_sdk/u82;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    check-cast v3, Lads_mobile_sdk/oh0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    iput-object v4, v3, Lads_mobile_sdk/oh0;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 56
    iget-object v4, v0, Lads_mobile_sdk/u82;->d:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 57
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    iput-object v4, v3, Lads_mobile_sdk/oh0;->p:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    iput-object v2, v3, Lads_mobile_sdk/oh0;->c:Lads_mobile_sdk/i2;

    .line 61
    iget-object v2, v1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object v2, v2, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    iput-object v2, v3, Lads_mobile_sdk/oh0;->b:Lads_mobile_sdk/zy;

    .line 64
    iput-object v1, v3, Lads_mobile_sdk/oh0;->d:Lads_mobile_sdk/ec3;

    .line 65
    iget-object v1, v0, Lads_mobile_sdk/u82;->h:Lads_mobile_sdk/j53;

    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    iput-object v1, v3, Lads_mobile_sdk/oh0;->h:Lads_mobile_sdk/j53;

    .line 68
    iget-object v1, v0, Lads_mobile_sdk/u82;->b:Lads_mobile_sdk/ks3;

    iget-object v1, v1, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    iput-object v1, v3, Lads_mobile_sdk/oh0;->j:Lads_mobile_sdk/n03;

    .line 71
    iget-object v1, v0, Lads_mobile_sdk/u82;->b:Lads_mobile_sdk/ks3;

    iget-object v1, v1, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    iput-object v1, v3, Lads_mobile_sdk/oh0;->k:Lads_mobile_sdk/tn1;

    .line 74
    iget-object v1, v0, Lads_mobile_sdk/u82;->g:Ljava/lang/String;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    iput-object v1, v3, Lads_mobile_sdk/oh0;->i:Ljava/lang/String;

    .line 77
    iget-wide v1, v0, Lads_mobile_sdk/u82;->e:J

    .line 78
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lads_mobile_sdk/oh0;->e:Ljava/lang/Long;

    .line 79
    iget v1, v0, Lads_mobile_sdk/u82;->f:I

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lads_mobile_sdk/oh0;->f:Ljava/lang/Integer;

    .line 81
    iget v1, v0, Lads_mobile_sdk/u82;->i:I

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lads_mobile_sdk/oh0;->o:Ljava/lang/Integer;

    .line 83
    iget-boolean v1, v0, Lads_mobile_sdk/u82;->j:Z

    .line 84
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v3, Lads_mobile_sdk/oh0;->l:Ljava/lang/Boolean;

    .line 85
    iget-object v1, v0, Lads_mobile_sdk/u82;->k:Lads_mobile_sdk/md1;

    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    iput-object v1, v3, Lads_mobile_sdk/oh0;->m:Lads_mobile_sdk/md1;

    .line 88
    iget-boolean v1, v0, Lads_mobile_sdk/u82;->l:Z

    .line 89
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v3, Lads_mobile_sdk/oh0;->q:Ljava/lang/Boolean;

    .line 90
    iget-object v1, v0, Lads_mobile_sdk/u82;->m:Lads_mobile_sdk/gj1;

    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    iput-object v1, v3, Lads_mobile_sdk/oh0;->r:Lads_mobile_sdk/gj1;

    .line 93
    iget-object v1, v0, Lads_mobile_sdk/u82;->n:Lads_mobile_sdk/i82;

    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    iput-object v1, v3, Lads_mobile_sdk/oh0;->s:Lads_mobile_sdk/i82;

    .line 96
    iget-object v1, v0, Lads_mobile_sdk/u82;->o:Lads_mobile_sdk/pb;

    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    iput-object v1, v3, Lads_mobile_sdk/oh0;->n:Lads_mobile_sdk/pb;

    .line 99
    iget-object v1, v3, Lads_mobile_sdk/oh0;->b:Lads_mobile_sdk/zy;

    const-class v2, Lads_mobile_sdk/zy;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 100
    iget-object v1, v3, Lads_mobile_sdk/oh0;->c:Lads_mobile_sdk/i2;

    const-class v2, Lads_mobile_sdk/i2;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 101
    iget-object v1, v3, Lads_mobile_sdk/oh0;->d:Lads_mobile_sdk/ec3;

    const-class v2, Lads_mobile_sdk/ec3;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 102
    iget-object v1, v3, Lads_mobile_sdk/oh0;->e:Ljava/lang/Long;

    const-class v2, Ljava/lang/Long;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 103
    iget-object v1, v3, Lads_mobile_sdk/oh0;->f:Ljava/lang/Integer;

    const-class v2, Ljava/lang/Integer;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 104
    iget-object v1, v3, Lads_mobile_sdk/oh0;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    const-class v4, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-static {v1, v4}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 105
    iget-object v1, v3, Lads_mobile_sdk/oh0;->h:Lads_mobile_sdk/j53;

    const-class v4, Lads_mobile_sdk/j53;

    invoke-static {v1, v4}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 106
    iget-object v1, v3, Lads_mobile_sdk/oh0;->i:Ljava/lang/String;

    const-class v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 107
    iget-object v1, v3, Lads_mobile_sdk/oh0;->j:Lads_mobile_sdk/n03;

    const-class v4, Lads_mobile_sdk/n03;

    invoke-static {v1, v4}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 108
    iget-object v1, v3, Lads_mobile_sdk/oh0;->k:Lads_mobile_sdk/tn1;

    const-class v4, Lads_mobile_sdk/tn1;

    invoke-static {v1, v4}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 109
    iget-object v1, v3, Lads_mobile_sdk/oh0;->l:Ljava/lang/Boolean;

    const-class v4, Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 110
    iget-object v1, v3, Lads_mobile_sdk/oh0;->m:Lads_mobile_sdk/md1;

    const-class v5, Lads_mobile_sdk/md1;

    invoke-static {v1, v5}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 111
    iget-object v1, v3, Lads_mobile_sdk/oh0;->n:Lads_mobile_sdk/pb;

    const-class v5, Lads_mobile_sdk/pb;

    invoke-static {v1, v5}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 112
    iget-object v1, v3, Lads_mobile_sdk/oh0;->o:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 113
    iget-object v1, v3, Lads_mobile_sdk/oh0;->p:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    const-class v2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 114
    iget-object v1, v3, Lads_mobile_sdk/oh0;->q:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 115
    iget-object v1, v3, Lads_mobile_sdk/oh0;->r:Lads_mobile_sdk/gj1;

    const-class v2, Lads_mobile_sdk/gj1;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 116
    iget-object v1, v3, Lads_mobile_sdk/oh0;->s:Lads_mobile_sdk/i82;

    const-class v2, Lads_mobile_sdk/i82;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 117
    new-instance v4, Lads_mobile_sdk/ph0;

    iget-object v5, v3, Lads_mobile_sdk/oh0;->a:Lads_mobile_sdk/vf0;

    iget-object v6, v3, Lads_mobile_sdk/oh0;->b:Lads_mobile_sdk/zy;

    iget-object v7, v3, Lads_mobile_sdk/oh0;->c:Lads_mobile_sdk/i2;

    iget-object v8, v3, Lads_mobile_sdk/oh0;->d:Lads_mobile_sdk/ec3;

    iget-object v9, v3, Lads_mobile_sdk/oh0;->e:Ljava/lang/Long;

    iget-object v10, v3, Lads_mobile_sdk/oh0;->f:Ljava/lang/Integer;

    iget-object v11, v3, Lads_mobile_sdk/oh0;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v12, v3, Lads_mobile_sdk/oh0;->h:Lads_mobile_sdk/j53;

    iget-object v13, v3, Lads_mobile_sdk/oh0;->j:Lads_mobile_sdk/n03;

    iget-object v14, v3, Lads_mobile_sdk/oh0;->k:Lads_mobile_sdk/tn1;

    iget-object v15, v3, Lads_mobile_sdk/oh0;->o:Ljava/lang/Integer;

    iget-object v1, v3, Lads_mobile_sdk/oh0;->p:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    move-object/from16 v16, v1

    invoke-direct/range {v4 .. v16}, Lads_mobile_sdk/ph0;-><init>(Lads_mobile_sdk/vf0;Lads_mobile_sdk/zy;Lads_mobile_sdk/i2;Lads_mobile_sdk/ec3;Ljava/lang/Long;Ljava/lang/Integer;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Ljava/lang/Integer;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;)V

    .line 118
    iget-object v1, v4, Lads_mobile_sdk/ph0;->L:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/h8;

    return-object v1
.end method
