###### Class com.ironsource.EnumC3819ra (com.ironsource.ra)
.class public final enum Lcom/ironsource/ra;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/ra;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/ra;

.field public static final enum b:Lcom/ironsource/ra;

.field public static final enum c:Lcom/ironsource/ra;

.field public static final enum d:Lcom/ironsource/ra;

.field public static final enum e:Lcom/ironsource/ra;

.field private static final synthetic f:[Lcom/ironsource/ra;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/ironsource/ra;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/ra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/ra;->a:Lcom/ironsource/ra;

    .line 2
    new-instance v0, Lcom/ironsource/ra;

    const-string v1, "STARTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/ra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/ra;->b:Lcom/ironsource/ra;

    .line 3
    new-instance v0, Lcom/ironsource/ra;

    const-string v1, "RESUMED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/ra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/ra;->c:Lcom/ironsource/ra;

    .line 4
    new-instance v0, Lcom/ironsource/ra;

    const-string v1, "PAUSED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ironsource/ra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/ra;->d:Lcom/ironsource/ra;

    .line 5
    new-instance v0, Lcom/ironsource/ra;

    const-string v1, "STOPPED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ironsource/ra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/ra;->e:Lcom/ironsource/ra;

    .line 6
    invoke-static {}, Lcom/ironsource/ra;->a()[Lcom/ironsource/ra;

    move-result-object v0

    sput-object v0, Lcom/ironsource/ra;->f:[Lcom/ironsource/ra;

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

.method private static synthetic a()[Lcom/ironsource/ra;
    .registers 5

    .line 1
    sget-object v0, Lcom/ironsource/ra;->a:Lcom/ironsource/ra;

    sget-object v1, Lcom/ironsource/ra;->b:Lcom/ironsource/ra;

    sget-object v2, Lcom/ironsource/ra;->c:Lcom/ironsource/ra;

    sget-object v3, Lcom/ironsource/ra;->d:Lcom/ironsource/ra;

    sget-object v4, Lcom/ironsource/ra;->e:Lcom/ironsource/ra;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ironsource/ra;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/ra;
    .registers 2

    .line 1
    const-class v0, Lcom/ironsource/ra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/ra;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/ra;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/ra;->f:[Lcom/ironsource/ra;

    invoke-virtual {v0}, [Lcom/ironsource/ra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/ra;

    return-object v0
.end method
