###### Class io.bidmachine.iab.vast.TrackingEvent (io.bidmachine.iab.vast.TrackingEvent)
.class public final enum Lio/bidmachine/iab/vast/TrackingEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/iab/vast/TrackingEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/iab/vast/TrackingEvent;

.field public static final enum acceptInvitation:Lio/bidmachine/iab/vast/TrackingEvent;

.field public static final enum close:Lio/bidmachine/iab/vast/TrackingEvent;

.field public static final enum collapse:Lio/bidmachine/iab/vast/TrackingEvent;

.field public static final enum complete:Lio/bidmachine/iab/vast/TrackingEvent;

.field public static final enum creativeView:Lio/bidmachine/iab/vast/TrackingEvent;

.field public static final enum expand:Lio/bidmachine/iab/vast/TrackingEvent;

.field public static final enum firstQuartile:Lio/bidmachine/iab/vast/TrackingEvent;

.field public static final enum fullscreen:Lio/bidmachine/iab/vast/TrackingEvent;

.field public static final enum midpoint:Lio/bidmachine/iab/vast/TrackingEvent;

.field public static final enum mute:Lio/bidmachine/iab/vast/TrackingEvent;

.field public static final enum pause:Lio/bidmachine/iab/vast/TrackingEvent;

.field public static final enum resume:Lio/bidmachine/iab/vast/TrackingEvent;

.field public static final enum rewind:Lio/bidmachine/iab/vast/TrackingEvent;

.field public static final enum skip:Lio/bidmachine/iab/vast/TrackingEvent;

.field public static final enum start:Lio/bidmachine/iab/vast/TrackingEvent;

.field public static final enum thirdQuartile:Lio/bidmachine/iab/vast/TrackingEvent;

.field public static final enum unmute:Lio/bidmachine/iab/vast/TrackingEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/TrackingEvent;

    const-string v1, "creativeView"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->creativeView:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 2
    new-instance v0, Lio/bidmachine/iab/vast/TrackingEvent;

    const-string v1, "start"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->start:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 3
    new-instance v0, Lio/bidmachine/iab/vast/TrackingEvent;

    const-string v1, "firstQuartile"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->firstQuartile:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 4
    new-instance v0, Lio/bidmachine/iab/vast/TrackingEvent;

    const-string v1, "midpoint"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->midpoint:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 5
    new-instance v0, Lio/bidmachine/iab/vast/TrackingEvent;

    const-string v1, "thirdQuartile"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->thirdQuartile:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 6
    new-instance v0, Lio/bidmachine/iab/vast/TrackingEvent;

    const-string v1, "complete"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->complete:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 7
    new-instance v0, Lio/bidmachine/iab/vast/TrackingEvent;

    const-string v1, "mute"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->mute:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 8
    new-instance v0, Lio/bidmachine/iab/vast/TrackingEvent;

    const-string v1, "unmute"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->unmute:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 9
    new-instance v0, Lio/bidmachine/iab/vast/TrackingEvent;

    const-string v1, "skip"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->skip:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 10
    new-instance v0, Lio/bidmachine/iab/vast/TrackingEvent;

    const-string v1, "pause"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->pause:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 11
    new-instance v0, Lio/bidmachine/iab/vast/TrackingEvent;

    const-string v1, "rewind"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->rewind:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 12
    new-instance v0, Lio/bidmachine/iab/vast/TrackingEvent;

    const-string v1, "resume"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->resume:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 13
    new-instance v0, Lio/bidmachine/iab/vast/TrackingEvent;

    const-string v1, "fullscreen"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->fullscreen:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 14
    new-instance v0, Lio/bidmachine/iab/vast/TrackingEvent;

    const-string v1, "expand"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->expand:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 15
    new-instance v0, Lio/bidmachine/iab/vast/TrackingEvent;

    const-string v1, "collapse"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->collapse:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 16
    new-instance v0, Lio/bidmachine/iab/vast/TrackingEvent;

    const-string v1, "acceptInvitation"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->acceptInvitation:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 17
    new-instance v0, Lio/bidmachine/iab/vast/TrackingEvent;

    const-string v1, "close"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->close:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 18
    invoke-static {}, Lio/bidmachine/iab/vast/TrackingEvent;->a()[Lio/bidmachine/iab/vast/TrackingEvent;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->$VALUES:[Lio/bidmachine/iab/vast/TrackingEvent;

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

.method public static synthetic a()[Lio/bidmachine/iab/vast/TrackingEvent;
    .registers 18

    .line 1
    sget-object v1, Lio/bidmachine/iab/vast/TrackingEvent;->creativeView:Lio/bidmachine/iab/vast/TrackingEvent;

    sget-object v2, Lio/bidmachine/iab/vast/TrackingEvent;->start:Lio/bidmachine/iab/vast/TrackingEvent;

    sget-object v3, Lio/bidmachine/iab/vast/TrackingEvent;->firstQuartile:Lio/bidmachine/iab/vast/TrackingEvent;

    sget-object v4, Lio/bidmachine/iab/vast/TrackingEvent;->midpoint:Lio/bidmachine/iab/vast/TrackingEvent;

    sget-object v5, Lio/bidmachine/iab/vast/TrackingEvent;->thirdQuartile:Lio/bidmachine/iab/vast/TrackingEvent;

    sget-object v6, Lio/bidmachine/iab/vast/TrackingEvent;->complete:Lio/bidmachine/iab/vast/TrackingEvent;

    sget-object v7, Lio/bidmachine/iab/vast/TrackingEvent;->mute:Lio/bidmachine/iab/vast/TrackingEvent;

    sget-object v8, Lio/bidmachine/iab/vast/TrackingEvent;->unmute:Lio/bidmachine/iab/vast/TrackingEvent;

    sget-object v9, Lio/bidmachine/iab/vast/TrackingEvent;->skip:Lio/bidmachine/iab/vast/TrackingEvent;

    sget-object v10, Lio/bidmachine/iab/vast/TrackingEvent;->pause:Lio/bidmachine/iab/vast/TrackingEvent;

    sget-object v11, Lio/bidmachine/iab/vast/TrackingEvent;->rewind:Lio/bidmachine/iab/vast/TrackingEvent;

    sget-object v12, Lio/bidmachine/iab/vast/TrackingEvent;->resume:Lio/bidmachine/iab/vast/TrackingEvent;

    sget-object v13, Lio/bidmachine/iab/vast/TrackingEvent;->fullscreen:Lio/bidmachine/iab/vast/TrackingEvent;

    sget-object v14, Lio/bidmachine/iab/vast/TrackingEvent;->expand:Lio/bidmachine/iab/vast/TrackingEvent;

    sget-object v15, Lio/bidmachine/iab/vast/TrackingEvent;->collapse:Lio/bidmachine/iab/vast/TrackingEvent;

    sget-object v16, Lio/bidmachine/iab/vast/TrackingEvent;->acceptInvitation:Lio/bidmachine/iab/vast/TrackingEvent;

    sget-object v17, Lio/bidmachine/iab/vast/TrackingEvent;->close:Lio/bidmachine/iab/vast/TrackingEvent;

    filled-new-array/range {v1 .. v17}, [Lio/bidmachine/iab/vast/TrackingEvent;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/iab/vast/TrackingEvent;
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
    const-class v0, Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/iab/vast/TrackingEvent;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/iab/vast/TrackingEvent;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/TrackingEvent;->$VALUES:[Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-virtual {v0}, [Lio/bidmachine/iab/vast/TrackingEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/iab/vast/TrackingEvent;

    return-object v0
.end method
