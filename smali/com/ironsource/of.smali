###### Class com.ironsource.EnumC3767of (com.ironsource.of)
.class public final enum Lcom/ironsource/of;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/of;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/of;

.field public static final enum b:Lcom/ironsource/of;

.field private static final synthetic c:[Lcom/ironsource/of;

.field private static final synthetic d:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/ironsource/of;

    const-string v1, "FullHistory"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/of;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/of;->a:Lcom/ironsource/of;

    .line 2
    new-instance v0, Lcom/ironsource/of;

    const-string v1, "CurrentlyLoadedAds"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/of;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/of;->b:Lcom/ironsource/of;

    invoke-static {}, Lcom/ironsource/of;->a()[Lcom/ironsource/of;

    move-result-object v0

    sput-object v0, Lcom/ironsource/of;->c:[Lcom/ironsource/of;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/ironsource/of;->d:Lkotlin/enums/EnumEntries;

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

.method private static final synthetic a()[Lcom/ironsource/of;
    .registers 2

    .line 1
    sget-object v0, Lcom/ironsource/of;->a:Lcom/ironsource/of;

    sget-object v1, Lcom/ironsource/of;->b:Lcom/ironsource/of;

    filled-new-array {v0, v1}, [Lcom/ironsource/of;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/ironsource/of;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/ironsource/of;->d:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/of;
    .registers 2

    const-class v0, Lcom/ironsource/of;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/ironsource/of;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/of;
    .registers 1

    sget-object v0, Lcom/ironsource/of;->c:[Lcom/ironsource/of;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/ironsource/of;

    return-object v0
.end method
