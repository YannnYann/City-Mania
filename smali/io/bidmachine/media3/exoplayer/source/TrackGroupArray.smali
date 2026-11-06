###### Class io.bidmachine.media3.exoplayer.source.TrackGroupArray (io.bidmachine.media3.exoplayer.source.TrackGroupArray)
.class public final Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;
.super Ljava/lang/Object;
.source "TrackGroupArray.java"


# static fields
.field public static final EMPTY:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

.field public static final FIELD_TRACK_GROUPS:Ljava/lang/String;


# instance fields
.field public hashCode:I

.field public final length:I

.field public final trackGroups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/TrackGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$xgPKKHtGaQ6t_njo0wLTZUCRqVM(Lio/bidmachine/media3/common/TrackGroup;)Ljava/lang/Integer;
    .registers 1

    .line 95
    iget p0, p0, Lio/bidmachine/media3/common/TrackGroup;->type:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 46
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    const/4 v1, 0x0

    new-array v2, v1, [Lio/bidmachine/media3/common/TrackGroup;

    invoke-direct {v0, v2}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;-><init>([Lio/bidmachine/media3/common/TrackGroup;)V

    sput-object v0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->EMPTY:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 123
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->FIELD_TRACK_GROUPS:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>([Lio/bidmachine/media3/common/TrackGroup;)V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    .line 63
    array-length p1, p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->length:I

    .line 64
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->verifyCorrectness()V

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

    if-eqz p1, :cond_23

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    if-eq v3, v2, :cond_10

    goto :goto_23

    .line 114
    :cond_10
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 115
    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->length:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ne v2, v3, :cond_23

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public get(I)Lio/bidmachine/media3/common/TrackGroup;
    .registers 3

    .line 74
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/TrackGroup;

    return-object p1
.end method

.method public getTrackTypes()Lcom/google/common/collect/ImmutableList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    new-instance v1, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 100
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->hashCode:I

    if-nez v0, :cond_c

    .line 101
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->hashCode:I

    .line 103
    :cond_c
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->hashCode:I

    return v0
.end method

.method public indexOf(Lio/bidmachine/media3/common/TrackGroup;)I
    .registers 3

    .line 84
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_9

    return p1

    :cond_9
    const/4 p1, -0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final verifyCorrectness()V
    .registers 7

    const/4 v0, 0x0

    .line 145
    :goto_1
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_3b

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 146
    :goto_c
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 147
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/common/TrackGroup;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 148
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Multiple identical TrackGroups added to one TrackGroupArray."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v4, "TrackGroupArray"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_39
    move v0, v1

    goto :goto_1

    :cond_3b
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.TrackGroupArray$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.source.TrackGroupArray$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/TrackGroupArray$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lio/bidmachine/media3/common/TrackGroup;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->$r8$lambda$xgPKKHtGaQ6t_njo0wLTZUCRqVM(Lio/bidmachine/media3/common/TrackGroup;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
