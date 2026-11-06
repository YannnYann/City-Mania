###### Class com.unity3d.ads.core.log.LogLevelInternal (com.unity3d.ads.core.log.LogLevelInternal)
.class public final enum Lcom/unity3d/ads/core/log/LogLevelInternal;
.super Ljava/lang/Enum;
.source "LogLevel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/log/LogLevelInternal$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/ads/core/log/LogLevelInternal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/unity3d/ads/core/log/LogLevelInternal;

.field public static final enum DEBUG:Lcom/unity3d/ads/core/log/LogLevelInternal;

.field public static final enum DISABLED:Lcom/unity3d/ads/core/log/LogLevelInternal;

.field public static final enum ERROR:Lcom/unity3d/ads/core/log/LogLevelInternal;

.field public static final enum INFO:Lcom/unity3d/ads/core/log/LogLevelInternal;

.field public static final enum TRACE:Lcom/unity3d/ads/core/log/LogLevelInternal;


# instance fields
.field private final level:I


# direct methods
.method private static final synthetic $values()[Lcom/unity3d/ads/core/log/LogLevelInternal;
    .registers 5

    .line 0
    sget-object v0, Lcom/unity3d/ads/core/log/LogLevelInternal;->DISABLED:Lcom/unity3d/ads/core/log/LogLevelInternal;

    sget-object v1, Lcom/unity3d/ads/core/log/LogLevelInternal;->ERROR:Lcom/unity3d/ads/core/log/LogLevelInternal;

    sget-object v2, Lcom/unity3d/ads/core/log/LogLevelInternal;->INFO:Lcom/unity3d/ads/core/log/LogLevelInternal;

    sget-object v3, Lcom/unity3d/ads/core/log/LogLevelInternal;->DEBUG:Lcom/unity3d/ads/core/log/LogLevelInternal;

    sget-object v4, Lcom/unity3d/ads/core/log/LogLevelInternal;->TRACE:Lcom/unity3d/ads/core/log/LogLevelInternal;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/unity3d/ads/core/log/LogLevelInternal;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 7
    new-instance v0, Lcom/unity3d/ads/core/log/LogLevelInternal;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/ads/core/log/LogLevelInternal;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/ads/core/log/LogLevelInternal;->DISABLED:Lcom/unity3d/ads/core/log/LogLevelInternal;

    new-instance v0, Lcom/unity3d/ads/core/log/LogLevelInternal;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/ads/core/log/LogLevelInternal;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/ads/core/log/LogLevelInternal;->ERROR:Lcom/unity3d/ads/core/log/LogLevelInternal;

    new-instance v0, Lcom/unity3d/ads/core/log/LogLevelInternal;

    const-string v1, "INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/ads/core/log/LogLevelInternal;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/ads/core/log/LogLevelInternal;->INFO:Lcom/unity3d/ads/core/log/LogLevelInternal;

    new-instance v0, Lcom/unity3d/ads/core/log/LogLevelInternal;

    const-string v1, "DEBUG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/ads/core/log/LogLevelInternal;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/ads/core/log/LogLevelInternal;->DEBUG:Lcom/unity3d/ads/core/log/LogLevelInternal;

    new-instance v0, Lcom/unity3d/ads/core/log/LogLevelInternal;

    const-string v1, "TRACE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/ads/core/log/LogLevelInternal;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/ads/core/log/LogLevelInternal;->TRACE:Lcom/unity3d/ads/core/log/LogLevelInternal;

    invoke-static {}, Lcom/unity3d/ads/core/log/LogLevelInternal;->$values()[Lcom/unity3d/ads/core/log/LogLevelInternal;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/log/LogLevelInternal;->$VALUES:[Lcom/unity3d/ads/core/log/LogLevelInternal;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/log/LogLevelInternal;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/unity3d/ads/core/log/LogLevelInternal;->level:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/unity3d/ads/core/log/LogLevelInternal;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/unity3d/ads/core/log/LogLevelInternal;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/core/log/LogLevelInternal;
    .registers 2

    const-class v0, Lcom/unity3d/ads/core/log/LogLevelInternal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 18
    check-cast p0, Lcom/unity3d/ads/core/log/LogLevelInternal;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/ads/core/log/LogLevelInternal;
    .registers 1

    sget-object v0, Lcom/unity3d/ads/core/log/LogLevelInternal;->$VALUES:[Lcom/unity3d/ads/core/log/LogLevelInternal;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, [Lcom/unity3d/ads/core/log/LogLevelInternal;

    return-object v0
.end method


# virtual methods
.method public final getLevel$unity_ads_defaultRelease()I
    .registers 2

    .line 6
    iget v0, p0, Lcom/unity3d/ads/core/log/LogLevelInternal;->level:I

    return v0
.end method

.method public final toAndroidLogLevel()I
    .registers 5

    .line 10
    sget-object v0, Lcom/unity3d/ads/core/log/LogLevelInternal$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1f

    if-eq v0, v2, :cond_1e

    const/4 v2, 0x5

    if-ne v0, v2, :cond_18

    return v1

    :cond_18
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1e
    return v3

    :cond_1f
    return v2

    :cond_20
    const/4 v0, 0x6

    return v0

    :cond_22
    const v0, 0x7fffffff

    return v0
.end method

###### Class com.unity3d.ads.core.log.LogLevelInternal.WhenMappings (com.unity3d.ads.core.log.LogLevelInternal$WhenMappings)
.class public final synthetic Lcom/unity3d/ads/core/log/LogLevelInternal$WhenMappings;
.super Ljava/lang/Object;
.source "LogLevel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/log/LogLevelInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/log/LogLevelInternal;->values()[Lcom/unity3d/ads/core/log/LogLevelInternal;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/unity3d/ads/core/log/LogLevelInternal;->DISABLED:Lcom/unity3d/ads/core/log/LogLevelInternal;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/unity3d/ads/core/log/LogLevelInternal;->ERROR:Lcom/unity3d/ads/core/log/LogLevelInternal;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/unity3d/ads/core/log/LogLevelInternal;->INFO:Lcom/unity3d/ads/core/log/LogLevelInternal;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lcom/unity3d/ads/core/log/LogLevelInternal;->DEBUG:Lcom/unity3d/ads/core/log/LogLevelInternal;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lcom/unity3d/ads/core/log/LogLevelInternal;->TRACE:Lcom/unity3d/ads/core/log/LogLevelInternal;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    sput-object v0, Lcom/unity3d/ads/core/log/LogLevelInternal$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
