###### Class com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdPosition (com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdPosition)
.class public final enum Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM_LEFT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

.field public static final enum BOTTOM_RIGHT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

.field public static final enum DEFAULT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

.field public static final enum TOP_LEFT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

.field public static final enum TOP_RIGHT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

.field public static final synthetic a:[Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;->DEFAULT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    .line 4
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    const-string v2, "BOTTOM_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;->BOTTOM_RIGHT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    .line 7
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    const-string v3, "BOTTOM_LEFT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;->BOTTOM_LEFT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    .line 10
    new-instance v3, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    const-string v4, "TOP_LEFT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;->TOP_LEFT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    .line 13
    new-instance v4, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    const-string v5, "TOP_RIGHT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;->TOP_RIGHT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    .line 14
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    move-result-object v0

    .line 15
    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;->a:[Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;->a:[Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    return-object v0
.end method
