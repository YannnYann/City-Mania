###### Class ads_mobile_sdk.bc2 (ads_mobile_sdk.bc2)
.class public final Lads_mobile_sdk/bc2;
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
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;)V
    .registers 7

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lads_mobile_sdk/bc2;->a:Lads_mobile_sdk/dw2;

    .line 53
    iput-object p2, p0, Lads_mobile_sdk/bc2;->b:Lads_mobile_sdk/dw2;

    .line 54
    iput-object p3, p0, Lads_mobile_sdk/bc2;->c:Lads_mobile_sdk/dw2;

    .line 55
    iput-object p4, p0, Lads_mobile_sdk/bc2;->d:Lads_mobile_sdk/dw2;

    .line 56
    iput-object p5, p0, Lads_mobile_sdk/bc2;->e:Lads_mobile_sdk/dw2;

    .line 57
    iput-object p6, p0, Lads_mobile_sdk/bc2;->f:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 9

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/bc2;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lads_mobile_sdk/bc2;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lads_mobile_sdk/bc2;->c:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lads_mobile_sdk/bc2;->d:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/tx;

    iget-object v0, p0, Lads_mobile_sdk/bc2;->e:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lads_mobile_sdk/lc2;

    iget-object v0, p0, Lads_mobile_sdk/bc2;->f:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lads_mobile_sdk/vw3;

    .line 3
    new-instance v1, Lads_mobile_sdk/ac2;

    invoke-direct/range {v1 .. v7}, Lads_mobile_sdk/ac2;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;ILads_mobile_sdk/tx;Lads_mobile_sdk/lc2;Lads_mobile_sdk/vw3;)V

    return-object v1
.end method
