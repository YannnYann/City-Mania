###### Class com.unity3d.ironsourceads.LogLevel (com.unity3d.ironsourceads.LogLevel)
.class public final enum Lcom/unity3d/ironsourceads/LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/ironsourceads/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ERROR:Lcom/unity3d/ironsourceads/LogLevel;

.field public static final enum NONE:Lcom/unity3d/ironsourceads/LogLevel;

.field public static final enum VERBOSE:Lcom/unity3d/ironsourceads/LogLevel;

.field private static final synthetic a:[Lcom/unity3d/ironsourceads/LogLevel;

.field private static final synthetic b:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/unity3d/ironsourceads/LogLevel;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ironsourceads/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ironsourceads/LogLevel;->NONE:Lcom/unity3d/ironsourceads/LogLevel;

    .line 2
    new-instance v0, Lcom/unity3d/ironsourceads/LogLevel;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ironsourceads/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ironsourceads/LogLevel;->ERROR:Lcom/unity3d/ironsourceads/LogLevel;

    .line 3
    new-instance v0, Lcom/unity3d/ironsourceads/LogLevel;

    const-string v1, "VERBOSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ironsourceads/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ironsourceads/LogLevel;->VERBOSE:Lcom/unity3d/ironsourceads/LogLevel;

    invoke-static {}, Lcom/unity3d/ironsourceads/LogLevel;->a()[Lcom/unity3d/ironsourceads/LogLevel;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ironsourceads/LogLevel;->a:[Lcom/unity3d/ironsourceads/LogLevel;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ironsourceads/LogLevel;->b:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lcom/unity3d/ironsourceads/LogLevel;
    .registers 3

    .line 0
    sget-object v0, Lcom/unity3d/ironsourceads/LogLevel;->NONE:Lcom/unity3d/ironsourceads/LogLevel;

    sget-object v1, Lcom/unity3d/ironsourceads/LogLevel;->ERROR:Lcom/unity3d/ironsourceads/LogLevel;

    sget-object v2, Lcom/unity3d/ironsourceads/LogLevel;->VERBOSE:Lcom/unity3d/ironsourceads/LogLevel;

    filled-new-array {v0, v1, v2}, [Lcom/unity3d/ironsourceads/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/unity3d/ironsourceads/LogLevel;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/unity3d/ironsourceads/LogLevel;->b:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ironsourceads/LogLevel;
    .registers 2

    const-class v0, Lcom/unity3d/ironsourceads/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/unity3d/ironsourceads/LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/ironsourceads/LogLevel;
    .registers 1

    sget-object v0, Lcom/unity3d/ironsourceads/LogLevel;->a:[Lcom/unity3d/ironsourceads/LogLevel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/unity3d/ironsourceads/LogLevel;

    return-object v0
.end method
