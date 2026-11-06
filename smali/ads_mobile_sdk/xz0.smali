###### Class ads_mobile_sdk.xz0 (ads_mobile_sdk.xz0)
.class public final Lads_mobile_sdk/xz0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lads_mobile_sdk/xz0;->a:Landroid/content/Context;

    iput-object p2, p0, Lads_mobile_sdk/xz0;->b:Landroid/content/Context;

    const-class p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdActivity;

    iput-object p1, p0, Lads_mobile_sdk/xz0;->c:Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 6

    .line 2
    sget-object v0, Lads_mobile_sdk/mj0;->a:Lads_mobile_sdk/vh1;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lads_mobile_sdk/xz0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lads_mobile_sdk/xz0;->b:Landroid/content/Context;

    const-string v2, "$applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v3, p0, Lads_mobile_sdk/xz0;->b:Landroid/content/Context;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/app/Application;

    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v2, p0, Lads_mobile_sdk/xz0;->c:Ljava/lang/Class;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v4, Lads_mobile_sdk/vf0;

    invoke-direct {v4, v1, v3, v0, v2}, Lads_mobile_sdk/vf0;-><init>(Landroid/content/Context;Landroid/app/Application;Ljava/lang/ref/WeakReference;Ljava/lang/Class;)V

    return-object v4
.end method
