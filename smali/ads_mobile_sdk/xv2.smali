###### Class ads_mobile_sdk.xv2 (ads_mobile_sdk.xv2)
.class public final Lads_mobile_sdk/xv2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;

.field public final b:Lads_mobile_sdk/dw2;

.field public final c:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/vh1;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/xv2;->a:Lads_mobile_sdk/dw2;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/xv2;->b:Lads_mobile_sdk/dw2;

    .line 5
    iput-object p3, p0, Lads_mobile_sdk/xv2;->c:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 7

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/xv2;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/tx;

    iget-object v1, p0, Lads_mobile_sdk/xv2;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/ts3;

    iget-object v2, p0, Lads_mobile_sdk/xv2;->c:Lads_mobile_sdk/dw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/na;

    .line 3
    new-instance v3, Lads_mobile_sdk/ih2;

    .line 4
    invoke-virtual {v2}, Lads_mobile_sdk/na;->S()Lads_mobile_sdk/uv2;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/uv2;->z()J

    move-result-wide v4

    invoke-direct {v3, v0, v1, v4, v5}, Lads_mobile_sdk/ih2;-><init>(Lads_mobile_sdk/tx;Lads_mobile_sdk/ts3;J)V

    return-object v3
.end method
