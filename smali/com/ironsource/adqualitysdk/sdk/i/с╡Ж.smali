###### Class com.ironsource.adqualitysdk.sdk.i.C0674 (com.ironsource.adqualitysdk.sdk.i.ᵆ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᵆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ת;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ת;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵆ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ת;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵆ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ת;

    const-class v0, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->getCallToActionView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
