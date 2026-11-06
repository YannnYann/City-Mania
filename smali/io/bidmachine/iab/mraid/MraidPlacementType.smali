###### Class io.bidmachine.iab.mraid.MraidPlacementType (io.bidmachine.iab.mraid.MraidPlacementType)
.class public final enum Lio/bidmachine/iab/mraid/MraidPlacementType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/iab/mraid/MraidPlacementType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/iab/mraid/MraidPlacementType;

.field public static final enum INLINE:Lio/bidmachine/iab/mraid/MraidPlacementType;

.field public static final enum INTERSTITIAL:Lio/bidmachine/iab/mraid/MraidPlacementType;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidPlacementType;

    const-string v1, "INLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/mraid/MraidPlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidPlacementType;->INLINE:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 2
    new-instance v0, Lio/bidmachine/iab/mraid/MraidPlacementType;

    const-string v1, "INTERSTITIAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/mraid/MraidPlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidPlacementType;->INTERSTITIAL:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 3
    invoke-static {}, Lio/bidmachine/iab/mraid/MraidPlacementType;->a()[Lio/bidmachine/iab/mraid/MraidPlacementType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/mraid/MraidPlacementType;->$VALUES:[Lio/bidmachine/iab/mraid/MraidPlacementType;

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

.method public static synthetic a()[Lio/bidmachine/iab/mraid/MraidPlacementType;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidPlacementType;->INLINE:Lio/bidmachine/iab/mraid/MraidPlacementType;

    sget-object v1, Lio/bidmachine/iab/mraid/MraidPlacementType;->INTERSTITIAL:Lio/bidmachine/iab/mraid/MraidPlacementType;

    filled-new-array {v0, v1}, [Lio/bidmachine/iab/mraid/MraidPlacementType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidPlacementType;
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
    const-class v0, Lio/bidmachine/iab/mraid/MraidPlacementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/iab/mraid/MraidPlacementType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/iab/mraid/MraidPlacementType;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidPlacementType;->$VALUES:[Lio/bidmachine/iab/mraid/MraidPlacementType;

    invoke-virtual {v0}, [Lio/bidmachine/iab/mraid/MraidPlacementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/iab/mraid/MraidPlacementType;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
