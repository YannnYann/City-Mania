###### Class io.bidmachine.rendering.model.engagedclick.CreativeProfile (io.bidmachine.rendering.model.engagedclick.CreativeProfile)
.class public final enum Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INTERACTIVE_HTML:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

.field public static final enum LIKELY_PLAYABLE:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

.field public static final enum PLAYABLE:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

.field public static final enum REGULAR:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

.field public static final synthetic b:[Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    const/4 v1, 0x0

    const-string v2, "playable"

    const-string v3, "PLAYABLE"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->PLAYABLE:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    const/4 v1, 0x1

    const-string v2, "likely_playable"

    const-string v3, "LIKELY_PLAYABLE"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->LIKELY_PLAYABLE:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    const/4 v1, 0x2

    const-string v2, "interactive_html"

    const-string v3, "INTERACTIVE_HTML"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->INTERACTIVE_HTML:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    .line 4
    new-instance v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    const/4 v1, 0x3

    const-string v2, "regular"

    const-string v3, "REGULAR"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->REGULAR:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    invoke-static {}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->a()[Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->b:[Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

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

    iput-object p3, p0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;
    .registers 4

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->PLAYABLE:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    sget-object v1, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->LIKELY_PLAYABLE:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    sget-object v2, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->INTERACTIVE_HTML:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    sget-object v3, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->REGULAR:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->b:[Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->a:Ljava/lang/String;

    return-object v0
.end method
