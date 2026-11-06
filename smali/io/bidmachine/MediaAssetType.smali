###### Class io.bidmachine.MediaAssetType (io.bidmachine.MediaAssetType)
.class public final enum Lio/bidmachine/MediaAssetType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/MediaAssetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/MediaAssetType;

.field public static final enum All:Lio/bidmachine/MediaAssetType;

.field public static final DEFAULT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/MediaAssetType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Icon:Lio/bidmachine/MediaAssetType;

.field public static final enum Image:Lio/bidmachine/MediaAssetType;

.field public static final enum Video:Lio/bidmachine/MediaAssetType;


# direct methods
.method private static synthetic $values()[Lio/bidmachine/MediaAssetType;
    .registers 4

    .line 1
    sget-object v0, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    sget-object v1, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    sget-object v2, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    sget-object v3, Lio/bidmachine/MediaAssetType;->All:Lio/bidmachine/MediaAssetType;

    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/MediaAssetType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lio/bidmachine/MediaAssetType;

    const-string v1, "Icon"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/MediaAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    new-instance v1, Lio/bidmachine/MediaAssetType;

    const-string v2, "Image"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/bidmachine/MediaAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    new-instance v2, Lio/bidmachine/MediaAssetType;

    const-string v3, "Video"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lio/bidmachine/MediaAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    new-instance v2, Lio/bidmachine/MediaAssetType;

    const-string v3, "All"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lio/bidmachine/MediaAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/bidmachine/MediaAssetType;->All:Lio/bidmachine/MediaAssetType;

    .line 2
    invoke-static {}, Lio/bidmachine/MediaAssetType;->$values()[Lio/bidmachine/MediaAssetType;

    move-result-object v2

    sput-object v2, Lio/bidmachine/MediaAssetType;->$VALUES:[Lio/bidmachine/MediaAssetType;

    .line 14
    invoke-static {v0, v1}, Lio/bidmachine/MediaAssetType$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/bidmachine/MediaAssetType;->DEFAULT:Ljava/util/List;

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

.method public static isAll(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/MediaAssetType;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/MediaAssetType;->All:Lio/bidmachine/MediaAssetType;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/MediaAssetType;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/MediaAssetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/MediaAssetType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/MediaAssetType;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/MediaAssetType;->$VALUES:[Lio/bidmachine/MediaAssetType;

    invoke-virtual {v0}, [Lio/bidmachine/MediaAssetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/MediaAssetType;

    return-object v0
.end method
