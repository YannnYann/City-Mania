###### Class ads_mobile_sdk.kh0 (ads_mobile_sdk.kh0)
.class public final Lads_mobile_sdk/kh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/i12;


# instance fields
.field public final a:Lads_mobile_sdk/vf0;

.field public b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public c:Ljava/lang/Long;

.field public d:Lads_mobile_sdk/j53;

.field public e:Ljava/lang/Integer;

.field public f:Lads_mobile_sdk/i2;

.field public g:Lads_mobile_sdk/zy;

.field public h:Lads_mobile_sdk/ec3;

.field public i:Ljava/lang/Boolean;

.field public j:Lads_mobile_sdk/n03;

.field public k:Lads_mobile_sdk/tn1;

.field public l:Lads_mobile_sdk/m33;

.field public m:Lads_mobile_sdk/zb;

.field public n:Lads_mobile_sdk/eo2;

.field public o:Lads_mobile_sdk/t91;

.field public p:Lads_mobile_sdk/q52;

.field public q:Lads_mobile_sdk/s02;

.field public r:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

.field public s:Lads_mobile_sdk/mb0;

.field public t:Lcom/google/gson/JsonObject;

.field public u:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vf0;)V
    .registers 2

    .line 6428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6429
    iput-object p1, p0, Lads_mobile_sdk/kh0;->a:Lads_mobile_sdk/vf0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 24

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lads_mobile_sdk/kh0;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    const-class v2, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v1, v0, Lads_mobile_sdk/kh0;->c:Ljava/lang/Long;

    const-class v2, Ljava/lang/Long;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v1, v0, Lads_mobile_sdk/kh0;->d:Lads_mobile_sdk/j53;

    const-class v2, Lads_mobile_sdk/j53;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    iget-object v1, v0, Lads_mobile_sdk/kh0;->e:Ljava/lang/Integer;

    const-class v2, Ljava/lang/Integer;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    iget-object v1, v0, Lads_mobile_sdk/kh0;->f:Lads_mobile_sdk/i2;

    const-class v2, Lads_mobile_sdk/i2;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    iget-object v1, v0, Lads_mobile_sdk/kh0;->g:Lads_mobile_sdk/zy;

    const-class v2, Lads_mobile_sdk/zy;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8
    iget-object v1, v0, Lads_mobile_sdk/kh0;->h:Lads_mobile_sdk/ec3;

    const-class v2, Lads_mobile_sdk/ec3;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 9
    iget-object v1, v0, Lads_mobile_sdk/kh0;->i:Ljava/lang/Boolean;

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 10
    iget-object v1, v0, Lads_mobile_sdk/kh0;->j:Lads_mobile_sdk/n03;

    const-class v2, Lads_mobile_sdk/n03;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 11
    iget-object v1, v0, Lads_mobile_sdk/kh0;->k:Lads_mobile_sdk/tn1;

    const-class v2, Lads_mobile_sdk/tn1;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 12
    iget-object v1, v0, Lads_mobile_sdk/kh0;->l:Lads_mobile_sdk/m33;

    const-class v2, Lads_mobile_sdk/m33;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    iget-object v1, v0, Lads_mobile_sdk/kh0;->m:Lads_mobile_sdk/zb;

    const-class v2, Lads_mobile_sdk/zb;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 14
    iget-object v1, v0, Lads_mobile_sdk/kh0;->n:Lads_mobile_sdk/eo2;

    const-class v2, Lads_mobile_sdk/eo2;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 15
    iget-object v1, v0, Lads_mobile_sdk/kh0;->o:Lads_mobile_sdk/t91;

    const-class v2, Lads_mobile_sdk/t91;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 16
    iget-object v1, v0, Lads_mobile_sdk/kh0;->p:Lads_mobile_sdk/q52;

    const-class v2, Lads_mobile_sdk/q52;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 17
    iget-object v1, v0, Lads_mobile_sdk/kh0;->q:Lads_mobile_sdk/s02;

    const-class v2, Lads_mobile_sdk/s02;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 18
    iget-object v1, v0, Lads_mobile_sdk/kh0;->r:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    const-class v2, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 19
    iget-object v1, v0, Lads_mobile_sdk/kh0;->s:Lads_mobile_sdk/mb0;

    const-class v2, Lads_mobile_sdk/mb0;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 20
    iget-object v1, v0, Lads_mobile_sdk/kh0;->t:Lcom/google/gson/JsonObject;

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 21
    iget-object v1, v0, Lads_mobile_sdk/kh0;->u:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    const-class v2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 22
    new-instance v3, Lads_mobile_sdk/lh0;

    iget-object v4, v0, Lads_mobile_sdk/kh0;->a:Lads_mobile_sdk/vf0;

    iget-object v5, v0, Lads_mobile_sdk/kh0;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v6, v0, Lads_mobile_sdk/kh0;->d:Lads_mobile_sdk/j53;

    iget-object v7, v0, Lads_mobile_sdk/kh0;->e:Ljava/lang/Integer;

    iget-object v8, v0, Lads_mobile_sdk/kh0;->f:Lads_mobile_sdk/i2;

    iget-object v9, v0, Lads_mobile_sdk/kh0;->g:Lads_mobile_sdk/zy;

    iget-object v10, v0, Lads_mobile_sdk/kh0;->h:Lads_mobile_sdk/ec3;

    iget-object v11, v0, Lads_mobile_sdk/kh0;->j:Lads_mobile_sdk/n03;

    iget-object v12, v0, Lads_mobile_sdk/kh0;->k:Lads_mobile_sdk/tn1;

    iget-object v13, v0, Lads_mobile_sdk/kh0;->l:Lads_mobile_sdk/m33;

    iget-object v14, v0, Lads_mobile_sdk/kh0;->m:Lads_mobile_sdk/zb;

    iget-object v15, v0, Lads_mobile_sdk/kh0;->n:Lads_mobile_sdk/eo2;

    iget-object v1, v0, Lads_mobile_sdk/kh0;->o:Lads_mobile_sdk/t91;

    iget-object v2, v0, Lads_mobile_sdk/kh0;->p:Lads_mobile_sdk/q52;

    move-object/from16 v16, v1

    iget-object v1, v0, Lads_mobile_sdk/kh0;->q:Lads_mobile_sdk/s02;

    move-object/from16 v18, v1

    iget-object v1, v0, Lads_mobile_sdk/kh0;->r:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    move-object/from16 v19, v1

    iget-object v1, v0, Lads_mobile_sdk/kh0;->s:Lads_mobile_sdk/mb0;

    move-object/from16 v20, v1

    iget-object v1, v0, Lads_mobile_sdk/kh0;->t:Lcom/google/gson/JsonObject;

    move-object/from16 v21, v1

    iget-object v1, v0, Lads_mobile_sdk/kh0;->u:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    move-object/from16 v22, v1

    move-object/from16 v17, v2

    invoke-direct/range {v3 .. v22}, Lads_mobile_sdk/lh0;-><init>(Lads_mobile_sdk/vf0;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Ljava/lang/Integer;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ec3;Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;Lads_mobile_sdk/eo2;Lads_mobile_sdk/t91;Lads_mobile_sdk/q52;Lads_mobile_sdk/s02;Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;Lads_mobile_sdk/mb0;Lcom/google/gson/JsonObject;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;)V

    return-object v3
.end method

.method public final a(I)Ljava/lang/Object;
    .registers 2

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/kh0;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public final a(J)Ljava/lang/Object;
    .registers 3

    .line 53
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/kh0;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/ec3;)Ljava/lang/Object;
    .registers 2

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    iput-object p1, p0, Lads_mobile_sdk/kh0;->h:Lads_mobile_sdk/ec3;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/eo2;)Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    iput-object p1, p0, Lads_mobile_sdk/kh0;->n:Lads_mobile_sdk/eo2;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/i2;)Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    iput-object p1, p0, Lads_mobile_sdk/kh0;->f:Lads_mobile_sdk/i2;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/j53;)Ljava/lang/Object;
    .registers 2

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    iput-object p1, p0, Lads_mobile_sdk/kh0;->d:Lads_mobile_sdk/j53;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/m33;)Ljava/lang/Object;
    .registers 2

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    iput-object p1, p0, Lads_mobile_sdk/kh0;->l:Lads_mobile_sdk/m33;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/n03;)Ljava/lang/Object;
    .registers 2

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    iput-object p1, p0, Lads_mobile_sdk/kh0;->j:Lads_mobile_sdk/n03;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/t91;)Ljava/lang/Object;
    .registers 2

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    iput-object p1, p0, Lads_mobile_sdk/kh0;->o:Lads_mobile_sdk/t91;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/tn1;)Ljava/lang/Object;
    .registers 2

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    iput-object p1, p0, Lads_mobile_sdk/kh0;->k:Lads_mobile_sdk/tn1;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/zb;)Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    iput-object p1, p0, Lads_mobile_sdk/kh0;->m:Lads_mobile_sdk/zb;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/zy;)Ljava/lang/Object;
    .registers 2

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    iput-object p1, p0, Lads_mobile_sdk/kh0;->g:Lads_mobile_sdk/zy;

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iput-object p1, p0, Lads_mobile_sdk/kh0;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    return-object p0
.end method

.method public final a(Z)Ljava/lang/Object;
    .registers 2

    .line 42
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/kh0;->i:Ljava/lang/Boolean;

    return-object p0
.end method
