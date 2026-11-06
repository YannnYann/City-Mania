###### Class io.bidmachine.iab.vast.VideoType (io.bidmachine.iab.vast.VideoType)
.class public final enum Lio/bidmachine/iab/vast/VideoType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/iab/vast/VideoType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/iab/vast/VideoType;

.field public static final enum NonRewarded:Lio/bidmachine/iab/vast/VideoType;

.field public static final enum Rewarded:Lio/bidmachine/iab/vast/VideoType;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/VideoType;

    const-string v1, "NonRewarded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/VideoType;->NonRewarded:Lio/bidmachine/iab/vast/VideoType;

    .line 2
    new-instance v0, Lio/bidmachine/iab/vast/VideoType;

    const-string v1, "Rewarded"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/VideoType;->Rewarded:Lio/bidmachine/iab/vast/VideoType;

    .line 3
    invoke-static {}, Lio/bidmachine/iab/vast/VideoType;->a()[Lio/bidmachine/iab/vast/VideoType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/vast/VideoType;->$VALUES:[Lio/bidmachine/iab/vast/VideoType;

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
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lio/bidmachine/iab/vast/VideoType;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/VideoType;->NonRewarded:Lio/bidmachine/iab/vast/VideoType;

    sget-object v1, Lio/bidmachine/iab/vast/VideoType;->Rewarded:Lio/bidmachine/iab/vast/VideoType;

    filled-new-array {v0, v1}, [Lio/bidmachine/iab/vast/VideoType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/iab/vast/VideoType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-class v0, Lio/bidmachine/iab/vast/VideoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/iab/vast/VideoType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/iab/vast/VideoType;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/VideoType;->$VALUES:[Lio/bidmachine/iab/vast/VideoType;

    invoke-virtual {v0}, [Lio/bidmachine/iab/vast/VideoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/iab/vast/VideoType;

    return-object v0
.end method
