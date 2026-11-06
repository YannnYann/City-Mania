###### Class ads_mobile_sdk.k61 (ads_mobile_sdk.k61)
.class public final Lads_mobile_sdk/k61;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/p61;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/p61;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/k61;->a:Lads_mobile_sdk/p61;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/k61;->a:Lads_mobile_sdk/p61;

    .line 3
    iget-object v0, v0, Lads_mobile_sdk/p61;->a:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkServiceFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
