###### Class io.blueflower.stapel2d.gamestack.GameStackEvent (io.blueflower.stapel2d.gamestack.GameStackEvent)
.class public final enum Lio/blueflower/stapel2d/gamestack/GameStackEvent;
.super Ljava/lang/Enum;
.source "GameStackEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/blueflower/stapel2d/gamestack/GameStackEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/blueflower/stapel2d/gamestack/GameStackEvent;

.field public static final enum APP_ENTER:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

.field public static final enum APP_LEAVE:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

.field public static final enum DROP:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

.field public static final enum ENTER:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

.field public static final enum LEAVE:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

.field public static final enum PREPARE:Lio/blueflower/stapel2d/gamestack/GameStackEvent;


# direct methods
.method public static synthetic $values()[Lio/blueflower/stapel2d/gamestack/GameStackEvent;
    .registers 6

    .line 6
    sget-object v0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->ENTER:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    sget-object v1, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->LEAVE:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    sget-object v2, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->PREPARE:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    sget-object v3, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->DROP:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    sget-object v4, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->APP_ENTER:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    sget-object v5, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->APP_LEAVE:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    filled-new-array/range {v0 .. v5}, [Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 8
    new-instance v0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    const-string v1, "ENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/blueflower/stapel2d/gamestack/GameStackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->ENTER:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    .line 9
    new-instance v0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    const-string v1, "LEAVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/blueflower/stapel2d/gamestack/GameStackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->LEAVE:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    .line 10
    new-instance v0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    const-string v1, "PREPARE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/blueflower/stapel2d/gamestack/GameStackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->PREPARE:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    .line 11
    new-instance v0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    const-string v1, "DROP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/blueflower/stapel2d/gamestack/GameStackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->DROP:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    .line 12
    new-instance v0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    const-string v1, "APP_ENTER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/blueflower/stapel2d/gamestack/GameStackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->APP_ENTER:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    .line 13
    new-instance v0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    const-string v1, "APP_LEAVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/blueflower/stapel2d/gamestack/GameStackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->APP_LEAVE:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    .line 6
    invoke-static {}, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->$values()[Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    move-result-object v0

    sput-object v0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->$VALUES:[Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/blueflower/stapel2d/gamestack/GameStackEvent;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 6
    const-class v0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    return-object p0
.end method

.method public static values()[Lio/blueflower/stapel2d/gamestack/GameStackEvent;
    .registers 1

    .line 6
    sget-object v0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->$VALUES:[Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    invoke-virtual {v0}, [Lio/blueflower/stapel2d/gamestack/GameStackEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    return-object v0
.end method
