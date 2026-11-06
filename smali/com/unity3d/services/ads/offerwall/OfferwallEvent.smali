###### Class com.unity3d.services.ads.offerwall.OfferwallEvent (com.unity3d.services.ads.offerwall.OfferwallEvent)
.class public final enum Lcom/unity3d/services/ads/offerwall/OfferwallEvent;
.super Ljava/lang/Enum;
.source "OfferwallEvent.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/ads/offerwall/OfferwallEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

.field public static final enum ON_CONTENT_DISMISS:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

.field public static final enum ON_CONTENT_READY:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

.field public static final enum ON_CONTENT_SHOW:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

.field public static final enum REQUEST_FAILED:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

.field public static final enum REQUEST_SUCCESS:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

.field public static final enum SHOW_FAILED:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;


# direct methods
.method private static final synthetic $values()[Lcom/unity3d/services/ads/offerwall/OfferwallEvent;
    .registers 6

    .line 0
    sget-object v0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;->REQUEST_SUCCESS:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    sget-object v1, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;->REQUEST_FAILED:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    sget-object v2, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;->ON_CONTENT_READY:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    sget-object v3, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;->ON_CONTENT_SHOW:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    sget-object v4, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;->ON_CONTENT_DISMISS:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    sget-object v5, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;->SHOW_FAILED:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    filled-new-array/range {v0 .. v5}, [Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    const-string v1, "REQUEST_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;->REQUEST_SUCCESS:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    .line 5
    new-instance v0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    const-string v1, "REQUEST_FAILED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;->REQUEST_FAILED:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    .line 6
    new-instance v0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    const-string v1, "ON_CONTENT_READY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;->ON_CONTENT_READY:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    .line 7
    new-instance v0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    const-string v1, "ON_CONTENT_SHOW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;->ON_CONTENT_SHOW:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    .line 8
    new-instance v0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    const-string v1, "ON_CONTENT_DISMISS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;->ON_CONTENT_DISMISS:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    .line 9
    new-instance v0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    const-string v1, "SHOW_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;->SHOW_FAILED:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    invoke-static {}, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;->$values()[Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;->$VALUES:[Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/unity3d/services/ads/offerwall/OfferwallEvent;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/ads/offerwall/OfferwallEvent;
    .registers 2

    const-class v0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 10
    check-cast p0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/ads/offerwall/OfferwallEvent;
    .registers 1

    sget-object v0, Lcom/unity3d/services/ads/offerwall/OfferwallEvent;->$VALUES:[Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, [Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    return-object v0
.end method
