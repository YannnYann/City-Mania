###### Class ads_mobile_sdk.ka3 (ads_mobile_sdk.ka3)
.class public final Lads_mobile_sdk/ka3;
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
    iput-object p1, p0, Lads_mobile_sdk/ka3;->a:Lads_mobile_sdk/dw2;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/ka3;->b:Lads_mobile_sdk/dw2;

    .line 5
    iput-object p3, p0, Lads_mobile_sdk/ka3;->c:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ka3;->a:Lads_mobile_sdk/dw2;

    invoke-static {v0}, Lads_mobile_sdk/do0;->a(Lads_mobile_sdk/dw2;)Lads_mobile_sdk/ks1;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/ka3;->b:Lads_mobile_sdk/dw2;

    invoke-static {v1}, Lads_mobile_sdk/do0;->a(Lads_mobile_sdk/dw2;)Lads_mobile_sdk/ks1;

    move-result-object v1

    iget-object v2, p0, Lads_mobile_sdk/ka3;->c:Lads_mobile_sdk/dw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/na;

    .line 3
    invoke-virtual {v2}, Lads_mobile_sdk/na;->E()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 4
    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ja3;

    goto :goto_27

    .line 6
    :cond_21
    invoke-interface {v1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ja3;

    .line 7
    :goto_27
    invoke-static {v0}, Lads_mobile_sdk/kq2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ja3;

    return-object v0
.end method
