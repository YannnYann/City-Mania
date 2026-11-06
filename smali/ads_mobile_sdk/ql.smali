###### Class ads_mobile_sdk.ql (ads_mobile_sdk.ql)
.class public final Lads_mobile_sdk/ql;
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


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/vh1;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/if0;)V
    .registers 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/ql;->a:Lads_mobile_sdk/dw2;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/ql;->b:Lads_mobile_sdk/dw2;

    .line 5
    iput-object p3, p0, Lads_mobile_sdk/ql;->c:Lads_mobile_sdk/dw2;

    .line 6
    iput-object p4, p0, Lads_mobile_sdk/ql;->d:Lads_mobile_sdk/dw2;

    .line 7
    iput-object p5, p0, Lads_mobile_sdk/ql;->e:Lads_mobile_sdk/dw2;

    .line 8
    iput-object p6, p0, Lads_mobile_sdk/ql;->f:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 9

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ql;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v0, p0, Lads_mobile_sdk/ql;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/l43;

    iget-object v0, p0, Lads_mobile_sdk/ql;->c:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    iget-object v0, p0, Lads_mobile_sdk/ql;->d:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/f0;

    iget-object v0, p0, Lads_mobile_sdk/ql;->e:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lads_mobile_sdk/hm0;

    iget-object v7, p0, Lads_mobile_sdk/ql;->f:Lads_mobile_sdk/dw2;

    .line 3
    new-instance v1, Lads_mobile_sdk/pl;

    invoke-direct/range {v1 .. v7}, Lads_mobile_sdk/pl;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/l43;Landroid/content/Context;Lads_mobile_sdk/f0;Lads_mobile_sdk/hm0;Lads_mobile_sdk/dw2;)V

    return-object v1
.end method
