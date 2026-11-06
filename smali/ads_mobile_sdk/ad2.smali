###### Class ads_mobile_sdk.ad2 (ads_mobile_sdk.ad2)
.class public final Lads_mobile_sdk/ad2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/aq1;

.field public final synthetic b:Lads_mobile_sdk/zp1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/aq1;Lads_mobile_sdk/zp1;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ad2;->a:Lads_mobile_sdk/aq1;

    iput-object p2, p0, Lads_mobile_sdk/ad2;->b:Lads_mobile_sdk/zp1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 5

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ad2;->a:Lads_mobile_sdk/aq1;

    iget-object v1, p0, Lads_mobile_sdk/ad2;->b:Lads_mobile_sdk/zp1;

    .line 3
    iget-object v2, v0, Lads_mobile_sdk/aq1;->e:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/k9;

    .line 5
    invoke-virtual {v3}, Lads_mobile_sdk/k9;->a()V

    goto :goto_e

    .line 7
    :cond_1e
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 8
    new-instance v3, Lads_mobile_sdk/yp1;

    invoke-direct {v3, v0, v1, v2}, Lads_mobile_sdk/yp1;-><init>(Lads_mobile_sdk/aq1;Lads_mobile_sdk/zp1;Ljava/util/Timer;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
