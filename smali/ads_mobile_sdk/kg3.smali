###### Class ads_mobile_sdk.kg3 (ads_mobile_sdk.kg3)
.class public final Lads_mobile_sdk/kg3;
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

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lads_mobile_sdk/kg3;->a:Lads_mobile_sdk/dw2;

    .line 43
    iput-object p2, p0, Lads_mobile_sdk/kg3;->b:Lads_mobile_sdk/dw2;

    .line 44
    iput-object p3, p0, Lads_mobile_sdk/kg3;->c:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 10

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/kg3;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/bu3;

    iget-object v0, p0, Lads_mobile_sdk/kg3;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ex0;

    iget-object v1, p0, Lads_mobile_sdk/kg3;->c:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    .line 3
    const-string v3, "trustlessTokenSignalSource"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "flags"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "signalRequest"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    .line 61
    new-instance v1, Lads_mobile_sdk/pu;

    .line 63
    sget-object v4, Lads_mobile_sdk/lg3;->a:Lads_mobile_sdk/lg3;

    move-object v4, v3

    .line 64
    sget-object v3, Lads_mobile_sdk/qf3;->b:Lads_mobile_sdk/qf3;

    move-object v5, v4

    .line 65
    sget-object v4, Lads_mobile_sdk/ph3;->a:Lads_mobile_sdk/ph3;

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lads_mobile_sdk/y11;->Y:Lads_mobile_sdk/y11;

    invoke-static {v0, v6}, Lads_mobile_sdk/fk3;->a(Lads_mobile_sdk/ex0;Lads_mobile_sdk/y11;)J

    move-result-wide v6

    move-object v8, v5

    move-wide v5, v6

    .line 69
    new-instance v7, Lads_mobile_sdk/hg3;

    invoke-direct {v7, v0, v8}, Lads_mobile_sdk/hg3;-><init>(Lads_mobile_sdk/ex0;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;)V

    .line 70
    invoke-direct/range {v1 .. v7}, Lads_mobile_sdk/pu;-><init>(Lads_mobile_sdk/ou;Lads_mobile_sdk/qf3;Lads_mobile_sdk/ph3;JLkotlin/jvm/functions/Function0;)V

    return-object v1
.end method
