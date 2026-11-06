###### Class io.bidmachine.Orientation (io.bidmachine.Orientation)
.class public final enum Lio/bidmachine/Orientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/Orientation;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/Orientation;

.field public static final enum Landscape:Lio/bidmachine/Orientation;

.field public static final enum Portrait:Lio/bidmachine/Orientation;

.field public static final enum Undefined:Lio/bidmachine/Orientation;


# direct methods
.method private static synthetic $values()[Lio/bidmachine/Orientation;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/Orientation;->Undefined:Lio/bidmachine/Orientation;

    sget-object v1, Lio/bidmachine/Orientation;->Portrait:Lio/bidmachine/Orientation;

    sget-object v2, Lio/bidmachine/Orientation;->Landscape:Lio/bidmachine/Orientation;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/Orientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/Orientation;

    const-string v1, "Undefined"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/Orientation;->Undefined:Lio/bidmachine/Orientation;

    new-instance v0, Lio/bidmachine/Orientation;

    const-string v1, "Portrait"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/Orientation;->Portrait:Lio/bidmachine/Orientation;

    new-instance v0, Lio/bidmachine/Orientation;

    const-string v1, "Landscape"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/Orientation;->Landscape:Lio/bidmachine/Orientation;

    .line 2
    invoke-static {}, Lio/bidmachine/Orientation;->$values()[Lio/bidmachine/Orientation;

    move-result-object v0

    sput-object v0, Lio/bidmachine/Orientation;->$VALUES:[Lio/bidmachine/Orientation;

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

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/Orientation;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/Orientation;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/Orientation;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/Orientation;->$VALUES:[Lio/bidmachine/Orientation;

    invoke-virtual {v0}, [Lio/bidmachine/Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/Orientation;

    return-object v0
.end method
