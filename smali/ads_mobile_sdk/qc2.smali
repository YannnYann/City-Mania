###### Class ads_mobile_sdk.qc2 (ads_mobile_sdk.qc2)
.class public final Lads_mobile_sdk/qc2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/rc2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/rc2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/qc2;->a:Lads_mobile_sdk/rc2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 160
    check-cast p1, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    .line 161
    const-string v0, "unifiedNativeAdMapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lads_mobile_sdk/qc2;->a:Lads_mobile_sdk/rc2;

    new-instance v1, Lads_mobile_sdk/wv3;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wv3;-><init>(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    const-string p1, "<set-?>"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    iput-object v1, v0, Lads_mobile_sdk/rc2;->c:Lads_mobile_sdk/p12;

    .line 362
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
