###### Class ads_mobile_sdk.l62 (ads_mobile_sdk.l62)
.class public final Lads_mobile_sdk/l62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/zu1;


# instance fields
.field public final a:Lads_mobile_sdk/ex0;

.field public final b:Lads_mobile_sdk/j12;

.field public final c:Lads_mobile_sdk/j53;

.field public final d:Lads_mobile_sdk/js1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;Lads_mobile_sdk/j12;Lads_mobile_sdk/j53;)V
    .registers 5

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdCore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lads_mobile_sdk/l62;->a:Lads_mobile_sdk/ex0;

    .line 19
    iput-object p2, p0, Lads_mobile_sdk/l62;->b:Lads_mobile_sdk/j12;

    .line 20
    iput-object p3, p0, Lads_mobile_sdk/l62;->c:Lads_mobile_sdk/j53;

    .line 22
    new-instance p1, Lads_mobile_sdk/js1;

    invoke-direct {p1}, Lads_mobile_sdk/js1;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/l62;->d:Lads_mobile_sdk/js1;

    return-void
.end method


# virtual methods
.method public final f()Lkotlin/Unit;
    .registers 7

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/l62;->c:Lads_mobile_sdk/j53;

    sget-object v1, Lads_mobile_sdk/j53;->g:Lads_mobile_sdk/j53;

    if-eq v0, v1, :cond_7d

    iget-object v0, p0, Lads_mobile_sdk/l62;->d:Lads_mobile_sdk/js1;

    invoke-virtual {v0}, Lads_mobile_sdk/js1;->b()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/l62;->d:Lads_mobile_sdk/js1;

    .line 4
    const-string v1, "The backing field has not yet been initialized."

    invoke-virtual {v0, v1}, Lads_mobile_sdk/js1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Lads_mobile_sdk/o32;

    check-cast v0, Lads_mobile_sdk/p32;

    invoke-virtual {v0}, Lads_mobile_sdk/p32;->c()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 6
    iget-object v2, p0, Lads_mobile_sdk/l62;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v3, "key"

    const-string v4, "gads:nas_interaction_ping_enabled_decagon"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v2, v4, v3, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 25
    iget-object v2, p0, Lads_mobile_sdk/l62;->d:Lads_mobile_sdk/js1;

    .line 26
    invoke-virtual {v2, v1}, Lads_mobile_sdk/js1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    check-cast v2, Lads_mobile_sdk/o32;

    check-cast v2, Lads_mobile_sdk/p32;

    invoke-virtual {v2}, Lads_mobile_sdk/p32;->b()Ljava/util/Map;

    move-result-object v2

    .line 28
    iget-object v3, p0, Lads_mobile_sdk/l62;->d:Lads_mobile_sdk/js1;

    .line 29
    invoke-virtual {v3, v1}, Lads_mobile_sdk/js1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    check-cast v1, Lads_mobile_sdk/o32;

    check-cast v1, Lads_mobile_sdk/p32;

    invoke-virtual {v1}, Lads_mobile_sdk/p32;->e()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-nez v1, :cond_5c

    .line 31
    sget-object v1, Lads_mobile_sdk/t32;->i:Landroid/widget/ImageView$ScaleType;

    .line 32
    :cond_5c
    iget-object v3, p0, Lads_mobile_sdk/l62;->b:Lads_mobile_sdk/j12;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "nativeAdView"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "assetViews"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "mediaviewScaleType"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v4, v3, Lads_mobile_sdk/j12;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-eqz v4, :cond_7a

    goto :goto_7d

    .line 34
    :cond_7a
    invoke-virtual {v3, v0, v1, v2}, Lads_mobile_sdk/j12;->b(Landroid/widget/FrameLayout;Landroid/widget/ImageView$ScaleType;Ljava/util/Map;)V

    .line 35
    :cond_7d
    :goto_7d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
