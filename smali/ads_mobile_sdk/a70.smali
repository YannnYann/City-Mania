###### Class ads_mobile_sdk.a70 (ads_mobile_sdk.a70)
.class public final Lads_mobile_sdk/a70;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/k70;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/k70;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/a70;->a:Lads_mobile_sdk/k70;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 7

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/a70;->a:Lads_mobile_sdk/k70;

    .line 3
    iget-object v1, v0, Lads_mobile_sdk/k70;->g:Lads_mobile_sdk/cn0;

    const/4 v2, 0x1

    const-string v3, "key"

    if-nez v1, :cond_25

    .line 4
    iget-object v0, v0, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    if-eqz v0, :cond_20

    .line 6
    const-string v1, "gads:use_cronet_fallback_provider_for_offline_client:enabled"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v1, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 23
    :cond_20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 24
    :cond_25
    iget-object v0, v0, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    if-eqz v0, :cond_3e

    .line 26
    const-string v1, "gads:initialize_device_tier_manager_in_cronet_provider:enabled"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v1, v4, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 43
    :cond_3e
    iget-object v0, p0, Lads_mobile_sdk/a70;->a:Lads_mobile_sdk/k70;

    .line 44
    iget-object v0, v0, Lads_mobile_sdk/k70;->g:Lads_mobile_sdk/cn0;

    .line 45
    invoke-virtual {v0}, Lads_mobile_sdk/cn0;->b()V

    .line 48
    :cond_45
    iget-object v0, p0, Lads_mobile_sdk/a70;->a:Lads_mobile_sdk/k70;

    .line 49
    iget-object v0, v0, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    if-eqz v0, :cond_63

    .line 51
    sget v1, Lads_mobile_sdk/ex0;->B:I

    .line 52
    const-string v4, "gads:cronet_fallback_device_memory_threshold"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v0, v4, v1, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_65

    .line 54
    :cond_63
    sget v0, Lads_mobile_sdk/ex0;->B:I

    .line 55
    :goto_65
    iget-object v1, p0, Lads_mobile_sdk/a70;->a:Lads_mobile_sdk/k70;

    .line 56
    iget-object v1, v1, Lads_mobile_sdk/k70;->g:Lads_mobile_sdk/cn0;

    .line 57
    iget-object v1, v1, Lads_mobile_sdk/cn0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 58
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/mm0;

    .line 59
    invoke-virtual {v1}, Lads_mobile_sdk/mm0;->getNumber()I

    move-result v1

    if-gt v1, v0, :cond_78

    goto :goto_79

    :cond_78
    const/4 v2, 0x0

    :goto_79
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
