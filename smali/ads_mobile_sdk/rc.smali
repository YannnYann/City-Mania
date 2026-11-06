###### Class ads_mobile_sdk.rc (ads_mobile_sdk.rc)
.class public final Lads_mobile_sdk/rc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;

.field public final b:Lads_mobile_sdk/dw2;

.field public final c:Lads_mobile_sdk/dw2;

.field public final d:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lads_mobile_sdk/rc;->a:Lads_mobile_sdk/dw2;

    .line 42
    iput-object p2, p0, Lads_mobile_sdk/rc;->b:Lads_mobile_sdk/dw2;

    .line 43
    iput-object p3, p0, Lads_mobile_sdk/rc;->c:Lads_mobile_sdk/dw2;

    .line 44
    iput-object p4, p0, Lads_mobile_sdk/rc;->d:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 6

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/rc;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/rc;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v2, p0, Lads_mobile_sdk/rc;->c:Lads_mobile_sdk/dw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/pc;

    iget-object v3, p0, Lads_mobile_sdk/rc;->d:Lads_mobile_sdk/dw2;

    invoke-interface {v3}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/tx;

    .line 3
    new-instance v4, Lads_mobile_sdk/qc;

    invoke-direct {v4, v0, v1, v2, v3}, Lads_mobile_sdk/qc;-><init>(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/pc;Lads_mobile_sdk/tx;)V

    return-object v4
.end method
