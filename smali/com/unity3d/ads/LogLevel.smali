###### Class com.unity3d.ads.LogLevel (com.unity3d.ads.LogLevel)
.class public final enum Lcom/unity3d/ads/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/ads/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/unity3d/ads/LogLevel;

.field public static final enum DEBUG:Lcom/unity3d/ads/LogLevel;

.field public static final enum DISABLED:Lcom/unity3d/ads/LogLevel;

.field public static final enum ERROR:Lcom/unity3d/ads/LogLevel;

.field public static final enum INFO:Lcom/unity3d/ads/LogLevel;

.field public static final enum TRACE:Lcom/unity3d/ads/LogLevel;


# instance fields
.field private final level:I


# direct methods
.method private static final synthetic $values()[Lcom/unity3d/ads/LogLevel;
    .registers 5

    .line 0
    sget-object v0, Lcom/unity3d/ads/LogLevel;->DISABLED:Lcom/unity3d/ads/LogLevel;

    sget-object v1, Lcom/unity3d/ads/LogLevel;->ERROR:Lcom/unity3d/ads/LogLevel;

    sget-object v2, Lcom/unity3d/ads/LogLevel;->INFO:Lcom/unity3d/ads/LogLevel;

    sget-object v3, Lcom/unity3d/ads/LogLevel;->DEBUG:Lcom/unity3d/ads/LogLevel;

    sget-object v4, Lcom/unity3d/ads/LogLevel;->TRACE:Lcom/unity3d/ads/LogLevel;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/unity3d/ads/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 10
    new-instance v0, Lcom/unity3d/ads/LogLevel;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/ads/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/ads/LogLevel;->DISABLED:Lcom/unity3d/ads/LogLevel;

    .line 13
    new-instance v0, Lcom/unity3d/ads/LogLevel;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/ads/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/ads/LogLevel;->ERROR:Lcom/unity3d/ads/LogLevel;

    .line 16
    new-instance v0, Lcom/unity3d/ads/LogLevel;

    const-string v1, "INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/ads/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/ads/LogLevel;->INFO:Lcom/unity3d/ads/LogLevel;

    .line 19
    new-instance v0, Lcom/unity3d/ads/LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/ads/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/ads/LogLevel;->DEBUG:Lcom/unity3d/ads/LogLevel;

    .line 22
    new-instance v0, Lcom/unity3d/ads/LogLevel;

    const-string v1, "TRACE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/ads/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/ads/LogLevel;->TRACE:Lcom/unity3d/ads/LogLevel;

    invoke-static {}, Lcom/unity3d/ads/LogLevel;->$values()[Lcom/unity3d/ads/LogLevel;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/LogLevel;->$VALUES:[Lcom/unity3d/ads/LogLevel;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/LogLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/unity3d/ads/LogLevel;->level:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/unity3d/ads/LogLevel;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/unity3d/ads/LogLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/LogLevel;
    .registers 2

    const-class v0, Lcom/unity3d/ads/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 23
    check-cast p0, Lcom/unity3d/ads/LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/ads/LogLevel;
    .registers 1

    sget-object v0, Lcom/unity3d/ads/LogLevel;->$VALUES:[Lcom/unity3d/ads/LogLevel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 23
    check-cast v0, [Lcom/unity3d/ads/LogLevel;

    return-object v0
.end method


# virtual methods
.method public final getLevel$unity_ads_defaultRelease()I
    .registers 2

    .line 8
    iget v0, p0, Lcom/unity3d/ads/LogLevel;->level:I

    return v0
.end method
