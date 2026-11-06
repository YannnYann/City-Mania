###### Class io.bidmachine.media3.common.TrackSelectionOverride (io.bidmachine.media3.common.TrackSelectionOverride)
.class public final Lio/bidmachine/media3/common/TrackSelectionOverride;
.super Ljava/lang/Object;
.source "TrackSelectionOverride.java"


# static fields
.field public static final FIELD_TRACKS:Ljava/lang/String;

.field public static final FIELD_TRACK_GROUP:Ljava/lang/String;


# instance fields
.field public final mediaTrackGroup:Lio/bidmachine/media3/common/TrackGroup;

.field public final trackIndices:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 55
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionOverride;->FIELD_TRACK_GROUP:Ljava/lang/String;

    const/4 v0, 0x1

    .line 56
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionOverride;->FIELD_TRACKS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/TrackGroup;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/TrackGroup;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 76
    invoke-static {p2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_24

    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Lio/bidmachine/media3/common/TrackGroup;->length:I

    if-ge v0, v1, :cond_24

    goto :goto_2a

    .line 77
    :cond_24
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 80
    :cond_2a
    :goto_2a
    iput-object p1, p0, Lio/bidmachine/media3/common/TrackSelectionOverride;->mediaTrackGroup:Lio/bidmachine/media3/common/TrackGroup;

    .line 81
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/TrackSelectionOverride;

    if-eq v3, v2, :cond_10

    goto :goto_27

    .line 97
    :cond_10
    check-cast p1, Lio/bidmachine/media3/common/TrackSelectionOverride;

    .line 98
    iget-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionOverride;->mediaTrackGroup:Lio/bidmachine/media3/common/TrackGroup;

    iget-object v3, p1, Lio/bidmachine/media3/common/TrackSelectionOverride;->mediaTrackGroup:Lio/bidmachine/media3/common/TrackGroup;

    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Lio/bidmachine/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public getType()I
    .registers 2

    .line 86
    iget-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionOverride;->mediaTrackGroup:Lio/bidmachine/media3/common/TrackGroup;

    iget v0, v0, Lio/bidmachine/media3/common/TrackGroup;->type:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 103
    iget-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionOverride;->mediaTrackGroup:Lio/bidmachine/media3/common/TrackGroup;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/TrackGroup;->hashCode()I

    move-result v0

    iget-object v1, p0, Lio/bidmachine/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
