###### Class io.bidmachine.iab.mraid.MraidType (io.bidmachine.iab.mraid.MraidType)
.class public final enum Lio/bidmachine/iab/mraid/MraidType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/iab/mraid/MraidType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/iab/mraid/MraidType;

.field public static final enum Rewarded:Lio/bidmachine/iab/mraid/MraidType;

.field public static final enum Static:Lio/bidmachine/iab/mraid/MraidType;

.field public static final enum Video:Lio/bidmachine/iab/mraid/MraidType;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidType;

    const-string v1, "Static"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/mraid/MraidType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidType;->Static:Lio/bidmachine/iab/mraid/MraidType;

    .line 2
    new-instance v0, Lio/bidmachine/iab/mraid/MraidType;

    const-string v1, "Video"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/mraid/MraidType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidType;->Video:Lio/bidmachine/iab/mraid/MraidType;

    .line 3
    new-instance v0, Lio/bidmachine/iab/mraid/MraidType;

    const-string v1, "Rewarded"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/mraid/MraidType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidType;->Rewarded:Lio/bidmachine/iab/mraid/MraidType;

    .line 4
    invoke-static {}, Lio/bidmachine/iab/mraid/MraidType;->a()[Lio/bidmachine/iab/mraid/MraidType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/mraid/MraidType;->$VALUES:[Lio/bidmachine/iab/mraid/MraidType;

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

.method public static synthetic a()[Lio/bidmachine/iab/mraid/MraidType;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidType;->Static:Lio/bidmachine/iab/mraid/MraidType;

    sget-object v1, Lio/bidmachine/iab/mraid/MraidType;->Video:Lio/bidmachine/iab/mraid/MraidType;

    sget-object v2, Lio/bidmachine/iab/mraid/MraidType;->Rewarded:Lio/bidmachine/iab/mraid/MraidType;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/iab/mraid/MraidType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidType;
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
    const-class v0, Lio/bidmachine/iab/mraid/MraidType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/iab/mraid/MraidType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/iab/mraid/MraidType;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidType;->$VALUES:[Lio/bidmachine/iab/mraid/MraidType;

    invoke-virtual {v0}, [Lio/bidmachine/iab/mraid/MraidType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/iab/mraid/MraidType;

    return-object v0
.end method
