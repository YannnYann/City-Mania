###### Class com.unity3d.ads.AdFormat (com.unity3d.ads.AdFormat)
.class public final enum Lcom/unity3d/ads/AdFormat;
.super Ljava/lang/Enum;
.source "AdFormat.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/ads/AdFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/unity3d/ads/AdFormat;

.field public static final enum BANNER:Lcom/unity3d/ads/AdFormat;

.field public static final enum INTERSTITIAL:Lcom/unity3d/ads/AdFormat;

.field public static final enum REWARDED:Lcom/unity3d/ads/AdFormat;

.field public static final enum UNSPECIFIED:Lcom/unity3d/ads/AdFormat;


# direct methods
.method private static final synthetic $values()[Lcom/unity3d/ads/AdFormat;
    .registers 4

    .line 0
    sget-object v0, Lcom/unity3d/ads/AdFormat;->UNSPECIFIED:Lcom/unity3d/ads/AdFormat;

    sget-object v1, Lcom/unity3d/ads/AdFormat;->INTERSTITIAL:Lcom/unity3d/ads/AdFormat;

    sget-object v2, Lcom/unity3d/ads/AdFormat;->REWARDED:Lcom/unity3d/ads/AdFormat;

    sget-object v3, Lcom/unity3d/ads/AdFormat;->BANNER:Lcom/unity3d/ads/AdFormat;

    filled-new-array {v0, v1, v2, v3}, [Lcom/unity3d/ads/AdFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 8
    new-instance v0, Lcom/unity3d/ads/AdFormat;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/AdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/AdFormat;->UNSPECIFIED:Lcom/unity3d/ads/AdFormat;

    .line 11
    new-instance v0, Lcom/unity3d/ads/AdFormat;

    const-string v1, "INTERSTITIAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/AdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/AdFormat;->INTERSTITIAL:Lcom/unity3d/ads/AdFormat;

    .line 14
    new-instance v0, Lcom/unity3d/ads/AdFormat;

    const-string v1, "REWARDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/AdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/AdFormat;->REWARDED:Lcom/unity3d/ads/AdFormat;

    .line 17
    new-instance v0, Lcom/unity3d/ads/AdFormat;

    const-string v1, "BANNER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/AdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/AdFormat;->BANNER:Lcom/unity3d/ads/AdFormat;

    invoke-static {}, Lcom/unity3d/ads/AdFormat;->$values()[Lcom/unity3d/ads/AdFormat;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/AdFormat;->$VALUES:[Lcom/unity3d/ads/AdFormat;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/AdFormat;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/unity3d/ads/AdFormat;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/unity3d/ads/AdFormat;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/AdFormat;
    .registers 2

    const-class v0, Lcom/unity3d/ads/AdFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 18
    check-cast p0, Lcom/unity3d/ads/AdFormat;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/ads/AdFormat;
    .registers 1

    sget-object v0, Lcom/unity3d/ads/AdFormat;->$VALUES:[Lcom/unity3d/ads/AdFormat;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, [Lcom/unity3d/ads/AdFormat;

    return-object v0
.end method
