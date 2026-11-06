###### Class ads_mobile_sdk.ig0 (ads_mobile_sdk.ig0)
.class public final Lads_mobile_sdk/ig0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/hk1;


# instance fields
.field public final a:Lads_mobile_sdk/vf0;

.field public b:Lads_mobile_sdk/j53;

.field public c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public d:Lads_mobile_sdk/n03;

.field public e:Lads_mobile_sdk/tn1;

.field public f:Lads_mobile_sdk/md1;

.field public g:Ljava/lang/Boolean;

.field public h:Lads_mobile_sdk/m13;

.field public i:Ljava/lang/Boolean;

.field public j:Ljava/lang/Boolean;

.field public k:Lads_mobile_sdk/pb;

.field public l:Lads_mobile_sdk/gj1;

.field public m:Lads_mobile_sdk/g33;

.field public n:Ljava/lang/Boolean;

.field public o:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vf0;)V
    .registers 2

    .line 3418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3419
    iput-object p1, p0, Lads_mobile_sdk/ig0;->a:Lads_mobile_sdk/vf0;

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/jg0;
    .registers 20

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lads_mobile_sdk/ig0;->b:Lads_mobile_sdk/j53;

    const-class v2, Lads_mobile_sdk/j53;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v1, v0, Lads_mobile_sdk/ig0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    const-class v2, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v1, v0, Lads_mobile_sdk/ig0;->d:Lads_mobile_sdk/n03;

    const-class v2, Lads_mobile_sdk/n03;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    iget-object v1, v0, Lads_mobile_sdk/ig0;->e:Lads_mobile_sdk/tn1;

    const-class v2, Lads_mobile_sdk/tn1;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    iget-object v1, v0, Lads_mobile_sdk/ig0;->f:Lads_mobile_sdk/md1;

    const-class v2, Lads_mobile_sdk/md1;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    iget-object v1, v0, Lads_mobile_sdk/ig0;->g:Ljava/lang/Boolean;

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8
    iget-object v1, v0, Lads_mobile_sdk/ig0;->h:Lads_mobile_sdk/m13;

    const-class v3, Lads_mobile_sdk/m13;

    invoke-static {v1, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 9
    iget-object v1, v0, Lads_mobile_sdk/ig0;->i:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 10
    iget-object v1, v0, Lads_mobile_sdk/ig0;->j:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 11
    iget-object v1, v0, Lads_mobile_sdk/ig0;->k:Lads_mobile_sdk/pb;

    const-class v3, Lads_mobile_sdk/pb;

    invoke-static {v1, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 12
    iget-object v1, v0, Lads_mobile_sdk/ig0;->l:Lads_mobile_sdk/gj1;

    const-class v3, Lads_mobile_sdk/gj1;

    invoke-static {v1, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    iget-object v1, v0, Lads_mobile_sdk/ig0;->m:Lads_mobile_sdk/g33;

    const-class v3, Lads_mobile_sdk/g33;

    invoke-static {v1, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 14
    iget-object v1, v0, Lads_mobile_sdk/ig0;->n:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 15
    iget-object v1, v0, Lads_mobile_sdk/ig0;->o:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    const-class v2, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 16
    new-instance v3, Lads_mobile_sdk/jg0;

    iget-object v4, v0, Lads_mobile_sdk/ig0;->a:Lads_mobile_sdk/vf0;

    iget-object v5, v0, Lads_mobile_sdk/ig0;->b:Lads_mobile_sdk/j53;

    iget-object v6, v0, Lads_mobile_sdk/ig0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v7, v0, Lads_mobile_sdk/ig0;->d:Lads_mobile_sdk/n03;

    iget-object v8, v0, Lads_mobile_sdk/ig0;->e:Lads_mobile_sdk/tn1;

    iget-object v9, v0, Lads_mobile_sdk/ig0;->f:Lads_mobile_sdk/md1;

    iget-object v10, v0, Lads_mobile_sdk/ig0;->g:Ljava/lang/Boolean;

    iget-object v11, v0, Lads_mobile_sdk/ig0;->h:Lads_mobile_sdk/m13;

    iget-object v12, v0, Lads_mobile_sdk/ig0;->i:Ljava/lang/Boolean;

    iget-object v13, v0, Lads_mobile_sdk/ig0;->j:Ljava/lang/Boolean;

    iget-object v14, v0, Lads_mobile_sdk/ig0;->k:Lads_mobile_sdk/pb;

    iget-object v15, v0, Lads_mobile_sdk/ig0;->l:Lads_mobile_sdk/gj1;

    iget-object v1, v0, Lads_mobile_sdk/ig0;->m:Lads_mobile_sdk/g33;

    iget-object v2, v0, Lads_mobile_sdk/ig0;->n:Ljava/lang/Boolean;

    move-object/from16 v16, v1

    iget-object v1, v0, Lads_mobile_sdk/ig0;->o:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    invoke-direct/range {v3 .. v18}, Lads_mobile_sdk/jg0;-><init>(Lads_mobile_sdk/vf0;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/md1;Ljava/lang/Boolean;Lads_mobile_sdk/m13;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/pb;Lads_mobile_sdk/gj1;Lads_mobile_sdk/g33;Ljava/lang/Boolean;Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;)V

    return-object v3
.end method

.method public final a(Lads_mobile_sdk/j53;)Ljava/lang/Object;
    .registers 2

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    iput-object p1, p0, Lads_mobile_sdk/ig0;->b:Lads_mobile_sdk/j53;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/m13;)Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    iput-object p1, p0, Lads_mobile_sdk/ig0;->h:Lads_mobile_sdk/m13;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/md1;)Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    iput-object p1, p0, Lads_mobile_sdk/ig0;->f:Lads_mobile_sdk/md1;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/n03;)Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    iput-object p1, p0, Lads_mobile_sdk/ig0;->d:Lads_mobile_sdk/n03;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/pb;)Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    iput-object p1, p0, Lads_mobile_sdk/ig0;->k:Lads_mobile_sdk/pb;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/tn1;)Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    iput-object p1, p0, Lads_mobile_sdk/ig0;->e:Lads_mobile_sdk/tn1;

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Ljava/lang/Object;
    .registers 2

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iput-object p1, p0, Lads_mobile_sdk/ig0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    return-object p0
.end method

.method public final a(Z)Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ig0;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final b(Z)Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ig0;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final c(Z)Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ig0;->j:Ljava/lang/Boolean;

    return-object p0
.end method
