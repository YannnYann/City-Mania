###### Class io.bidmachine.PositionData (io.bidmachine.PositionData)
.class public final enum Lio/bidmachine/PositionData;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/PositionData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/PositionData;

.field public static final enum BottomLeft:Lio/bidmachine/PositionData;

.field public static final enum BottomRight:Lio/bidmachine/PositionData;

.field public static final enum TopLeft:Lio/bidmachine/PositionData;

.field public static final enum TopRight:Lio/bidmachine/PositionData;


# direct methods
.method private static final synthetic $values()[Lio/bidmachine/PositionData;
    .registers 4

    .line 0
    sget-object v0, Lio/bidmachine/PositionData;->TopLeft:Lio/bidmachine/PositionData;

    sget-object v1, Lio/bidmachine/PositionData;->TopRight:Lio/bidmachine/PositionData;

    sget-object v2, Lio/bidmachine/PositionData;->BottomLeft:Lio/bidmachine/PositionData;

    sget-object v3, Lio/bidmachine/PositionData;->BottomRight:Lio/bidmachine/PositionData;

    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/PositionData;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/PositionData;

    const-string v1, "TopLeft"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/PositionData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/PositionData;->TopLeft:Lio/bidmachine/PositionData;

    .line 2
    new-instance v0, Lio/bidmachine/PositionData;

    const-string v1, "TopRight"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/PositionData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/PositionData;->TopRight:Lio/bidmachine/PositionData;

    .line 3
    new-instance v0, Lio/bidmachine/PositionData;

    const-string v1, "BottomLeft"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/PositionData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/PositionData;->BottomLeft:Lio/bidmachine/PositionData;

    .line 4
    new-instance v0, Lio/bidmachine/PositionData;

    const-string v1, "BottomRight"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/bidmachine/PositionData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/PositionData;->BottomRight:Lio/bidmachine/PositionData;

    invoke-static {}, Lio/bidmachine/PositionData;->$values()[Lio/bidmachine/PositionData;

    move-result-object v0

    sput-object v0, Lio/bidmachine/PositionData;->$VALUES:[Lio/bidmachine/PositionData;

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

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/PositionData;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/PositionData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/PositionData;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/PositionData;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/PositionData;->$VALUES:[Lio/bidmachine/PositionData;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/PositionData;

    return-object v0
.end method
