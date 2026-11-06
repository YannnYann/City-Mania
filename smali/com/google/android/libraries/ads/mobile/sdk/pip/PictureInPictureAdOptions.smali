###### Class com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdOptions (com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdOptions)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;->a:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;->b:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;)V

    return-void
.end method


# virtual methods
.method public final getPosition()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;->b:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    return-object v0
.end method

.method public final getPresentationScope()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;->a:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    return-object v0
.end method

###### Class com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdOptions.Builder (com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdOptions$Builder)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

.field public b:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;->SCREEN:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;->a:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    .line 4
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;->DEFAULT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;->b:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;->a:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;->b:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;I)V

    return-object v0
.end method

.method public final setPosition(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;)Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;
    .registers 3

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;->b:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    return-object p0
.end method

.method public final setPresentationScope(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;)Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;
    .registers 3

    const-string v0, "presentationScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;->a:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    return-object p0
.end method
