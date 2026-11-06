###### Class io.bidmachine.rendering.model.engagedclick.EngagedClickAction (io.bidmachine.rendering.model.engagedclick.EngagedClickAction)
.class public final enum Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COLLAPSE:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

.field public static final enum EXPAND:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

.field public static final enum VISUAL_DIFF:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

.field public static final synthetic b:[Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    const/4 v1, 0x0

    const-string v2, "expand"

    const-string v3, "EXPAND"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;->EXPAND:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    const/4 v1, 0x1

    const-string v2, "collapse"

    const-string v3, "COLLAPSE"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;->COLLAPSE:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    const/4 v1, 0x2

    const-string v2, "visual_diff"

    const-string v3, "VISUAL_DIFF"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;->VISUAL_DIFF:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    invoke-static {}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;->a()[Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;->b:[Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;
    .registers 3

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;->EXPAND:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    sget-object v1, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;->COLLAPSE:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    sget-object v2, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;->VISUAL_DIFF:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;->b:[Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;->a:Ljava/lang/String;

    return-object v0
.end method
