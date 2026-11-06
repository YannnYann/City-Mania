###### Class com.unity3d.ads.UnityAdsError (com.unity3d.ads.UnityAdsError)
.class public final Lcom/unity3d/ads/UnityAdsError;
.super Ljava/lang/Object;
.source "UnityAdsError.kt"


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/unity3d/ads/UnityAdsError;->code:I

    .line 17
    iput-object p2, p0, Lcom/unity3d/ads/UnityAdsError;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCode()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/unity3d/ads/UnityAdsError;->code:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/unity3d/ads/UnityAdsError;->message:Ljava/lang/String;

    return-object v0
.end method
