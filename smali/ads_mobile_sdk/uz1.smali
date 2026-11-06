###### Class ads_mobile_sdk.uz1 (ads_mobile_sdk.uz1)
.class public final Lads_mobile_sdk/uz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;

.field public final b:Lads_mobile_sdk/dw2;

.field public final c:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lads_mobile_sdk/uz1;->a:Lads_mobile_sdk/dw2;

    .line 42
    iput-object p2, p0, Lads_mobile_sdk/uz1;->b:Lads_mobile_sdk/dw2;

    .line 43
    iput-object p3, p0, Lads_mobile_sdk/uz1;->c:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 5

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/uz1;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ix1;

    iget-object v1, p0, Lads_mobile_sdk/uz1;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    iget-object v2, p0, Lads_mobile_sdk/uz1;->c:Lads_mobile_sdk/dw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 3
    new-instance v3, Lads_mobile_sdk/tz1;

    invoke-direct {v3, v0, v1, v2}, Lads_mobile_sdk/tz1;-><init>(Lads_mobile_sdk/ix1;Ljava/util/Optional;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v3
.end method
