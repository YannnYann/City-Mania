###### Class ads_mobile_sdk.tc2 (ads_mobile_sdk.tc2)
.class public final Lads_mobile_sdk/tc2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/aq1;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lads_mobile_sdk/tx0;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/aq1;Landroid/view/View;Lads_mobile_sdk/tx0;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/tc2;->a:Lads_mobile_sdk/aq1;

    iput-object p2, p0, Lads_mobile_sdk/tc2;->b:Landroid/view/View;

    iput-object p3, p0, Lads_mobile_sdk/tc2;->c:Lads_mobile_sdk/tx0;

    iput-object p4, p0, Lads_mobile_sdk/tc2;->d:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 8

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/tc2;->a:Lads_mobile_sdk/aq1;

    .line 3
    iget-object v1, p0, Lads_mobile_sdk/tc2;->b:Landroid/view/View;

    .line 4
    iget-object v2, p0, Lads_mobile_sdk/tc2;->c:Lads_mobile_sdk/tx0;

    .line 5
    iget-object v3, p0, Lads_mobile_sdk/tc2;->d:Ljava/lang/String;

    .line 6
    iget-object v4, v0, Lads_mobile_sdk/aq1;->e:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/k9;

    .line 8
    check-cast v5, Lads_mobile_sdk/p9;

    .line 9
    iget-boolean v6, v5, Lads_mobile_sdk/p9;->f:Z

    if-eqz v6, :cond_25

    goto :goto_12

    .line 12
    :cond_25
    iget-object v5, v5, Lads_mobile_sdk/p9;->b:Lads_mobile_sdk/ux0;

    invoke-virtual {v5, v1, v2, v3}, Lads_mobile_sdk/ux0;->a(Landroid/view/View;Lads_mobile_sdk/tx0;Ljava/lang/String;)V

    goto :goto_12

    .line 13
    :cond_2b
    iget-object v0, v0, Lads_mobile_sdk/aq1;->f:Lads_mobile_sdk/ux0;

    invoke-virtual {v0, v1, v2, v3}, Lads_mobile_sdk/ux0;->a(Landroid/view/View;Lads_mobile_sdk/tx0;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
