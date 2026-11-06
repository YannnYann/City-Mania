###### Class com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdPresentationScope (com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdPresentationScope)
.class public final enum Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPLICATION:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

.field public static final enum SCREEN:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

.field public static final synthetic a:[Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    const-string v1, "SCREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;->SCREEN:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    .line 4
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    const-string v2, "APPLICATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;->APPLICATION:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    .line 5
    filled-new-array {v0, v1}, [Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    move-result-object v0

    .line 6
    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;->a:[Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;->a:[Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    return-object v0
.end method
