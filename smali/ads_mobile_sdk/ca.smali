###### Class ads_mobile_sdk.ca (ads_mobile_sdk.ca)
.class public final Lads_mobile_sdk/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/ba;

.field public final b:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ba;Lads_mobile_sdk/gd0;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/ca;->a:Lads_mobile_sdk/ba;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/ca;->b:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ca;->a:Lads_mobile_sdk/ba;

    iget-object v1, p0, Lads_mobile_sdk/ca;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/jh2;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    check-cast v1, Lads_mobile_sdk/od0;

    .line 5
    new-instance v0, Lads_mobile_sdk/pd0;

    .line 6
    iget-object v1, v1, Lads_mobile_sdk/od0;->a:Lads_mobile_sdk/id0;

    .line 7
    invoke-direct {v0, v1}, Lads_mobile_sdk/pd0;-><init>(Lads_mobile_sdk/id0;)V

    .line 8
    iget-object v0, v0, Lads_mobile_sdk/pd0;->h:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/qj3;

    .line 9
    invoke-static {v0}, Lads_mobile_sdk/kq2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/qj3;

    return-object v0
.end method
