###### Class com.google.android.libraries.ads.mobile.sdk.iconad.IconAdPlacement (com.google.android.libraries.ads.mobile.sdk.iconad.IconAdPlacement)
.class public final enum Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BROWSER:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

.field public static final enum FOLDER:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

.field public static final enum HOME:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

.field public static final enum LOCKSCREEN:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

.field public static final enum MINUS_ONE_SCREEN:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

.field public static final enum NOTIFICATION:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

.field public static final enum SEARCH:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

.field public static final enum SHARE:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

.field public static final enum STORE:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

.field public static final enum UNSPECIFIED:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

.field public static final synthetic b:[Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;->UNSPECIFIED:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    .line 3
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    const-string v2, "BROWSER"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;->BROWSER:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    .line 5
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    const-string v3, "FOLDER"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;->FOLDER:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    .line 7
    new-instance v3, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    const-string v4, "HOME"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;->HOME:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    .line 9
    new-instance v4, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    const-string v5, "LOCKSCREEN"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;->LOCKSCREEN:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    .line 11
    new-instance v5, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    const-string v6, "MINUS_ONE_SCREEN"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;->MINUS_ONE_SCREEN:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    .line 13
    new-instance v6, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    const-string v7, "NOTIFICATION"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;->NOTIFICATION:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    .line 15
    new-instance v7, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    const-string v8, "SEARCH"

    const/16 v10, 0x8

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;->SEARCH:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    .line 17
    new-instance v8, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    const-string v9, "SHARE"

    const/16 v11, 0x9

    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;->SHARE:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    .line 19
    new-instance v9, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    const-string v10, "STORE"

    const/16 v12, 0xa

    invoke-direct {v9, v10, v11, v12}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;->STORE:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    .line 20
    filled-new-array/range {v0 .. v9}, [Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    move-result-object v0

    .line 21
    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;->b:[Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;->a:I

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;->b:[Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;->a:I

    return v0
.end method
