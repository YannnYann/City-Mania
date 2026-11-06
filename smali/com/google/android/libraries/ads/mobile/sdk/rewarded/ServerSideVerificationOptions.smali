###### Class com.google.android.libraries.ads.mobile.sdk.rewarded.ServerSideVerificationOptions (com.google.android.libraries.ads.mobile.sdk.rewarded.ServerSideVerificationOptions)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCustomData()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;->a:Ljava/lang/String;

    return-object v0
.end method
