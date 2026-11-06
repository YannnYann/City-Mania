###### Class com.unity3d.ads.core.data.model.UnityAdsShowResult (com.unity3d.ads.core.data.model.UnityAdsShowResult)
.class public final enum Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;
.super Ljava/lang/Enum;
.source "UnityAdsShowResult.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

.field public static final enum ALREADY_SHOWING:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

.field public static final enum FAILURE:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

.field public static final enum INTERNAL_ERROR:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

.field public static final enum INVALID_ARGUMENT:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

.field public static final enum NOT_INITIALIZED:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

.field public static final enum NOT_READY:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

.field public static final enum NO_CONNECTION:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

.field public static final enum SUCCESS:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

.field public static final enum TIMEOUT:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

.field public static final enum VIDEO_PLAYER_ERROR:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;


# direct methods
.method private static final synthetic $values()[Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;
    .registers 10

    .line 0
    sget-object v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->NOT_INITIALIZED:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    sget-object v1, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->NOT_READY:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    sget-object v2, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->VIDEO_PLAYER_ERROR:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    sget-object v3, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->INVALID_ARGUMENT:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    sget-object v4, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->NO_CONNECTION:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    sget-object v5, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->ALREADY_SHOWING:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    sget-object v6, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->INTERNAL_ERROR:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    sget-object v7, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->TIMEOUT:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    sget-object v8, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->SUCCESS:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    sget-object v9, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->FAILURE:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    filled-new-array/range {v0 .. v9}, [Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 8
    new-instance v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    const-string v1, "NOT_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->NOT_INITIALIZED:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    .line 13
    new-instance v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    const-string v1, "NOT_READY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->NOT_READY:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    .line 18
    new-instance v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    const-string v1, "VIDEO_PLAYER_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->VIDEO_PLAYER_ERROR:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    .line 23
    new-instance v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    const-string v1, "INVALID_ARGUMENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->INVALID_ARGUMENT:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    .line 28
    new-instance v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    const-string v1, "NO_CONNECTION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->NO_CONNECTION:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    .line 33
    new-instance v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    const-string v1, "ALREADY_SHOWING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->ALREADY_SHOWING:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    .line 38
    new-instance v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    const-string v1, "INTERNAL_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->INTERNAL_ERROR:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    .line 43
    new-instance v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->TIMEOUT:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    .line 45
    new-instance v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    const-string v1, "SUCCESS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->SUCCESS:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    .line 46
    new-instance v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    const-string v1, "FAILURE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->FAILURE:Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    invoke-static {}, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->$values()[Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->$VALUES:[Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;
    .registers 2

    const-class v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 47
    check-cast p0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;
    .registers 1

    sget-object v0, Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;->$VALUES:[Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 47
    check-cast v0, [Lcom/unity3d/ads/core/data/model/UnityAdsShowResult;

    return-object v0
.end method
