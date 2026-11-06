###### Class ads_mobile_sdk.aa (ads_mobile_sdk.aa)
.class public final Lads_mobile_sdk/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/z9;

.field public final b:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/z9;Lads_mobile_sdk/fd0;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/aa;->a:Lads_mobile_sdk/z9;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/aa;->b:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/aa;->a:Lads_mobile_sdk/z9;

    iget-object v1, p0, Lads_mobile_sdk/aa;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/sn0;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    check-cast v1, Lads_mobile_sdk/jd0;

    .line 5
    new-instance v0, Lads_mobile_sdk/kd0;

    .line 6
    iget-object v1, v1, Lads_mobile_sdk/jd0;->a:Lads_mobile_sdk/id0;

    .line 7
    invoke-direct {v0, v1}, Lads_mobile_sdk/kd0;-><init>(Lads_mobile_sdk/id0;)V

    .line 8
    iget-object v0, v0, Lads_mobile_sdk/kd0;->i:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/qj3;

    .line 9
    invoke-static {v0}, Lads_mobile_sdk/kq2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/qj3;

    return-object v0
.end method
