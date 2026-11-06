###### Class ads_mobile_sdk.p83 (ads_mobile_sdk.p83)
.class public final Lads_mobile_sdk/p83;
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
    iput-object p1, p0, Lads_mobile_sdk/p83;->a:Lads_mobile_sdk/u83;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 124
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

    .line 125
    const-string v0, "mediationAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lads_mobile_sdk/p83;->a:Lads_mobile_sdk/u83;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    iput-object p1, v0, Lads_mobile_sdk/u83;->e:Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

    .line 303
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
