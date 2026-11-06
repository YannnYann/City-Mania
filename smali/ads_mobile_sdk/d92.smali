###### Class ads_mobile_sdk.d92 (ads_mobile_sdk.d92)
.class public final Lads_mobile_sdk/d92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/j12;

.field public final b:Lads_mobile_sdk/s02;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/j12;Lads_mobile_sdk/s02;)V
    .registers 4

    .line 1
    const-string v0, "nativeAdCore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdAssets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lads_mobile_sdk/d92;->a:Lads_mobile_sdk/j12;

    iput-object p2, p0, Lads_mobile_sdk/d92;->b:Lads_mobile_sdk/s02;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 28
    iget-object p1, p0, Lads_mobile_sdk/d92;->b:Lads_mobile_sdk/s02;

    iget-object p1, p1, Lads_mobile_sdk/s02;->b:Lads_mobile_sdk/q02;

    const/4 p2, -0x1

    if-nez p1, :cond_9

    move p1, p2

    goto :goto_11

    :cond_9
    sget-object p3, Lads_mobile_sdk/c92;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    :goto_11
    if-eq p1, p2, :cond_40

    const/4 p2, 0x1

    if-eq p1, p2, :cond_22

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1a

    goto :goto_3d

    .line 29
    :cond_1a
    iget-object p1, p0, Lads_mobile_sdk/d92;->a:Lads_mobile_sdk/j12;

    const-string p2, "_videoMediaView"

    invoke-virtual {p1, p2}, Lads_mobile_sdk/j12;->a(Ljava/lang/String;)V

    goto :goto_3d

    .line 30
    :cond_22
    iget-object p1, p0, Lads_mobile_sdk/d92;->a:Lads_mobile_sdk/j12;

    .line 31
    iget-object p1, p1, Lads_mobile_sdk/j12;->c:Ljava/lang/ref/WeakReference;

    .line 32
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/o32;

    if-nez p1, :cond_2f

    goto :goto_3d

    .line 34
    :cond_2f
    check-cast p1, Lads_mobile_sdk/p32;

    const-string p2, "3010"

    invoke-virtual {p1, p2}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3a

    goto :goto_3d

    .line 35
    :cond_3a
    invoke-virtual {p1, p2}, Lads_mobile_sdk/p32;->onClick(Landroid/view/View;)V

    .line 36
    :goto_3d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 37
    :cond_40
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->L:Lads_mobile_sdk/u11;

    return-object v0
.end method
