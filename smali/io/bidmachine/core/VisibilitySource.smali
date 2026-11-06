###### Class io.bidmachine.core.VisibilitySource (io.bidmachine.core.VisibilitySource)
.class public final enum Lio/bidmachine/core/VisibilitySource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/core/VisibilitySource;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/core/VisibilitySource;

.field public static final enum All:Lio/bidmachine/core/VisibilitySource;

.field public static final enum BidMachine:Lio/bidmachine/core/VisibilitySource;

.field public static final enum Network:Lio/bidmachine/core/VisibilitySource;


# direct methods
.method public static synthetic $values()[Lio/bidmachine/core/VisibilitySource;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/core/VisibilitySource;->BidMachine:Lio/bidmachine/core/VisibilitySource;

    sget-object v1, Lio/bidmachine/core/VisibilitySource;->Network:Lio/bidmachine/core/VisibilitySource;

    sget-object v2, Lio/bidmachine/core/VisibilitySource;->All:Lio/bidmachine/core/VisibilitySource;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/core/VisibilitySource;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/core/VisibilitySource;

    const-string v1, "BidMachine"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/core/VisibilitySource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/core/VisibilitySource;->BidMachine:Lio/bidmachine/core/VisibilitySource;

    new-instance v0, Lio/bidmachine/core/VisibilitySource;

    const-string v1, "Network"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/core/VisibilitySource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/core/VisibilitySource;->Network:Lio/bidmachine/core/VisibilitySource;

    new-instance v0, Lio/bidmachine/core/VisibilitySource;

    const-string v1, "All"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/core/VisibilitySource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/core/VisibilitySource;->All:Lio/bidmachine/core/VisibilitySource;

    .line 2
    invoke-static {}, Lio/bidmachine/core/VisibilitySource;->$values()[Lio/bidmachine/core/VisibilitySource;

    move-result-object v0

    sput-object v0, Lio/bidmachine/core/VisibilitySource;->$VALUES:[Lio/bidmachine/core/VisibilitySource;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/core/VisibilitySource;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/core/VisibilitySource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/core/VisibilitySource;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/core/VisibilitySource;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/core/VisibilitySource;->$VALUES:[Lio/bidmachine/core/VisibilitySource;

    invoke-virtual {v0}, [Lio/bidmachine/core/VisibilitySource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/core/VisibilitySource;

    return-object v0
.end method
