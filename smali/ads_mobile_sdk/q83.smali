###### Class ads_mobile_sdk.q83 (ads_mobile_sdk.q83)
.class public final Lads_mobile_sdk/q83;
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
    iput-object p1, p0, Lads_mobile_sdk/q83;->a:Lads_mobile_sdk/u83;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 224
    check-cast p1, Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    .line 225
    const-string v0, "nativeAdMapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lads_mobile_sdk/q83;->a:Lads_mobile_sdk/u83;

    new-instance v1, Lads_mobile_sdk/t12;

    invoke-direct {v1, p1}, Lads_mobile_sdk/t12;-><init>(Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    const-string p1, "<set-?>"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    iput-object v1, v0, Lads_mobile_sdk/u83;->d:Lads_mobile_sdk/p12;

    .line 501
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
