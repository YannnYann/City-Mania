###### Class ads_mobile_sdk.r83 (ads_mobile_sdk.r83)
.class public final Lads_mobile_sdk/r83;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/u83;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/u83;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/r83;->a:Lads_mobile_sdk/u83;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 256
    check-cast p1, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    .line 257
    const-string v0, "unifiedNativeAdMapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lads_mobile_sdk/r83;->a:Lads_mobile_sdk/u83;

    new-instance v1, Lads_mobile_sdk/wv3;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wv3;-><init>(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    const-string p1, "<set-?>"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    iput-object v1, v0, Lads_mobile_sdk/u83;->d:Lads_mobile_sdk/p12;

    .line 565
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
