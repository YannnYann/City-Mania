###### Class ads_mobile_sdk.wv2 (ads_mobile_sdk.wv2)
.class public final Lads_mobile_sdk/wv2;
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
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/vh1;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/wv2;->a:Lads_mobile_sdk/dw2;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/wv2;->b:Lads_mobile_sdk/dw2;

    .line 5
    iput-object p3, p0, Lads_mobile_sdk/wv2;->c:Lads_mobile_sdk/dw2;

    .line 6
    iput-object p4, p0, Lads_mobile_sdk/wv2;->d:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 8

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/wv2;->a:Lads_mobile_sdk/dw2;

    invoke-static {v0}, Lads_mobile_sdk/do0;->a(Lads_mobile_sdk/dw2;)Lads_mobile_sdk/ks1;

    move-result-object v2

    iget-object v0, p0, Lads_mobile_sdk/wv2;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/ts3;

    iget-object v0, p0, Lads_mobile_sdk/wv2;->c:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/tx;

    iget-object v0, p0, Lads_mobile_sdk/wv2;->d:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/na;

    .line 3
    new-instance v1, Lads_mobile_sdk/rn0;

    .line 4
    invoke-virtual {v0}, Lads_mobile_sdk/na;->S()Lads_mobile_sdk/uv2;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/uv2;->z()J

    move-result-wide v5

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/rn0;-><init>(Lads_mobile_sdk/ks1;Lads_mobile_sdk/ts3;Lads_mobile_sdk/tx;J)V

    return-object v1
.end method
