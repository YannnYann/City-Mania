###### Class io.bidmachine.rendering.model.engagedclick.ProfileSource (io.bidmachine.rendering.model.engagedclick.ProfileSource)
.class public final enum Lio/bidmachine/rendering/model/engagedclick/ProfileSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/engagedclick/ProfileSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADM_HINT:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

.field public static final enum BID_ATTR_13:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

.field public static final enum NONE:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

.field public static final synthetic b:[Lio/bidmachine/rendering/model/engagedclick/ProfileSource;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    const/4 v1, 0x0

    const-string v2, "bid_attr_13"

    const-string v3, "BID_ATTR_13"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;->BID_ATTR_13:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    const/4 v1, 0x1

    const-string v2, "adm_hint"

    const-string v3, "ADM_HINT"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;->ADM_HINT:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    const/4 v1, 0x2

    const-string v2, "none"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;->NONE:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    invoke-static {}, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;->a()[Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;->b:[Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

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

    iput-object p3, p0, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/engagedclick/ProfileSource;
    .registers 3

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;->BID_ATTR_13:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    sget-object v1, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;->ADM_HINT:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    sget-object v2, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;->NONE:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/engagedclick/ProfileSource;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/engagedclick/ProfileSource;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;->b:[Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;->a:Ljava/lang/String;

    return-object v0
.end method
