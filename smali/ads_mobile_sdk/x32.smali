###### Class ads_mobile_sdk.x32 (ads_mobile_sdk.x32)
.class public final Lads_mobile_sdk/x32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/xd;


# instance fields
.field public final a:Lads_mobile_sdk/j12;

.field public final b:Lads_mobile_sdk/js1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/j12;)V
    .registers 3

    .line 1
    const-string v0, "nativeAdCore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lads_mobile_sdk/x32;->a:Lads_mobile_sdk/j12;

    .line 16
    new-instance p1, Lads_mobile_sdk/js1;

    invoke-direct {p1}, Lads_mobile_sdk/js1;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/x32;->b:Lads_mobile_sdk/js1;

    return-void
.end method


# virtual methods
.method public final b(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    if-eqz p1, :cond_5d

    .line 19
    iget-object p1, p0, Lads_mobile_sdk/x32;->b:Lads_mobile_sdk/js1;

    invoke-virtual {p1}, Lads_mobile_sdk/js1;->b()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 20
    iget-object p1, p0, Lads_mobile_sdk/x32;->b:Lads_mobile_sdk/js1;

    .line 21
    const-string p2, "The backing field has not yet been initialized."

    invoke-virtual {p1, p2}, Lads_mobile_sdk/js1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 22
    check-cast p1, Lads_mobile_sdk/o32;

    check-cast p1, Lads_mobile_sdk/p32;

    invoke-virtual {p1}, Lads_mobile_sdk/p32;->c()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 25
    iget-object v0, p0, Lads_mobile_sdk/x32;->b:Lads_mobile_sdk/js1;

    .line 26
    invoke-virtual {v0, p2}, Lads_mobile_sdk/js1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Lads_mobile_sdk/o32;

    check-cast v0, Lads_mobile_sdk/p32;

    invoke-virtual {v0}, Lads_mobile_sdk/p32;->b()Ljava/util/Map;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lads_mobile_sdk/x32;->b:Lads_mobile_sdk/js1;

    .line 29
    invoke-virtual {v1, p2}, Lads_mobile_sdk/js1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 30
    check-cast p2, Lads_mobile_sdk/o32;

    check-cast p2, Lads_mobile_sdk/p32;

    invoke-virtual {p2}, Lads_mobile_sdk/p32;->e()Landroid/widget/ImageView$ScaleType;

    move-result-object p2

    if-nez p2, :cond_3c

    .line 31
    sget-object p2, Lads_mobile_sdk/t32;->i:Landroid/widget/ImageView$ScaleType;

    .line 32
    :cond_3c
    iget-object v1, p0, Lads_mobile_sdk/x32;->a:Lads_mobile_sdk/j12;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "nativeAdView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "assetViews"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mediaviewScaleType"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v2, v1, Lads_mobile_sdk/j12;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_5a

    goto :goto_5d

    .line 34
    :cond_5a
    invoke-virtual {v1, p1, p2, v0}, Lads_mobile_sdk/j12;->a(Landroid/widget/FrameLayout;Landroid/widget/ImageView$ScaleType;Ljava/util/Map;)V

    .line 35
    :cond_5d
    :goto_5d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
