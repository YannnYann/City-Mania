###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector)
.class public Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;
.super Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector;
.source "DefaultTrackSelector.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/RendererCapabilities$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;,
        Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;,
        Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;,
        Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;,
        Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;,
        Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;,
        Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;,
        Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;,
        Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;
    }
.end annotation


# static fields
.field public static final FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

.field public final context:Landroid/content/Context;

.field public final lock:Ljava/lang/Object;

.field public parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public spatializer:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

.field public final trackSelectionFactory:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Factory;


# direct methods
.method public static synthetic $r8$lambda$5mDa8VZWbEF0bgui83uQE9pd8iA(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;Ljava/lang/String;ILio/bidmachine/media3/common/TrackGroup;[I)Ljava/util/List;
    .registers 7

    move-object v0, p2

    move-object p2, p0

    move p0, p3

    move-object p3, p5

    move-object p5, v0

    move-object v0, p4

    move-object p4, p1

    move-object p1, v0

    .line 2927
    invoke-static/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->createForTrackGroup(ILio/bidmachine/media3/common/TrackGroup;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[ILjava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GfQMiQbViuAo-7kM6CborUU4pcM(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;[ILandroid/graphics/Point;ILio/bidmachine/media3/common/TrackGroup;[I)Ljava/util/List;
    .registers 8

    .line 2799
    aget p2, p2, p4

    move v0, p2

    move-object p2, p0

    move p0, p4

    move-object p4, p1

    move-object p1, p5

    move p5, v0

    move-object v0, p6

    move-object p6, p3

    move-object p3, v0

    invoke-static/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->createForTrackGroup(ILio/bidmachine/media3/common/TrackGroup;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[ILjava/lang/String;ILandroid/graphics/Point;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HHzQGHbie5sn1xOSrzUQP5wcL8g(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 4

    .line 2403
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 2404
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    return v1

    .line 2405
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public static synthetic $r8$lambda$R-yt9OrbKk0qJrgZyHptUQkJsSU(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Z[IILio/bidmachine/media3/common/TrackGroup;[I)Ljava/util/List;
    .registers 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    move p0, p4

    move p4, p2

    move-object p2, p1

    move-object p1, p5

    .line 2847
    new-instance p5, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda9;

    invoke-direct {p5, v0, p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda9;-><init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    aget p3, p3, p0

    move-object v1, p6

    move p6, p3

    move-object p3, v1

    invoke-static/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->createForTrackGroup(ILio/bidmachine/media3/common/TrackGroup;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[IZLcom/google/common/base/Predicate;I)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UfFAU3-J0R2XpdvyMPBOLq_dJas(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILio/bidmachine/media3/common/TrackGroup;[I)Ljava/util/List;
    .registers 4

    .line 2965
    invoke-static {p1, p2, p0, p3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->createForTrackGroup(ILio/bidmachine/media3/common/TrackGroup;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[I)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aPT-6Bhk1ON0rL_H_c1wrrvlBY8(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Lio/bidmachine/media3/common/Format;)Z
    .registers 3

    .line 2853
    invoke-virtual {p0, p2, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->isAudioFormatWithinAudioChannelCountConstraints(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 2400
    new-instance v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda8;-><init>()V

    .line 2401
    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 2421
    new-instance v0, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/media3/common/TrackSelectionParameters;Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V
    .registers 4

    .line 2461
    invoke-direct {p0, p2, p3, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Lio/bidmachine/media3/common/TrackSelectionParameters;Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Factory;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V
    .registers 4

    .line 2429
    sget-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->DEFAULT:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p0, p1, v0, p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lio/bidmachine/media3/common/TrackSelectionParameters;Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/TrackSelectionParameters;Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Factory;Landroid/content/Context;)V
    .registers 5

    .line 2477
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector;-><init>()V

    .line 2478
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    if-eqz p3, :cond_11

    .line 2479
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    .line 2480
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->trackSelectionFactory:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Factory;

    .line 2481
    instance-of p2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    if-eqz p2, :cond_1f

    .line 2482
    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    goto :goto_2f

    .line 2484
    :cond_1f
    sget-object p2, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->DEFAULT:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->set(Lio/bidmachine/media3/common/TrackSelectionParameters;)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 2486
    :goto_2f
    sget-object p1, Lio/bidmachine/media3/common/AudioAttributes;->DEFAULT:Lio/bidmachine/media3/common/AudioAttributes;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    .line 2487
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz p1, :cond_42

    if-nez p3, :cond_42

    .line 2488
    const-string p1, "DefaultTrackSelector"

    const-string p2, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    return-void
.end method

.method public static synthetic access$4100(Lio/bidmachine/media3/common/TrackGroup;IIZ)I
    .registers 4

    .line 125
    invoke-static {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->getMaxVideoPixelsToRetainForViewport(Lio/bidmachine/media3/common/TrackGroup;IIZ)I

    move-result p0

    return p0
.end method

.method public static synthetic access$4200(II)I
    .registers 2

    .line 125
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->getRoleFlagMatchScore(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$4300(Ljava/lang/String;)I
    .registers 1

    .line 125
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->getVideoCodecPreferenceScore(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$4400()Lcom/google/common/collect/Ordering;
    .registers 1

    .line 125
    sget-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method public static synthetic access$4500(Lio/bidmachine/media3/common/Format;)Z
    .registers 1

    .line 125
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->isObjectBasedAudio(Lio/bidmachine/media3/common/Format;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$4600(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILio/bidmachine/media3/common/Format;)Z
    .registers 3

    .line 125
    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->rendererSupportsOffload(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILio/bidmachine/media3/common/Format;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$4700(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;)V
    .registers 1

    .line 125
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->maybeInvalidateForAudioChannelCountConstraints()V

    return-void
.end method

.method public static applyLegacyRendererOverrides(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V
    .registers 9

    .line 3166
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_33

    .line 3168
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v2

    .line 3169
    invoke-virtual {p1, v1, v2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILio/bidmachine/media3/exoplayer/source/TrackGroupArray;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_30

    .line 3173
    :cond_12
    invoke-virtual {p1, v1, v2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILio/bidmachine/media3/exoplayer/source/TrackGroupArray;)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 3175
    iget-object v4, v3, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    array-length v4, v4

    if-eqz v4, :cond_2d

    .line 3176
    new-instance v4, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    iget v5, v3, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 3178
    invoke-virtual {v2, v5}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->get(I)Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v2

    iget-object v5, v3, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    iget v3, v3, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    invoke-direct {v4, v2, v5, v3}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;-><init>(Lio/bidmachine/media3/common/TrackGroup;[II)V

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    .line 3182
    :goto_2e
    aput-object v4, p2, v1

    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_33
    return-void
.end method

.method public static applyTrackSelectionOverrides(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Lio/bidmachine/media3/common/TrackSelectionParameters;[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V
    .registers 8

    .line 3102
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    .line 3105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_17

    .line 3108
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v4

    .line 3107
    invoke-static {v4, p1, v1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->collectTrackSelectionOverrides(Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;Lio/bidmachine/media3/common/TrackSelectionParameters;Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3111
    :cond_17
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getUnmappedTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v3

    .line 3110
    invoke-static {v3, p1, v1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->collectTrackSelectionOverrides(Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;Lio/bidmachine/media3/common/TrackSelectionParameters;Ljava/util/Map;)V

    :goto_1e
    if-ge v2, v0, :cond_5a

    .line 3115
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result p1

    .line 3116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/TrackSelectionOverride;

    if-nez p1, :cond_31

    goto :goto_57

    .line 3123
    :cond_31
    iget-object v3, p1, Lio/bidmachine/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_54

    .line 3124
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v3

    iget-object v4, p1, Lio/bidmachine/media3/common/TrackSelectionOverride;->mediaTrackGroup:Lio/bidmachine/media3/common/TrackGroup;

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->indexOf(Lio/bidmachine/media3/common/TrackGroup;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_54

    .line 3126
    new-instance v3, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    iget-object v4, p1, Lio/bidmachine/media3/common/TrackSelectionOverride;->mediaTrackGroup:Lio/bidmachine/media3/common/TrackGroup;

    iget-object p1, p1, Lio/bidmachine/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    .line 3128
    invoke-static {p1}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;-><init>(Lio/bidmachine/media3/common/TrackGroup;[I)V

    goto :goto_55

    :cond_54
    const/4 v3, 0x0

    .line 3132
    :goto_55
    aput-object v3, p2, v2

    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_5a
    return-void
.end method

.method public static collectTrackSelectionOverrides(Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;Lio/bidmachine/media3/common/TrackSelectionParameters;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;",
            "Lio/bidmachine/media3/common/TrackSelectionParameters;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/bidmachine/media3/common/TrackSelectionOverride;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3146
    :goto_1
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v0, v1, :cond_42

    .line 3147
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->get(I)Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v1

    .line 3148
    iget-object v2, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/TrackSelectionOverride;

    if-nez v1, :cond_14

    goto :goto_3f

    .line 3152
    :cond_14
    invoke-virtual {v1}, Lio/bidmachine/media3/common/TrackSelectionOverride;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/TrackSelectionOverride;

    if-eqz v2, :cond_34

    .line 3154
    iget-object v2, v2, Lio/bidmachine/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    .line 3155
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, v1, Lio/bidmachine/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 3156
    :cond_34
    invoke-virtual {v1}, Lio/bidmachine/media3/common/TrackSelectionOverride;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_42
    return-void
.end method

.method public static getFormatLanguageScore(Lio/bidmachine/media3/common/Format;Ljava/lang/String;Z)I
    .registers 4

    .line 3396
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x4

    return p0

    .line 3400
    :cond_10
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3401
    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_46

    if-nez p1, :cond_20

    goto :goto_46

    .line 3406
    :cond_20
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_44

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2d

    goto :goto_44

    .line 3410
    :cond_2d
    const-string p2, "-"

    invoke-static {p0, p2}, Lio/bidmachine/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    .line 3411
    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    .line 3412
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    const/4 p0, 0x2

    return p0

    :cond_43
    return v0

    :cond_44
    :goto_44
    const/4 p0, 0x3

    return p0

    :cond_46
    :goto_46
    if-eqz p2, :cond_4c

    if-nez p0, :cond_4c

    const/4 p0, 0x1

    return p0

    :cond_4c
    return v0
.end method

.method public static getMaxVideoPixelsToRetainForViewport(Lio/bidmachine/media3/common/TrackGroup;IIZ)I
    .registers 12

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_3a

    if-ne p2, v0, :cond_8

    goto :goto_3a

    :cond_8
    const/4 v1, 0x0

    .line 3425
    :goto_9
    iget v2, p0, Lio/bidmachine/media3/common/TrackGroup;->length:I

    if-ge v1, v2, :cond_3a

    .line 3426
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v2

    .line 3429
    iget v3, v2, Lio/bidmachine/media3/common/Format;->width:I

    if-lez v3, :cond_37

    iget v4, v2, Lio/bidmachine/media3/common/Format;->height:I

    if-lez v4, :cond_37

    .line 3431
    invoke-static {p3, p1, p2, v3, v4}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectionUtil;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v3

    .line 3433
    iget v4, v2, Lio/bidmachine/media3/common/Format;->width:I

    iget v2, v2, Lio/bidmachine/media3/common/Format;->height:I

    mul-int v5, v4, v2

    .line 3434
    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const v7, 0x3f7ae148    # 0.98f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    if-lt v4, v6, :cond_37

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    if-lt v2, v3, :cond_37

    if-ge v5, v0, :cond_37

    move v0, v5

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_3a
    :goto_3a
    return v0
.end method

.method public static getPreferredLanguageFromCaptioningManager(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 3510
    :cond_4
    const-string v1, "captioning"

    .line 3511
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    if-eqz p0, :cond_21

    .line 3512
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_21

    .line 3515
    :cond_15
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p0

    if-nez p0, :cond_1c

    return-object v0

    .line 3519
    :cond_1c
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->getLocaleLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    :goto_21
    return-object v0
.end method

.method public static getRoleFlagMatchScore(II)I
    .registers 2

    if-eqz p0, :cond_8

    if-ne p0, p1, :cond_8

    const p0, 0x7fffffff

    return p0

    :cond_8
    and-int/2addr p0, p1

    .line 3449
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public static getVideoCodecPreferenceScore(Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_8

    return v4

    :cond_8
    const/4 v5, -0x1

    .line 3460
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_52

    goto :goto_47

    :sswitch_11
    const-string v6, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_47

    :cond_1a
    move v5, v0

    goto :goto_47

    :sswitch_1c
    const-string v6, "video/avc"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_47

    :cond_25
    move v5, v1

    goto :goto_47

    :sswitch_27
    const-string v6, "video/hevc"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto :goto_47

    :cond_30
    move v5, v2

    goto :goto_47

    :sswitch_32
    const-string v6, "video/av01"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto :goto_47

    :cond_3b
    move v5, v3

    goto :goto_47

    :sswitch_3d
    const-string v6, "video/dolby-vision"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    goto :goto_47

    :cond_46
    move v5, v4

    :goto_47
    packed-switch v5, :pswitch_data_68

    return v4

    :pswitch_4b
    return v2

    :pswitch_4c
    return v3

    :pswitch_4d
    return v1

    :pswitch_4e
    return v0

    :pswitch_4f
    const/4 p0, 0x5

    return p0

    nop

    :sswitch_data_52
    .sparse-switch
        -0x6e5534ef -> :sswitch_3d
        -0x631b55f6 -> :sswitch_32
        -0x63185e82 -> :sswitch_27
        0x4f62373a -> :sswitch_1c
        0x5f50bed9 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
    .end packed-switch
.end method

.method public static isDolbyAudio(Lio/bidmachine/media3/common/Format;)Z
    .registers 5

    const/4 v0, 0x1

    .line 3491
    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p0, :cond_7

    return v1

    .line 3494
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_44

    goto :goto_3e

    :sswitch_13
    const-string v3, "audio/eac3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_3e

    :cond_1c
    const/4 v2, 0x3

    goto :goto_3e

    :sswitch_1e
    const-string v3, "audio/ac4"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_3e

    :cond_27
    const/4 v2, 0x2

    goto :goto_3e

    :sswitch_29
    const-string v3, "audio/ac3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_3e

    :cond_32
    move v2, v0

    goto :goto_3e

    :sswitch_34
    const-string v3, "audio/eac3-joc"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    goto :goto_3e

    :cond_3d
    move v2, v1

    :goto_3e
    packed-switch v2, :pswitch_data_56

    return v1

    :pswitch_42
    return v0

    nop

    :sswitch_data_44
    .sparse-switch
        -0x7e929daa -> :sswitch_34
        0xb269698 -> :sswitch_29
        0xb269699 -> :sswitch_1e
        0x59ae0c65 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
    .end packed-switch
.end method

.method public static isObjectBasedAudio(Lio/bidmachine/media3/common/Format;)Z
    .registers 5

    const/4 v0, 0x1

    .line 3477
    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p0, :cond_7

    return v1

    .line 3480
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_38

    goto :goto_33

    :sswitch_13
    const-string v3, "audio/iamf"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_33

    :cond_1c
    const/4 v2, 0x2

    goto :goto_33

    :sswitch_1e
    const-string v3, "audio/ac4"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_33

    :cond_27
    move v2, v0

    goto :goto_33

    :sswitch_29
    const-string v3, "audio/eac3-joc"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_33

    :cond_32
    move v2, v1

    :goto_33
    packed-switch v2, :pswitch_data_46

    return v1

    :pswitch_37
    return v0

    :sswitch_data_38
    .sparse-switch
        -0x7e929daa -> :sswitch_29
        0xb269699 -> :sswitch_1e
        0x59afdf4a -> :sswitch_13
    .end sparse-switch

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_37
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method public static maybeConfigureRendererForOffload(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Lio/bidmachine/media3/exoplayer/RendererConfiguration;[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .registers 12

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 3295
    :goto_4
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_46

    .line 3296
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v4

    .line 3297
    aget-object v6, p4, v2

    if-eq v4, v5, :cond_16

    if-eqz v6, :cond_16

    return-void

    :cond_16
    if-ne v4, v5, :cond_43

    if-eqz v6, :cond_43

    .line 3304
    invoke-interface {v6}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v4

    if-ne v4, v5, :cond_43

    .line 3306
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v4

    invoke-interface {v6}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->indexOf(Lio/bidmachine/media3/common/TrackGroup;)I

    move-result v4

    .line 3308
    aget-object v5, p2, v2

    aget-object v4, v5, v4

    .line 3309
    invoke-interface {v6, v1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v5

    aget v4, v4, v5

    .line 3311
    invoke-interface {v6}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Lio/bidmachine/media3/common/Format;

    move-result-object v5

    .line 3310
    invoke-static {p0, v4, v5}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->rendererSupportsOffload(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILio/bidmachine/media3/common/Format;)Z

    move-result v4

    if-eqz v4, :cond_43

    add-int/lit8 v3, v3, 0x1

    move v0, v2

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_46
    if-ne v3, v5, :cond_61

    .line 3318
    new-instance p1, Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    .line 3320
    iget-object p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-boolean p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->isGaplessSupportRequired:Z

    if-eqz p0, :cond_52

    move p0, v5

    goto :goto_53

    :cond_52
    const/4 p0, 0x2

    .line 3322
    :goto_53
    aget-object p2, p3, v0

    if-eqz p2, :cond_5c

    iget-boolean p2, p2, Lio/bidmachine/media3/exoplayer/RendererConfiguration;->tunneling:Z

    if-eqz p2, :cond_5c

    move v1, v5

    :cond_5c
    invoke-direct {p1, p0, v1}, Lio/bidmachine/media3/exoplayer/RendererConfiguration;-><init>(IZ)V

    .line 3325
    aput-object p1, p3, v0

    :cond_61
    return-void
.end method

.method public static maybeConfigureRenderersForTunneling(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Lio/bidmachine/media3/exoplayer/RendererConfiguration;[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .registers 14

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v4, v3

    move v2, v1

    .line 3208
    :goto_5
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v5

    const/4 v6, 0x1

    if-ge v2, v5, :cond_34

    .line 3209
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v5

    .line 3210
    aget-object v7, p3, v2

    if-eq v5, v6, :cond_17

    const/4 v8, 0x2

    if-ne v5, v8, :cond_31

    :cond_17
    if-eqz v7, :cond_31

    .line 3213
    aget-object v8, p1, v2

    .line 3214
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v9

    .line 3213
    invoke-static {v8, v9, v7}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->rendererSupportsTunneling([[ILio/bidmachine/media3/exoplayer/source/TrackGroupArray;Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)Z

    move-result v7

    if-eqz v7, :cond_31

    if-ne v5, v6, :cond_2d

    if-eq v4, v0, :cond_2b

    :goto_29
    move p0, v1

    goto :goto_35

    :cond_2b
    move v4, v2

    goto :goto_31

    :cond_2d
    if-eq v3, v0, :cond_30

    goto :goto_29

    :cond_30
    move v3, v2

    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_34
    move p0, v6

    :goto_35
    if-eq v4, v0, :cond_3b

    if-eq v3, v0, :cond_3b

    move p1, v6

    goto :goto_3c

    :cond_3b
    move p1, v1

    :goto_3c
    and-int/2addr p0, p1

    if-eqz p0, :cond_48

    .line 3235
    new-instance p0, Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    invoke-direct {p0, v1, v6}, Lio/bidmachine/media3/exoplayer/RendererConfiguration;-><init>(IZ)V

    .line 3237
    aput-object p0, p2, v4

    .line 3238
    aput-object p0, p2, v3

    :cond_48
    return-void
.end method

.method public static normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 3377
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    return-object p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public static rendererSupportsOffload(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILio/bidmachine/media3/common/Format;)Z
    .registers 5

    .line 3339
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->getAudioOffloadSupport(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 3342
    :cond_8
    iget-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-boolean v0, v0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->isSpeedChangeSupportRequired:Z

    if-eqz v0, :cond_17

    .line 3343
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->getAudioOffloadSupport(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_17

    return v1

    .line 3349
    :cond_17
    iget-object p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-boolean p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->isGaplessSupportRequired:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_3b

    .line 3350
    iget p0, p2, Lio/bidmachine/media3/common/Format;->encoderDelay:I

    if-nez p0, :cond_29

    iget p0, p2, Lio/bidmachine/media3/common/Format;->encoderPadding:I

    if-eqz p0, :cond_27

    goto :goto_29

    :cond_27
    move p0, v1

    goto :goto_2a

    :cond_29
    :goto_29
    move p0, v0

    .line 3352
    :goto_2a
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->getAudioOffloadSupport(I)I

    move-result p1

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_34

    move p1, v0

    goto :goto_35

    :cond_34
    move p1, v1

    :goto_35
    if-eqz p0, :cond_3b

    if-eqz p1, :cond_3a

    goto :goto_3b

    :cond_3a
    return v1

    :cond_3b
    :goto_3b
    return v0
.end method

.method public static rendererSupportsTunneling([[ILio/bidmachine/media3/exoplayer/source/TrackGroupArray;Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 3258
    :cond_4
    invoke-interface {p2}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->indexOf(Lio/bidmachine/media3/common/TrackGroup;)I

    move-result p1

    move v1, v0

    .line 3259
    :goto_d
    invoke-interface {p2}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 3261
    aget-object v2, p0, p1

    invoke-interface {p2, v1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v3

    aget v2, v2, v3

    .line 3262
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->getTunnelingSupport(I)I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_24

    return v0

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_27
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public bridge synthetic getParameters()Lio/bidmachine/media3/common/TrackSelectionParameters;
    .registers 2

    .line 124
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->getParameters()Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .registers 3

    .line 2502
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2503
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 2504
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getRendererCapabilitiesListener()Lio/bidmachine/media3/exoplayer/RendererCapabilities$Listener;
    .registers 1

    .line 0
    return-object p0
.end method

.method public final isAudioFormatWithinAudioChannelCountConstraints(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Z
    .registers 4

    .line 2877
    iget-boolean p2, p2, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz p2, :cond_4d

    iget p2, p1, Lio/bidmachine/media3/common/Format;->channelCount:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4d

    const/4 v0, 0x2

    if-le p2, v0, :cond_4d

    .line 2879
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->isDolbyAudio(Lio/bidmachine/media3/common/Format;)Z

    move-result p2

    const/16 v0, 0x20

    if-eqz p2, :cond_22

    sget p2, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    if-lt p2, v0, :cond_4d

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz p2, :cond_4d

    .line 2882
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isSpatializationSupported()Z

    move-result p2

    if-eqz p2, :cond_4d

    :cond_22
    sget p2, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    if-lt p2, v0, :cond_4b

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz p2, :cond_4b

    .line 2885
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isSpatializationSupported()Z

    move-result p2

    if-eqz p2, :cond_4b

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    .line 2886
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_4b

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    .line 2887
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_4b

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    .line 2888
    invoke-virtual {p2, v0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->canBeSpatialized(Lio/bidmachine/media3/common/AudioAttributes;Lio/bidmachine/media3/common/Format;)Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_4d

    :cond_4b
    const/4 p1, 0x0

    return p1

    :cond_4d
    :goto_4d
    const/4 p1, 0x1

    return p1
.end method

.method public isSetParametersSupported()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final maybeInvalidateForAudioChannelCountConstraints()V
    .registers 4

    .line 3074
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3075
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v1, v1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v1, :cond_1d

    sget v1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_1d

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz v1, :cond_1d

    .line 3079
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isSpatializationSupported()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :catchall_1b
    move-exception v1

    goto :goto_25

    :cond_1d
    const/4 v1, 0x0

    .line 3080
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1b

    if-eqz v1, :cond_24

    .line 3082
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;->invalidate()V

    :cond_24
    return-void

    .line 3080
    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_1b

    throw v1
.end method

.method public final maybeInvalidateForRendererCapabilitiesChange(Lio/bidmachine/media3/exoplayer/Renderer;)V
    .registers 4

    .line 3088
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3089
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v1, v1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    .line 3090
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_e

    if-eqz v1, :cond_d

    .line 3092
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;->invalidateForRendererCapabilitiesChange(Lio/bidmachine/media3/exoplayer/Renderer;)V

    :cond_d
    return-void

    :catchall_e
    move-exception p1

    .line 3090
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public onRendererCapabilitiesChanged(Lio/bidmachine/media3/exoplayer/Renderer;)V
    .registers 2

    .line 2585
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->maybeInvalidateForRendererCapabilitiesChange(Lio/bidmachine/media3/exoplayer/Renderer;)V

    return-void
.end method

.method public release()V
    .registers 3

    .line 2494
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz v0, :cond_d

    .line 2495
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->release()V

    .line 2497
    :cond_d
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;->release()V

    return-void
.end method

.method public selectAllTracks(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2698
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    .line 2699
    new-array v1, v0, [Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    .line 2704
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->selectAudioTrack(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 2710
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object v4, v1, v3

    :cond_1a
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_25

    move-object v10, v4

    :goto_1f
    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    goto :goto_3a

    .line 2716
    :cond_25
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    iget-object v5, v5, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Lio/bidmachine/media3/common/TrackGroup;

    check-cast v2, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    aget v2, v2, v3

    invoke-virtual {v5, v2}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v2

    iget-object v2, v2, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    move-object v10, v2

    goto :goto_1f

    .line 2720
    :goto_3a
    invoke-virtual/range {v5 .. v10}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->selectVideoTrack(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    move-object v2, v10

    .line 2729
    iget-boolean p2, v9, Lio/bidmachine/media3/common/TrackSelectionParameters;->isPrioritizeImageOverVideoEnabled:Z

    if-nez p2, :cond_45

    if-nez p1, :cond_49

    .line 2730
    :cond_45
    invoke-virtual {p0, v6, v7, v9}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->selectImageTrack(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;

    move-result-object v4

    :cond_49
    if-eqz v4, :cond_5a

    .line 2734
    iget-object p1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object p2, v1, p1

    goto :goto_6a

    :cond_5a
    if-eqz p1, :cond_6a

    .line 2736
    iget-object p2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object p1, v1, p2

    .line 2741
    :cond_6a
    :goto_6a
    invoke-virtual {p0, v6, v7, v9, v2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTextTrack(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_7e

    .line 2743
    iget-object p2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object p1, v1, p2

    :cond_7e
    :goto_7e
    if-ge v3, v0, :cond_9f

    .line 2747
    invoke-virtual {v6, v3}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_9c

    const/4 p2, 0x1

    if-eq p1, p2, :cond_9c

    const/4 p2, 0x3

    if-eq p1, p2, :cond_9c

    const/4 p2, 0x4

    if-eq p1, p2, :cond_9c

    .line 2754
    invoke-virtual {v6, v3}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object p2

    aget-object p3, v7, v3

    .line 2753
    invoke-virtual {p0, p1, p2, p3, v9}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->selectOtherTrack(ILio/bidmachine/media3/exoplayer/source/TrackGroupArray;[[ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    move-result-object p1

    aput-object p1, v1, v3

    :cond_9c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :cond_9f
    return-object v1
.end method

.method public selectAudioTrack(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Landroid/util/Pair<",
            "Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 2834
    :goto_2
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    if-ge v1, v2, :cond_1c

    const/4 v2, 0x2

    .line 2835
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v3

    if-ne v2, v3, :cond_19

    .line 2836
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v2

    iget v2, v2, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->length:I

    if-lez v2, :cond_19

    const/4 v0, 0x1

    goto :goto_1c

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2842
    :cond_1c
    :goto_1c
    new-instance v5, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, p4, v0, p3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Z[I)V

    new-instance v6, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;-><init>()V

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTracksForType(ILio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public selectImageTrack(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Landroid/util/Pair<",
            "Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2957
    iget-object v0, p3, Lio/bidmachine/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v0, v0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 p1, 0x0

    return-object p1

    .line 2960
    :cond_9
    new-instance v4, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda6;

    invoke-direct {v4, p3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda6;-><init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    new-instance v5, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda7;-><init>()V

    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTracksForType(ILio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public selectOtherTrack(ILio/bidmachine/media3/exoplayer/source/TrackGroupArray;[[ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2987
    iget-object p1, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget p1, p1, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_9

    return-object v1

    :cond_9
    const/4 p1, 0x0

    move v0, p1

    move v3, v0

    move-object v2, v1

    move-object v4, v2

    .line 2993
    :goto_e
    iget v5, p2, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v0, v5, :cond_43

    .line 2994
    invoke-virtual {p2, v0}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->get(I)Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v5

    .line 2995
    aget-object v6, p3, v0

    move v7, p1

    .line 2996
    :goto_19
    iget v8, v5, Lio/bidmachine/media3/common/TrackGroup;->length:I

    if-ge v7, v8, :cond_40

    .line 2997
    aget v8, v6, v7

    iget-boolean v9, p4, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v8, v9}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 2999
    invoke-virtual {v5, v7}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v8

    .line 3000
    new-instance v9, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;

    aget v10, v6, v7

    invoke-direct {v9, v8, v10}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;-><init>(Lio/bidmachine/media3/common/Format;I)V

    if-eqz v4, :cond_3a

    .line 3001
    invoke-virtual {v9, v4}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->compareTo(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;)I

    move-result v8

    if-lez v8, :cond_3d

    :cond_3a
    move-object v2, v5

    move v3, v7

    move-object v4, v9

    :cond_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_43
    if-nez v2, :cond_46

    return-object v1

    .line 3011
    :cond_46
    new-instance p1, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    filled-new-array {v3}, [I

    move-result-object p2

    invoke-direct {p1, v2, p2}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;-><init>(Lio/bidmachine/media3/common/TrackGroup;[I)V

    return-object p1
.end method

.method public selectTextTrack(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2914
    iget-object v0, p3, Lio/bidmachine/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v0, v0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    return-object v2

    .line 2919
    :cond_9
    iget-boolean v0, p3, Lio/bidmachine/media3/common/TrackSelectionParameters;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    if-eqz v0, :cond_13

    .line 2920
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->getPreferredLanguageFromCaptioningManager(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2922
    :cond_13
    new-instance v7, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;

    invoke-direct {v7, p3, p4, v2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;-><init>()V

    const/4 v4, 0x3

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTracksForType(ILio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final selectTracks(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Lio/bidmachine/media3/common/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lio/bidmachine/media3/exoplayer/RendererConfiguration;",
            "[",
            "Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2600
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2601
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 2602
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_99

    .line 2603
    iget-boolean v0, v1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v0, :cond_1d

    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x20

    if-lt v0, v2, :cond_1d

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-nez v0, :cond_1d

    .line 2606
    new-instance v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;-><init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    .line 2608
    :cond_1d
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    .line 2610
    invoke-virtual {p0, p1, p2, p3, v1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->selectAllTracks(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    move-result-object p3

    .line 2616
    invoke-static {p1, v1, p3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->applyTrackSelectionOverrides(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Lio/bidmachine/media3/common/TrackSelectionParameters;[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    .line 2617
    invoke-static {p1, v1, p3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->applyLegacyRendererOverrides(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_2d
    const/4 v4, 0x0

    if-ge v3, v0, :cond_4b

    .line 2621
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v5

    .line 2622
    invoke-virtual {v1, v3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v6

    if-nez v6, :cond_46

    iget-object v6, v1, Lio/bidmachine/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 2623
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 2624
    :cond_46
    aput-object v4, p3, v3

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 2629
    :cond_4b
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->trackSelectionFactory:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Factory;

    .line 2631
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;->getBandwidthMeter()Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;

    move-result-object v5

    .line 2630
    invoke-interface {v3, p3, v5, p4, p5}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Factory;->createTrackSelections([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;)[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    move-result-object p3

    .line 2636
    new-array p4, v0, [Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    :goto_57
    if-ge v2, v0, :cond_84

    .line 2638
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result p5

    .line 2640
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v3

    if-nez v3, :cond_7e

    iget-object v3, v1, Lio/bidmachine/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v3, p5}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_70

    goto :goto_7e

    .line 2643
    :cond_70
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result p5

    const/4 v3, -0x2

    if-eq p5, v3, :cond_7b

    aget-object p5, p3, v2

    if-eqz p5, :cond_7e

    .line 2645
    :cond_7b
    sget-object p5, Lio/bidmachine/media3/exoplayer/RendererConfiguration;->DEFAULT:Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    goto :goto_7f

    :cond_7e
    :goto_7e
    move-object p5, v4

    :goto_7f
    aput-object p5, p4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 2649
    :cond_84
    iget-boolean p5, v1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    if-eqz p5, :cond_8b

    .line 2650
    invoke-static {p1, p2, p4, p3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->maybeConfigureRenderersForTunneling(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Lio/bidmachine/media3/exoplayer/RendererConfiguration;[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)V

    .line 2655
    :cond_8b
    iget-object p5, v1, Lio/bidmachine/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget p5, p5, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    if-eqz p5, :cond_94

    .line 2656
    invoke-static {v1, p1, p2, p4, p3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->maybeConfigureRendererForOffload(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Lio/bidmachine/media3/exoplayer/RendererConfiguration;[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)V

    .line 2664
    :cond_94
    invoke-static {p4, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :catchall_99
    move-exception p1

    .line 2602
    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw p1
.end method

.method public final selectTracksForType(ILio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo<",
            "TT;>;>(I",
            "Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Landroid/util/Pair<",
            "Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 3021
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3022
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v2, :cond_a5

    .line 3024
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v5

    move/from16 v6, p1

    if-ne v6, v5, :cond_99

    .line 3025
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v5

    const/4 v7, 0x0

    .line 3026
    :goto_1b
    iget v8, v5, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v7, v8, :cond_99

    .line 3027
    invoke-virtual {v5, v7}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->get(I)Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v8

    .line 3028
    aget-object v9, p3, v4

    aget-object v9, v9, v7

    move-object/from16 v10, p4

    .line 3029
    invoke-interface {v10, v4, v8, v9}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;->create(ILio/bidmachine/media3/common/TrackGroup;[I)Ljava/util/List;

    move-result-object v9

    .line 3030
    iget v11, v8, Lio/bidmachine/media3/common/TrackGroup;->length:I

    new-array v11, v11, [Z

    const/4 v12, 0x0

    .line 3031
    :goto_32
    iget v13, v8, Lio/bidmachine/media3/common/TrackGroup;->length:I

    if-ge v12, v13, :cond_92

    .line 3032
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;

    .line 3033
    invoke-virtual {v13}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->getSelectionEligibility()I

    move-result v14

    .line 3034
    aget-boolean v15, v11, v12

    if-nez v15, :cond_46

    if-nez v14, :cond_49

    :cond_46
    move/from16 v18, v2

    goto :goto_8b

    :cond_49
    const/4 v15, 0x1

    if-ne v14, v15, :cond_53

    .line 3039
    invoke-static {v13}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    :goto_50
    move/from16 v18, v2

    goto :goto_88

    .line 3041
    :cond_53
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3042
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v12, 0x1

    move/from16 v17, v15

    move/from16 v15, v16

    .line 3043
    :goto_61
    iget v3, v8, Lio/bidmachine/media3/common/TrackGroup;->length:I

    if-ge v15, v3, :cond_86

    .line 3044
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;

    .line 3045
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->getSelectionEligibility()I

    move-result v0

    move/from16 v18, v2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7f

    .line 3046
    invoke-virtual {v13, v3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->isCompatibleForAdaptationWith(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 3047
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3048
    aput-boolean v17, v11, v15

    :cond_7f
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v18

    goto :goto_61

    :cond_86
    move-object v13, v14

    goto :goto_50

    .line 3053
    :goto_88
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v18

    goto :goto_32

    :cond_92
    move/from16 v18, v2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p2

    goto :goto_1b

    :cond_99
    move-object/from16 v10, p4

    move/from16 v18, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v18

    goto/16 :goto_c

    .line 3058
    :cond_a5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ad

    const/4 v0, 0x0

    return-object v0

    :cond_ad
    move-object/from16 v0, p5

    .line 3061
    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3062
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 3063
    :goto_bc
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_cf

    .line 3064
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;

    iget v3, v3, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->trackIndex:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_bc

    :cond_cf
    const/4 v2, 0x0

    .line 3066
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;

    .line 3067
    new-instance v2, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->trackGroup:Lio/bidmachine/media3/common/TrackGroup;

    invoke-direct {v2, v3, v1}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;-><init>(Lio/bidmachine/media3/common/TrackGroup;[I)V

    iget v0, v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->rendererIndex:I

    .line 3069
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3067
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public selectVideoTrack(Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2786
    iget-object v0, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v0, v0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    return-object v2

    .line 2791
    :cond_9
    iget-boolean v0, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    if-eqz v0, :cond_15

    .line 2792
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->getCurrentDisplayModeSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    .line 2794
    :cond_15
    new-instance v7, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;

    invoke-direct {v7, p4, p5, p3, v2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;[ILandroid/graphics/Point;)V

    new-instance v8, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;-><init>()V

    const/4 v4, 0x2

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTracksForType(ILio/bidmachine/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public setAudioAttributes(Lio/bidmachine/media3/common/AudioAttributes;)V
    .registers 3

    .line 2524
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2527
    :cond_9
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    .line 2528
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->maybeInvalidateForAudioChannelCountConstraints()V

    return-void
.end method

.method public setParameters(Lio/bidmachine/media3/common/TrackSelectionParameters;)V
    .registers 5

    .line 2514
    instance-of v0, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    if-eqz v0, :cond_a

    .line 2515
    move-object v0, p1

    check-cast v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->setParametersInternal(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 2518
    :cond_a
    new-instance v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->getParameters()Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$1;)V

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->set(Lio/bidmachine/media3/common/TrackSelectionParameters;)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    .line 2519
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->setParametersInternal(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method public final setParametersInternal(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V
    .registers 4

    .line 2560
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2562
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2563
    :try_start_6
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v1, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2564
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 2565
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_24

    if-nez v1, :cond_23

    .line 2568
    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz p1, :cond_20

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    if-nez p1, :cond_20

    .line 2569
    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    :cond_20
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;->invalidate()V

    :cond_23
    return-void

    :catchall_24
    move-exception p1

    .line 2565
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector.AnonymousClass1 (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$1;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector.AudioTrackInfo (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$AudioTrackInfo)
.class public final Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;
.super Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo<",
        "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final allowMixedMimeTypes:Z

.field public final bitrate:I

.field public final channelCount:I

.field public final hasMainOrNoRoleFlag:Z

.field public final isDefaultSelectionFlag:Z

.field public final isObjectBasedAudio:Z

.field public final isWithinConstraints:Z

.field public final isWithinRendererCapabilities:Z

.field public final language:Ljava/lang/String;

.field public final localeLanguageMatchIndex:I

.field public final localeLanguageScore:I

.field public final parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public final preferredLanguageIndex:I

.field public final preferredLanguageScore:I

.field public final preferredMimeTypeMatchIndex:I

.field public final preferredRoleFlagsScore:I

.field public final sampleRate:I

.field public final selectionEligibility:I

.field public final usesHardwareAcceleration:Z

.field public final usesPrimaryDecoder:Z


# direct methods
.method public constructor <init>(ILio/bidmachine/media3/common/TrackGroup;ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;IZLcom/google/common/base/Predicate;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/TrackGroup;",
            "I",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            "IZ",
            "Lcom/google/common/base/Predicate<",
            "Lio/bidmachine/media3/common/Format;",
            ">;I)V"
        }
    .end annotation

    .line 3872
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;-><init>(ILio/bidmachine/media3/common/TrackGroup;I)V

    .line 3873
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 3876
    iget-boolean p1, p4, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioNonSeamlessAdaptiveness:Z

    if-eqz p1, :cond_c

    const/16 p1, 0x18

    goto :goto_e

    :cond_c
    const/16 p1, 0x10

    .line 3880
    :goto_e
    iget-boolean p2, p4, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    and-int p2, p8, p1

    if-eqz p2, :cond_1a

    move p2, p3

    goto :goto_1b

    :cond_1a
    move p2, v0

    :goto_1b
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->allowMixedMimeTypes:Z

    .line 3883
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget-object p2, p2, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->language:Ljava/lang/String;

    .line 3885
    invoke-static {p5, v0}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinRendererCapabilities:Z

    move p2, v0

    .line 3888
    :goto_2e
    iget-object p8, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p8}, Ljava/util/AbstractCollection;->size()I

    move-result p8

    const v1, 0x7fffffff

    if-ge p2, p8, :cond_4d

    .line 3889
    iget-object p8, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget-object v2, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    .line 3892
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3890
    invoke-static {p8, v2, v0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Lio/bidmachine/media3/common/Format;Ljava/lang/String;Z)I

    move-result p8

    if-lez p8, :cond_4a

    goto :goto_4f

    :cond_4a
    add-int/lit8 p2, p2, 0x1

    goto :goto_2e

    :cond_4d
    move p8, v0

    move p2, v1

    .line 3900
    :goto_4f
    iput p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLanguageIndex:I

    .line 3901
    iput p8, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLanguageScore:I

    .line 3902
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget p2, p2, Lio/bidmachine/media3/common/Format;->roleFlags:I

    iget p8, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioRoleFlags:I

    .line 3903
    invoke-static {p2, p8}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4200(II)I

    move-result p2

    iput p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredRoleFlagsScore:I

    .line 3904
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget p8, p2, Lio/bidmachine/media3/common/Format;->roleFlags:I

    if-eqz p8, :cond_6b

    and-int/2addr p8, p3

    if-eqz p8, :cond_69

    goto :goto_6b

    :cond_69
    move p8, v0

    goto :goto_6c

    :cond_6b
    :goto_6b
    move p8, p3

    :goto_6c
    iput-boolean p8, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->hasMainOrNoRoleFlag:Z

    .line 3905
    iget p8, p2, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    and-int/2addr p8, p3

    if-eqz p8, :cond_75

    move p8, p3

    goto :goto_76

    :cond_75
    move p8, v0

    :goto_76
    iput-boolean p8, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isDefaultSelectionFlag:Z

    .line 3906
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4500(Lio/bidmachine/media3/common/Format;)Z

    move-result p2

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isObjectBasedAudio:Z

    .line 3907
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget p8, p2, Lio/bidmachine/media3/common/Format;->channelCount:I

    iput p8, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->channelCount:I

    .line 3908
    iget v2, p2, Lio/bidmachine/media3/common/Format;->sampleRate:I

    iput v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->sampleRate:I

    .line 3909
    iget v2, p2, Lio/bidmachine/media3/common/Format;->bitrate:I

    iput v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->bitrate:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_93

    .line 3910
    iget v4, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxAudioBitrate:I

    if-gt v2, v4, :cond_a1

    :cond_93
    if-eq p8, v3, :cond_99

    iget v2, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxAudioChannelCount:I

    if-gt p8, v2, :cond_a1

    .line 3914
    :cond_99
    invoke-interface {p7, p2}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a1

    move p2, p3

    goto :goto_a2

    :cond_a1
    move p2, v0

    :goto_a2
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinConstraints:Z

    .line 3915
    invoke-static {}, Lio/bidmachine/media3/common/util/Util;->getSystemLanguageCodes()[Ljava/lang/String;

    move-result-object p2

    move p7, v0

    .line 3918
    :goto_a9
    array-length p8, p2

    if-ge p7, p8, :cond_ba

    .line 3919
    iget-object p8, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    aget-object v2, p2, p7

    .line 3920
    invoke-static {p8, v2, v0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Lio/bidmachine/media3/common/Format;Ljava/lang/String;Z)I

    move-result p8

    if-lez p8, :cond_b7

    goto :goto_bc

    :cond_b7
    add-int/lit8 p7, p7, 0x1

    goto :goto_a9

    :cond_ba
    move p8, v0

    move p7, v1

    .line 3928
    :goto_bc
    iput p7, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->localeLanguageMatchIndex:I

    .line 3929
    iput p8, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->localeLanguageScore:I

    move p2, v0

    .line 3931
    :goto_c1
    iget-object p7, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p7}, Ljava/util/AbstractCollection;->size()I

    move-result p7

    if-ge p2, p7, :cond_e0

    .line 3932
    iget-object p7, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget-object p7, p7, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p7, :cond_dd

    iget-object p8, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 3933
    invoke-interface {p8, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p8

    invoke-virtual {p7, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_dd

    move v1, p2

    goto :goto_e0

    :cond_dd
    add-int/lit8 p2, p2, 0x1

    goto :goto_c1

    .line 3938
    :cond_e0
    :goto_e0
    iput v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredMimeTypeMatchIndex:I

    .line 3940
    invoke-static {p5}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->getDecoderSupport(I)I

    move-result p2

    const/16 p4, 0x80

    if-ne p2, p4, :cond_ec

    move p2, p3

    goto :goto_ed

    :cond_ec
    move p2, v0

    :goto_ed
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesPrimaryDecoder:Z

    .line 3943
    invoke-static {p5}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->getHardwareAccelerationSupport(I)I

    move-result p2

    const/16 p4, 0x40

    if-ne p2, p4, :cond_f8

    goto :goto_f9

    :cond_f8
    move p3, v0

    :goto_f9
    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesHardwareAcceleration:Z

    .line 3946
    invoke-virtual {p0, p5, p6, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->evaluateSelectionEligibility(IZI)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->selectionEligibility:I

    return-void
.end method

.method public static compareSelections(Ljava/util/List;Ljava/util/List;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;",
            ">;)I"
        }
    .end annotation

    .line 4052
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->compareTo(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)I

    move-result p0

    return p0
.end method

.method public static createForTrackGroup(ILio/bidmachine/media3/common/TrackGroup;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[IZLcom/google/common/base/Predicate;I)Lcom/google/common/collect/ImmutableList;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/TrackGroup;",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            "[IZ",
            "Lcom/google/common/base/Predicate<",
            "Lio/bidmachine/media3/common/Format;",
            ">;I)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;",
            ">;"
        }
    .end annotation

    .line 3826
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v5, v1

    .line 3827
    :goto_6
    iget v1, p1, Lio/bidmachine/media3/common/TrackGroup;->length:I

    if-ge v5, v1, :cond_1f

    .line 3828
    new-instance v2, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    aget v7, p3, v5

    move v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;-><init>(ILio/bidmachine/media3/common/TrackGroup;ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;IZLcom/google/common/base/Predicate;I)V

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 3839
    :cond_1f
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)I
    .registers 7

    .line 3976
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinConstraints:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinRendererCapabilities:Z

    if-eqz v0, :cond_d

    .line 3977
    invoke-static {}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4400()Lcom/google/common/collect/Ordering;

    move-result-object v0

    goto :goto_15

    .line 3978
    :cond_d
    invoke-static {}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4400()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 3980
    :goto_15
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinRendererCapabilities:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinRendererCapabilities:Z

    .line 3981
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLanguageIndex:I

    .line 3985
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLanguageIndex:I

    .line 3986
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3987
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    .line 3984
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLanguageScore:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLanguageScore:I

    .line 3988
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredRoleFlagsScore:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredRoleFlagsScore:I

    .line 3989
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isDefaultSelectionFlag:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isDefaultSelectionFlag:Z

    .line 3991
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->hasMainOrNoRoleFlag:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->hasMainOrNoRoleFlag:Z

    .line 3992
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->localeLanguageMatchIndex:I

    .line 3994
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->localeLanguageMatchIndex:I

    .line 3995
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3996
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    .line 3993
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->localeLanguageScore:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->localeLanguageScore:I

    .line 3997
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinConstraints:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinConstraints:Z

    .line 3999
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredMimeTypeMatchIndex:I

    .line 4001
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredMimeTypeMatchIndex:I

    .line 4002
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4003
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    .line 4000
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    .line 4004
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v2, v2, Lio/bidmachine/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    if-eqz v2, :cond_b7

    .line 4005
    iget v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->bitrate:I

    .line 4006
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->bitrate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4400()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    .line 4009
    :cond_b7
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesPrimaryDecoder:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesPrimaryDecoder:Z

    .line 4011
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesHardwareAcceleration:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesHardwareAcceleration:Z

    .line 4012
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isObjectBasedAudio:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isObjectBasedAudio:Z

    .line 4014
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->channelCount:I

    .line 4015
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->channelCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->sampleRate:I

    .line 4016
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->sampleRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    .line 4017
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->language:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->language:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_109

    .line 4019
    iget v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->bitrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->bitrate:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    .line 4021
    :cond_109
    invoke-virtual {v1}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 3815
    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->compareTo(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)I

    move-result p1

    return p1
.end method

.method public final evaluateSelectionEligibility(IZI)I
    .registers 8

    .line 4028
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 4031
    :cond_c
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinConstraints:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    if-nez v0, :cond_17

    return v1

    .line 4034
    :cond_17
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-object v2, v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v2, v2, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_29

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    .line 4035
    invoke-static {v0, p1, v2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4600(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILio/bidmachine/media3/common/Format;)Z

    move-result v0

    if-nez v0, :cond_29

    return v1

    .line 4038
    :cond_29
    invoke-static {p1, v1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinConstraints:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget v0, v0, Lio/bidmachine/media3/common/Format;->bitrate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_54

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v1, v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    if-nez v1, :cond_54

    iget-boolean v1, v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    if-nez v1, :cond_54

    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    if-nez v1, :cond_4a

    if-nez p2, :cond_54

    :cond_4a
    iget-object p2, v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget p2, p2, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    if-eq p2, v3, :cond_54

    and-int/2addr p1, p3

    if-eqz p1, :cond_54

    return v3

    :cond_54
    const/4 p1, 0x1

    return p1
.end method

.method public getSelectionEligibility()I
    .registers 2

    .line 3952
    iget v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->selectionEligibility:I

    return v0
.end method

.method public isCompatibleForAdaptationWith(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)Z
    .registers 5

    .line 3957
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    const/4 v1, -0x1

    if-nez v0, :cond_13

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget v0, v0, Lio/bidmachine/media3/common/Format;->channelCount:I

    if-eq v0, v1, :cond_4a

    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget v2, v2, Lio/bidmachine/media3/common/Format;->channelCount:I

    if-ne v0, v2, :cond_4a

    :cond_13
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->allowMixedMimeTypes:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget-object v0, v0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v0, :cond_4a

    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget-object v2, v2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 3962
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_27
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v2, v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    if-nez v2, :cond_39

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget v2, v2, Lio/bidmachine/media3/common/Format;->sampleRate:I

    if-eq v2, v1, :cond_4a

    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget v1, v1, Lio/bidmachine/media3/common/Format;->sampleRate:I

    if-ne v2, v1, :cond_4a

    :cond_39
    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesPrimaryDecoder:Z

    iget-boolean v1, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesPrimaryDecoder:Z

    if-ne v0, v1, :cond_4a

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesHardwareAcceleration:Z

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesHardwareAcceleration:Z

    if-ne v0, p1, :cond_4a

    goto :goto_4c

    :cond_4a
    const/4 p1, 0x0

    return p1

    :cond_4c
    :goto_4c
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic isCompatibleForAdaptationWith(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;)Z
    .registers 2

    .line 3815
    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isCompatibleForAdaptationWith(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector.ImageTrackInfo (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$ImageTrackInfo)
.class public final Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;
.super Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo<",
        "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final pixelCount:I

.field public final selectionEligibility:I


# direct methods
.method public constructor <init>(ILio/bidmachine/media3/common/TrackGroup;ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;I)V
    .registers 6

    .line 4220
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;-><init>(ILio/bidmachine/media3/common/TrackGroup;I)V

    .line 4222
    iget-boolean p1, p4, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {p5, p1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p1

    .line 4224
    iput p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->selectionEligibility:I

    .line 4225
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format;->getPixelCount()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->pixelCount:I

    return-void
.end method

.method public static compareSelections(Ljava/util/List;Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4244
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->compareTo(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;)I

    move-result p0

    return p0
.end method

.method public static createForTrackGroup(ILio/bidmachine/media3/common/TrackGroup;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[I)Lcom/google/common/collect/ImmutableList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/TrackGroup;",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            "[I)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;",
            ">;"
        }
    .end annotation

    .line 4202
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v5, v1

    .line 4203
    :goto_6
    iget v1, p1, Lio/bidmachine/media3/common/TrackGroup;->length:I

    if-ge v5, v1, :cond_1a

    .line 4204
    new-instance v2, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;

    aget v7, p3, v5

    move v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;-><init>(ILio/bidmachine/media3/common/TrackGroup;ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;I)V

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 4208
    :cond_1a
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;)I
    .registers 3

    .line 4240
    iget v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->pixelCount:I

    iget p1, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->pixelCount:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 4194
    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->compareTo(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;)I

    move-result p1

    return p1
.end method

.method public getSelectionEligibility()I
    .registers 2

    .line 4230
    iget v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->selectionEligibility:I

    return v0
.end method

.method public isCompatibleForAdaptationWith(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic isCompatibleForAdaptationWith(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;)Z
    .registers 2

    .line 4194
    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->isCompatibleForAdaptationWith(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector.OtherTrackScore (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$OtherTrackScore)
.class public final Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OtherTrackScore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;",
        ">;"
    }
.end annotation


# instance fields
.field public final isDefault:Z

.field public final isWithinRendererCapabilities:Z


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/Format;I)V
    .registers 5

    .line 4253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4254
    iget p1, p1, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isDefault:Z

    .line 4256
    invoke-static {p2, v1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isWithinRendererCapabilities:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;)I
    .registers 5

    .line 4261
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isWithinRendererCapabilities:Z

    iget-boolean v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isWithinRendererCapabilities:Z

    .line 4262
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isDefault:Z

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isDefault:Z

    .line 4263
    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    .line 4264
    invoke-virtual {p1}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 4248
    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->compareTo(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector.Parameters (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$Parameters)
.class public final Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
.super Lio/bidmachine/media3/common/TrackSelectionParameters;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public static final DEFAULT_WITHOUT_CONTEXT:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FIELD_ALLOW_AUDIO_MIXED_CHANNEL_COUNT_ADAPTIVENESS:Ljava/lang/String;

.field public static final FIELD_ALLOW_AUDIO_MIXED_DECODER_SUPPORT_ADAPTIVENESS:Ljava/lang/String;

.field public static final FIELD_ALLOW_AUDIO_MIXED_MIME_TYPE_ADAPTIVENESS:Ljava/lang/String;

.field public static final FIELD_ALLOW_AUDIO_MIXED_SAMPLE_RATE_ADAPTIVENESS:Ljava/lang/String;

.field public static final FIELD_ALLOW_AUDIO_NON_SEAMLESS_ADAPTIVENESS:Ljava/lang/String;

.field public static final FIELD_ALLOW_INVALIDATE_SELECTIONS_ON_RENDERER_CAPABILITIES_CHANGE:Ljava/lang/String;

.field public static final FIELD_ALLOW_MULTIPLE_ADAPTIVE_SELECTIONS:Ljava/lang/String;

.field public static final FIELD_ALLOW_VIDEO_MIXED_DECODER_SUPPORT_ADAPTIVENESS:Ljava/lang/String;

.field public static final FIELD_ALLOW_VIDEO_MIXED_MIME_TYPE_ADAPTIVENESS:Ljava/lang/String;

.field public static final FIELD_ALLOW_VIDEO_NON_SEAMLESS_ADAPTIVENESS:Ljava/lang/String;

.field public static final FIELD_CONSTRAIN_AUDIO_CHANNEL_COUNT_TO_DEVICE_CAPABILITIES:Ljava/lang/String;

.field public static final FIELD_EXCEED_AUDIO_CONSTRAINTS_IF_NECESSARY:Ljava/lang/String;

.field public static final FIELD_EXCEED_RENDERER_CAPABILITIES_IF_NECESSARY:Ljava/lang/String;

.field public static final FIELD_EXCEED_VIDEO_CONSTRAINTS_IF_NECESSARY:Ljava/lang/String;

.field public static final FIELD_RENDERER_DISABLED_INDICES:Ljava/lang/String;

.field public static final FIELD_SELECTION_OVERRIDES:Ljava/lang/String;

.field public static final FIELD_SELECTION_OVERRIDES_RENDERER_INDICES:Ljava/lang/String;

.field public static final FIELD_SELECTION_OVERRIDES_TRACK_GROUP_ARRAYS:Ljava/lang/String;

.field public static final FIELD_TUNNELING_ENABLED:Ljava/lang/String;


# instance fields
.field public final allowAudioMixedChannelCountAdaptiveness:Z

.field public final allowAudioMixedDecoderSupportAdaptiveness:Z

.field public final allowAudioMixedMimeTypeAdaptiveness:Z

.field public final allowAudioMixedSampleRateAdaptiveness:Z

.field public final allowAudioNonSeamlessAdaptiveness:Z

.field public final allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

.field public final allowMultipleAdaptiveSelections:Z

.field public final allowVideoMixedDecoderSupportAdaptiveness:Z

.field public final allowVideoMixedMimeTypeAdaptiveness:Z

.field public final allowVideoNonSeamlessAdaptiveness:Z

.field public final constrainAudioChannelCountToDeviceCapabilities:Z

.field public final exceedAudioConstraintsIfNecessary:Z

.field public final exceedRendererCapabilitiesIfNecessary:Z

.field public final exceedVideoConstraintsIfNecessary:Z

.field public final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field public final selectionOverrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field public final tunnelingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1818
    new-instance v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>()V

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->DEFAULT:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 1823
    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    const/16 v0, 0x3e8

    .line 2095
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_EXCEED_VIDEO_CONSTRAINTS_IF_NECESSARY:Ljava/lang/String;

    const/16 v0, 0x3e9

    .line 2097
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_VIDEO_MIXED_MIME_TYPE_ADAPTIVENESS:Ljava/lang/String;

    const/16 v0, 0x3ea

    .line 2099
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_VIDEO_NON_SEAMLESS_ADAPTIVENESS:Ljava/lang/String;

    const/16 v0, 0x3eb

    .line 2101
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_EXCEED_AUDIO_CONSTRAINTS_IF_NECESSARY:Ljava/lang/String;

    const/16 v0, 0x3ec

    .line 2103
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_AUDIO_MIXED_MIME_TYPE_ADAPTIVENESS:Ljava/lang/String;

    const/16 v0, 0x3ed

    .line 2105
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_AUDIO_MIXED_SAMPLE_RATE_ADAPTIVENESS:Ljava/lang/String;

    const/16 v0, 0x3ee

    .line 2107
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_AUDIO_MIXED_CHANNEL_COUNT_ADAPTIVENESS:Ljava/lang/String;

    const/16 v0, 0x3ef

    .line 2109
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_EXCEED_RENDERER_CAPABILITIES_IF_NECESSARY:Ljava/lang/String;

    const/16 v0, 0x3f0

    .line 2111
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_TUNNELING_ENABLED:Ljava/lang/String;

    const/16 v0, 0x3f1

    .line 2113
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_MULTIPLE_ADAPTIVE_SELECTIONS:Ljava/lang/String;

    const/16 v0, 0x3f2

    .line 2115
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_SELECTION_OVERRIDES_RENDERER_INDICES:Ljava/lang/String;

    const/16 v0, 0x3f3

    .line 2117
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_SELECTION_OVERRIDES_TRACK_GROUP_ARRAYS:Ljava/lang/String;

    const/16 v0, 0x3f4

    .line 2119
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_SELECTION_OVERRIDES:Ljava/lang/String;

    const/16 v0, 0x3f5

    .line 2121
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_RENDERER_DISABLED_INDICES:Ljava/lang/String;

    const/16 v0, 0x3f6

    .line 2123
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_VIDEO_MIXED_DECODER_SUPPORT_ADAPTIVENESS:Ljava/lang/String;

    const/16 v0, 0x3f7

    .line 2125
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_AUDIO_MIXED_DECODER_SUPPORT_ADAPTIVENESS:Ljava/lang/String;

    const/16 v0, 0x3f8

    .line 2127
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_CONSTRAIN_AUDIO_CHANNEL_COUNT_TO_DEVICE_CAPABILITIES:Ljava/lang/String;

    const/16 v0, 0x3f9

    .line 2129
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_INVALIDATE_SELECTIONS_ON_RENDERER_CAPABILITIES_CHANGE:Ljava/lang/String;

    const/16 v0, 0x3fa

    .line 2131
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_AUDIO_NON_SEAMLESS_ADAPTIVENESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V
    .registers 3

    .line 1949
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/TrackSelectionParameters;-><init>(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)V

    .line 1951
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$2200(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    .line 1952
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$2300(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 1953
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$2400(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    .line 1954
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$2500(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 1956
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$2600(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    .line 1957
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$2700(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 1958
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$2800(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 1959
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$2900(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 1960
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$3000(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 1961
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$3100(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioNonSeamlessAdaptiveness:Z

    .line 1963
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$3200(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 1965
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$3300(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    .line 1966
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$3400(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    .line 1967
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$3500(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    .line 1969
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$3600(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    .line 1971
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$3700(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 1972
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$3800(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$1;)V
    .registers 3

    .line 855
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;-><init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseArray;
    .registers 1

    .line 855
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 855
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static areRendererDisabledFlagsEqual(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z
    .registers 6

    .line 2231
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2232
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_c

    return v2

    :cond_c
    move v1, v2

    :goto_d
    if-ge v1, v0, :cond_1d

    .line 2237
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1a

    return v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public static areSelectionOverridesEqual(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;)Z"
        }
    .end annotation

    .line 2247
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2248
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_c

    return v2

    :cond_c
    move v1, v2

    :goto_d
    if-ge v1, v0, :cond_30

    .line 2252
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2f

    .line 2255
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 2254
    invoke-static {v4, v3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->areSelectionOverridesEqual(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_2f

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2f
    :goto_2f
    return v2

    :cond_30
    const/4 p0, 0x1

    return p0
.end method

.method public static areSelectionOverridesEqual(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;",
            "Ljava/util/Map<",
            "Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;)Z"
        }
    .end annotation

    .line 2265
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 2266
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_c

    return v2

    .line 2270
    :cond_c
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2271
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 2272
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_3a
    return v2

    :cond_3b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public bridge synthetic buildUpon()Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
    .registers 2

    .line 855
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public buildUpon()Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    .registers 3

    .line 2025
    new-instance v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_88

    .line 2035
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    if-eq v3, v2, :cond_11

    goto/16 :goto_88

    .line 2038
    :cond_11
    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 2039
    invoke-super {p0, p1}, Lio/bidmachine/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-ne v2, v3, :cond_88

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    if-ne v2, v3, :cond_88

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    if-ne v2, v3, :cond_88

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    if-ne v2, v3, :cond_88

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    if-ne v2, v3, :cond_88

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    if-ne v2, v3, :cond_88

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    if-ne v2, v3, :cond_88

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    if-ne v2, v3, :cond_88

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    if-ne v2, v3, :cond_88

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioNonSeamlessAdaptiveness:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioNonSeamlessAdaptiveness:Z

    if-ne v2, v3, :cond_88

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-ne v2, v3, :cond_88

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    if-ne v2, v3, :cond_88

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    if-ne v2, v3, :cond_88

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    if-ne v2, v3, :cond_88

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    if-ne v2, v3, :cond_88

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 2064
    invoke-static {v2, v3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->areRendererDisabledFlagsEqual(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z

    move-result v2

    if-eqz v2, :cond_88

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 2065
    invoke-static {v2, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->areSelectionOverridesEqual(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result p1

    if-eqz p1, :cond_88

    return v0

    :cond_88
    :goto_88
    return v1
.end method

.method public getRendererDisabled(I)Z
    .registers 3

    .line 1982
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public getSelectionOverride(ILio/bidmachine/media3/exoplayer/source/TrackGroupArray;)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2017
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 2018
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_11

    .line 2019
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasSelectionOverride(ILio/bidmachine/media3/exoplayer/source/TrackGroupArray;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1998
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 1999
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_12

    .line 2000
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 4

    .line 2071
    invoke-super {p0}, Lio/bidmachine/media3/common/TrackSelectionParameters;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2073
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 2074
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 2075
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 2076
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 2078
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 2079
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 2080
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 2081
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 2082
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 2083
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioNonSeamlessAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 2084
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 2086
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 2087
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 2088
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 2089
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    add-int/2addr v0, v1

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector.Parameters.Builder (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$Parameters$Builder)
.class public final Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
.super Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public allowAudioMixedChannelCountAdaptiveness:Z

.field public allowAudioMixedDecoderSupportAdaptiveness:Z

.field public allowAudioMixedMimeTypeAdaptiveness:Z

.field public allowAudioMixedSampleRateAdaptiveness:Z

.field public allowAudioNonSeamlessAdaptiveness:Z

.field public allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

.field public allowMultipleAdaptiveSelections:Z

.field public allowVideoMixedDecoderSupportAdaptiveness:Z

.field public allowVideoMixedMimeTypeAdaptiveness:Z

.field public allowVideoNonSeamlessAdaptiveness:Z

.field public constrainAudioChannelCountToDeviceCapabilities:Z

.field public exceedAudioConstraintsIfNecessary:Z

.field public exceedRendererCapabilitiesIfNecessary:Z

.field public exceedVideoConstraintsIfNecessary:Z

.field public final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field public final selectionOverrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field public tunnelingEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 888
    invoke-direct {p0}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;-><init>()V

    .line 889
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    .line 890
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 891
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->init()V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V
    .registers 3

    .line 908
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;-><init>(Lio/bidmachine/media3/common/TrackSelectionParameters;)V

    .line 910
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedVideoConstraintsIfNecessary:Z

    .line 911
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 912
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoNonSeamlessAdaptiveness:Z

    .line 913
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 916
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedAudioConstraintsIfNecessary:Z

    .line 917
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 918
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 919
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 921
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 923
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioNonSeamlessAdaptiveness:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioNonSeamlessAdaptiveness:Z

    .line 924
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 927
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedRendererCapabilitiesIfNecessary:Z

    .line 928
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->tunnelingEnabled:Z

    .line 929
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowMultipleAdaptiveSelections:Z

    .line 930
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    .line 933
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->access$000(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->cloneSelectionOverrides(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    .line 934
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->access$100(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$1;)V
    .registers 3

    .line 861
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method public static synthetic access$2200(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .registers 1

    .line 861
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedVideoConstraintsIfNecessary:Z

    return p0
.end method

.method public static synthetic access$2300(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .registers 1

    .line 861
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedMimeTypeAdaptiveness:Z

    return p0
.end method

.method public static synthetic access$2400(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .registers 1

    .line 861
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoNonSeamlessAdaptiveness:Z

    return p0
.end method

.method public static synthetic access$2500(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .registers 1

    .line 861
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedDecoderSupportAdaptiveness:Z

    return p0
.end method

.method public static synthetic access$2600(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .registers 1

    .line 861
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedAudioConstraintsIfNecessary:Z

    return p0
.end method

.method public static synthetic access$2700(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .registers 1

    .line 861
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedMimeTypeAdaptiveness:Z

    return p0
.end method

.method public static synthetic access$2800(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .registers 1

    .line 861
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedSampleRateAdaptiveness:Z

    return p0
.end method

.method public static synthetic access$2900(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .registers 1

    .line 861
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedChannelCountAdaptiveness:Z

    return p0
.end method

.method public static synthetic access$3000(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .registers 1

    .line 861
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedDecoderSupportAdaptiveness:Z

    return p0
.end method

.method public static synthetic access$3100(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .registers 1

    .line 861
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioNonSeamlessAdaptiveness:Z

    return p0
.end method

.method public static synthetic access$3200(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .registers 1

    .line 861
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->constrainAudioChannelCountToDeviceCapabilities:Z

    return p0
.end method

.method public static synthetic access$3300(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .registers 1

    .line 861
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedRendererCapabilitiesIfNecessary:Z

    return p0
.end method

.method public static synthetic access$3400(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .registers 1

    .line 861
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->tunnelingEnabled:Z

    return p0
.end method

.method public static synthetic access$3500(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .registers 1

    .line 861
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowMultipleAdaptiveSelections:Z

    return p0
.end method

.method public static synthetic access$3600(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .registers 1

    .line 861
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    return p0
.end method

.method public static synthetic access$3700(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Landroid/util/SparseArray;
    .registers 1

    .line 861
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$3800(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 861
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static cloneSelectionOverrides(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;)",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation

    .line 1764
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 1766
    :goto_6
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1767
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_21
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lio/bidmachine/media3/common/TrackSelectionParameters;
    .registers 2

    .line 861
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .registers 3

    .line 1736
    new-instance v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;-><init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$1;)V

    return-object v0
.end method

.method public bridge synthetic clearOverridesOfType(I)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
    .registers 2

    .line 861
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearOverridesOfType(I)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOverridesOfType(I)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    .registers 2

    .line 1519
    invoke-super {p0, p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->clearOverridesOfType(I)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final init()V
    .registers 3

    const/4 v0, 0x1

    .line 1741
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedVideoConstraintsIfNecessary:Z

    const/4 v1, 0x0

    .line 1742
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 1743
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoNonSeamlessAdaptiveness:Z

    .line 1744
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 1746
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedAudioConstraintsIfNecessary:Z

    .line 1747
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 1748
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 1749
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 1750
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 1751
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioNonSeamlessAdaptiveness:Z

    .line 1752
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 1754
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedRendererCapabilitiesIfNecessary:Z

    .line 1755
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->tunnelingEnabled:Z

    .line 1756
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowMultipleAdaptiveSelections:Z

    .line 1757
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    return-void
.end method

.method public set(Lio/bidmachine/media3/common/TrackSelectionParameters;)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    .registers 2

    .line 1014
    invoke-super {p0, p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->set(Lio/bidmachine/media3/common/TrackSelectionParameters;)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setIgnoredTextSelectionFlags(I)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
    .registers 2

    .line 861
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setIgnoredTextSelectionFlags(I)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setIgnoredTextSelectionFlags(I)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    .registers 2

    .line 1434
    invoke-super {p0, p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->setIgnoredTextSelectionFlags(I)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setOverrideForType(Lio/bidmachine/media3/common/TrackSelectionOverride;)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
    .registers 2

    .line 861
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setOverrideForType(Lio/bidmachine/media3/common/TrackSelectionOverride;)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setOverrideForType(Lio/bidmachine/media3/common/TrackSelectionOverride;)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    .registers 2

    .line 1512
    invoke-super {p0, p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->setOverrideForType(Lio/bidmachine/media3/common/TrackSelectionOverride;)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
    .registers 2

    .line 861
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguage(Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredTextLanguage(Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    .registers 2

    .line 1413
    invoke-super {p0, p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->setPreferredTextLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextLanguages([Ljava/lang/String;)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
    .registers 2

    .line 861
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguages([Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPreferredTextLanguages([Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    .registers 2

    .line 1420
    invoke-super {p0, p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->setPreferredTextLanguages([Ljava/lang/String;)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextRoleFlags(I)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
    .registers 2

    .line 861
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextRoleFlags(I)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredTextRoleFlags(I)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    .registers 2

    .line 1427
    invoke-super {p0, p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->setPreferredTextRoleFlags(I)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setTrackTypeDisabled(IZ)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
    .registers 3

    .line 861
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setTrackTypeDisabled(IZ)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTrackTypeDisabled(IZ)Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    .registers 3

    .line 1545
    invoke-super {p0, p1, p2}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector.SelectionOverride (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$SelectionOverride)
.class public final Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionOverride"
.end annotation


# static fields
.field public static final FIELD_GROUP_INDEX:Ljava/lang/String;

.field public static final FIELD_TRACKS:Ljava/lang/String;

.field public static final FIELD_TRACK_TYPE:Ljava/lang/String;


# instance fields
.field public final groupIndex:I

.field public final tracks:[I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 2344
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_GROUP_INDEX:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2345
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_TRACKS:Ljava/lang/String;

    const/4 v0, 0x2

    .line 2346
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_TRACK_TYPE:Ljava/lang/String;

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

    if-eqz p1, :cond_29

    .line 2335
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;

    if-eq v3, v2, :cond_10

    goto :goto_29

    .line 2338
    :cond_10
    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;

    .line 2339
    iget v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    if-ne v2, v3, :cond_29

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    .line 2340
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_29

    iget v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    iget p1, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    if-ne v2, p1, :cond_29

    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 2326
    iget v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2327
    iget v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    add-int/2addr v0, v1

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector.SpatializerWrapperV32 (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$SpatializerWrapperV32)
.class public Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpatializerWrapperV32"
.end annotation


# instance fields
.field public final handler:Landroid/os/Handler;

.field public final listener:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

.field public final spatializationSupported:Z

.field public final spatializer:Landroid/media/Spatializer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;)V
    .registers 6

    .line 4281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_8

    move-object v1, v0

    goto :goto_c

    .line 4284
    :cond_8
    invoke-static {p1}, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    :goto_c
    const/4 v2, 0x0

    if-eqz v1, :cond_4f

    .line 4286
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Util;->isTv(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_4f

    .line 4293
    :cond_1c
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioManager;)Landroid/media/Spatializer;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->spatializer:Landroid/media/Spatializer;

    .line 4295
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/Spatializer;)I

    move-result v0

    if-eqz v0, :cond_29

    const/4 v2, 0x1

    :cond_29
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->spatializationSupported:Z

    .line 4296
    new-instance v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;-><init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->listener:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 4308
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->handler:Landroid/os/Handler;

    .line 4309
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/webkit/WebViewCompat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroidx/webkit/WebViewCompat$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-static {p1, v1, v0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/Spatializer;Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    return-void

    .line 4287
    :cond_4f
    :goto_4f
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->spatializer:Landroid/media/Spatializer;

    .line 4288
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->spatializationSupported:Z

    .line 4289
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->handler:Landroid/os/Handler;

    .line 4290
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->listener:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    return-void
.end method


# virtual methods
.method public canBeSpatialized(Lio/bidmachine/media3/common/AudioAttributes;Lio/bidmachine/media3/common/Format;)Z
    .registers 7

    .line 4326
    iget-object v0, p2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_14

    .line 4330
    iget v0, p2, Lio/bidmachine/media3/common/Format;->channelCount:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_3d

    const/16 v0, 0xc

    goto :goto_3d

    .line 4331
    :cond_14
    iget-object v0, p2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/iamf"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4335
    iget v0, p2, Lio/bidmachine/media3/common/Format;->channelCount:I

    if-ne v0, v1, :cond_3d

    const/4 v0, 0x6

    goto :goto_3d

    .line 4336
    :cond_24
    iget-object v0, p2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/ac4"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4341
    iget v0, p2, Lio/bidmachine/media3/common/Format;->channelCount:I

    const/16 v2, 0x12

    if-eq v0, v2, :cond_38

    const/16 v2, 0x15

    if-ne v0, v2, :cond_3d

    :cond_38
    const/16 v0, 0x18

    goto :goto_3d

    .line 4343
    :cond_3b
    iget v0, p2, Lio/bidmachine/media3/common/Format;->channelCount:I

    .line 4346
    :cond_3d
    :goto_3d
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v0

    if-nez v0, :cond_45

    const/4 p1, 0x0

    return p1

    .line 4350
    :cond_45
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v3, 0x2

    .line 4352
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 4353
    invoke-virtual {v2, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 4354
    iget p2, p2, Lio/bidmachine/media3/common/Format;->sampleRate:I

    if-eq p2, v1, :cond_5a

    .line 4355
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 4357
    :cond_5a
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->spatializer:Landroid/media/Spatializer;

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$$ExternalSyntheticApiModelOutline4;->m(Ljava/lang/Object;)Landroid/media/Spatializer;

    move-result-object p2

    .line 4359
    invoke-virtual {p1}, Lio/bidmachine/media3/common/AudioAttributes;->getAudioAttributesV21()Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;

    move-result-object p1

    iget-object p1, p1, Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 4358
    invoke-static {p2, p1, v0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$$ExternalSyntheticApiModelOutline6;->m(Landroid/media/Spatializer;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result p1

    return p1
.end method

.method public isAvailable()Z
    .registers 2

    .line 4317
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->spatializer:Landroid/media/Spatializer;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$$ExternalSyntheticApiModelOutline4;->m(Ljava/lang/Object;)Landroid/media/Spatializer;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/Spatializer;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 4321
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->spatializer:Landroid/media/Spatializer;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$$ExternalSyntheticApiModelOutline4;->m(Ljava/lang/Object;)Landroid/media/Spatializer;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$$ExternalSyntheticApiModelOutline7;->m(Landroid/media/Spatializer;)Z

    move-result v0

    return v0
.end method

.method public isSpatializationSupported()Z
    .registers 2

    .line 4313
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->spatializationSupported:Z

    return v0
.end method

.method public release()V
    .registers 4

    .line 4363
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->spatializer:Landroid/media/Spatializer;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->listener:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    if-eqz v1, :cond_16

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->handler:Landroid/os/Handler;

    if-nez v2, :cond_d

    goto :goto_16

    .line 4366
    :cond_d
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/Spatializer;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    .line 4367
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_16
    :goto_16
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector.SpatializerWrapperV32.AnonymousClass1 (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$SpatializerWrapperV32$1)
.class public Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;-><init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

.field public final synthetic val$defaultTrackSelector:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4297
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;->this$0:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;->val$defaultTrackSelector:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V
    .registers 3

    .line 4305
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;->val$defaultTrackSelector:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4700(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;)V

    return-void
.end method

.method public onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V
    .registers 3

    .line 4300
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;->val$defaultTrackSelector:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4700(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector.TextTrackInfo (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$TextTrackInfo)
.class public final Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;
.super Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo<",
        "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final hasCaptionRoleFlags:Z

.field public final isDefault:Z

.field public final isForced:Z

.field public final isWithinRendererCapabilities:Z

.field public final preferredLanguageIndex:I

.field public final preferredLanguageScore:I

.field public final preferredRoleFlagsScore:I

.field public final selectedAudioLanguageScore:I

.field public final selectionEligibility:I


# direct methods
.method public constructor <init>(ILio/bidmachine/media3/common/TrackGroup;ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 4099
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;-><init>(ILio/bidmachine/media3/common/TrackGroup;I)V

    const/4 p1, 0x0

    .line 4101
    invoke-static {p5, p1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isWithinRendererCapabilities:Z

    .line 4102
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget p2, p2, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    iget p3, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    not-int p3, p3

    and-int/2addr p2, p3

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x1

    if-eqz p3, :cond_19

    move p3, v0

    goto :goto_1a

    :cond_19
    move p3, p1

    .line 4103
    :goto_1a
    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_22

    move p2, v0

    goto :goto_23

    :cond_22
    move p2, p1

    .line 4104
    :goto_23
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    if-eqz p7, :cond_2c

    .line 4111
    invoke-static {p7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    goto :goto_3d

    .line 4112
    :cond_2c
    iget-object p2, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 4113
    const-string p2, ""

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    goto :goto_3d

    .line 4114
    :cond_3b
    iget-object p2, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    :goto_3d
    move p3, p1

    .line 4115
    :goto_3e
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge p3, v1, :cond_58

    .line 4116
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    .line 4118
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-boolean v3, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    .line 4117
    invoke-static {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Lio/bidmachine/media3/common/Format;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_55

    goto :goto_5c

    :cond_55
    add-int/lit8 p3, p3, 0x1

    goto :goto_3e

    :cond_58
    const p3, 0x7fffffff

    move v1, p1

    .line 4125
    :goto_5c
    iput p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageIndex:I

    .line 4126
    iput v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    const/16 p2, 0x440

    if-eqz p7, :cond_66

    move p3, p2

    goto :goto_68

    .line 4130
    :cond_66
    iget p3, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredTextRoleFlags:I

    .line 4131
    :goto_68
    iget-object p7, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget p7, p7, Lio/bidmachine/media3/common/Format;->roleFlags:I

    invoke-static {p7, p3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4200(II)I

    move-result p3

    iput p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    .line 4132
    iget-object p7, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget p7, p7, Lio/bidmachine/media3/common/Format;->roleFlags:I

    and-int/2addr p2, p7

    if-eqz p2, :cond_7b

    move p2, v0

    goto :goto_7c

    :cond_7b
    move p2, p1

    :goto_7c
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->hasCaptionRoleFlags:Z

    .line 4135
    invoke-static {p6}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_86

    move p2, v0

    goto :goto_87

    :cond_86
    move p2, p1

    .line 4136
    :goto_87
    iget-object p7, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    .line 4137
    invoke-static {p7, p6, p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Lio/bidmachine/media3/common/Format;Ljava/lang/String;Z)I

    move-result p2

    iput p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectedAudioLanguageScore:I

    if-gtz v1, :cond_a8

    .line 4138
    iget-object p6, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    .line 4140
    invoke-virtual {p6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_9b

    if-gtz p3, :cond_a8

    :cond_9b
    iget-boolean p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    if-nez p3, :cond_a8

    iget-boolean p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    if-eqz p3, :cond_a6

    if-lez p2, :cond_a6

    goto :goto_a8

    :cond_a6
    move p2, p1

    goto :goto_a9

    :cond_a8
    :goto_a8
    move p2, v0

    .line 4145
    :goto_a9
    iget-boolean p3, p4, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    .line 4144
    invoke-static {p5, p3}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p3

    if-eqz p3, :cond_b4

    if-eqz p2, :cond_b4

    move p1, v0

    .line 4147
    :cond_b4
    iput p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectionEligibility:I

    return-void
.end method

.method public static compareSelections(Ljava/util/List;Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4190
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->compareTo(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;)I

    move-result p0

    return p0
.end method

.method public static createForTrackGroup(ILio/bidmachine/media3/common/TrackGroup;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[ILjava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/TrackGroup;",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            "[I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;",
            ">;"
        }
    .end annotation

    .line 4066
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v5, v1

    .line 4067
    :goto_6
    iget v1, p1, Lio/bidmachine/media3/common/TrackGroup;->length:I

    if-ge v5, v1, :cond_1c

    .line 4068
    new-instance v2, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    aget v7, p3, v5

    move v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;-><init>(ILio/bidmachine/media3/common/TrackGroup;ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 4078
    :cond_1c
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;)I
    .registers 6

    .line 4163
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isWithinRendererCapabilities:Z

    iget-boolean v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isWithinRendererCapabilities:Z

    .line 4164
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageIndex:I

    .line 4168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageIndex:I

    .line 4169
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4170
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v3

    .line 4167
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    iget v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    .line 4171
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    iget v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    .line 4172
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    iget-boolean v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    .line 4174
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    .line 4176
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    .line 4177
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 4181
    iget v3, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    if-nez v3, :cond_51

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    goto :goto_59

    :cond_51
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v3

    .line 4175
    :goto_59
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectedAudioLanguageScore:I

    iget v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectedAudioLanguageScore:I

    .line 4182
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 4183
    iget v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    if-nez v1, :cond_71

    .line 4184
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->hasCaptionRoleFlags:Z

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->hasCaptionRoleFlags:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/ComparisonChain;->compareTrueFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 4186
    :cond_71
    invoke-virtual {v0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 4056
    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->compareTo(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;)I

    move-result p1

    return p1
.end method

.method public getSelectionEligibility()I
    .registers 2

    .line 4152
    iget v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectionEligibility:I

    return v0
.end method

.method public isCompatibleForAdaptationWith(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic isCompatibleForAdaptationWith(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;)Z
    .registers 2

    .line 4056
    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isCompatibleForAdaptationWith(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$TrackInfo)
.class public abstract Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TrackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final format:Lio/bidmachine/media3/common/Format;

.field public final rendererIndex:I

.field public final trackGroup:Lio/bidmachine/media3/common/TrackGroup;

.field public final trackIndex:I


# direct methods
.method public constructor <init>(ILio/bidmachine/media3/common/TrackGroup;I)V
    .registers 4

    .line 3534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3535
    iput p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->rendererIndex:I

    .line 3536
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->trackGroup:Lio/bidmachine/media3/common/TrackGroup;

    .line 3537
    iput p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->trackIndex:I

    .line 3538
    invoke-virtual {p2, p3}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    return-void
.end method


# virtual methods
.method public abstract getSelectionEligibility()I
.end method

.method public abstract isCompatibleForAdaptationWith(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$TrackInfo$Factory)
.class public interface abstract Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create(ILio/bidmachine/media3/common/TrackGroup;[I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/TrackGroup;",
            "[I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector.VideoTrackInfo (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$VideoTrackInfo)
.class public final Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;
.super Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo<",
        "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final allowMixedMimeTypes:Z

.field public final bitrate:I

.field public final codecPreferenceScore:I

.field public final hasMainOrNoRoleFlag:Z

.field public final hasReasonableFrameRate:Z

.field public final isWithinMaxConstraints:Z

.field public final isWithinMinConstraints:Z

.field public final isWithinRendererCapabilities:Z

.field public final parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public final pixelCount:I

.field public final preferredLanguageIndex:I

.field public final preferredLanguageScore:I

.field public final preferredMimeTypeMatchIndex:I

.field public final preferredRoleFlagsScore:I

.field public final selectedAudioLanguageScore:I

.field public final selectionEligibility:I

.field public final usesHardwareAcceleration:Z

.field public final usesPrimaryDecoder:Z


# direct methods
.method public static synthetic $r8$lambda$7y2NEMB2G4ZY4bOChKg7CRrUAao(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->compareQualityPreferences(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ssjtrNi9R6pwMTqQFhBrmJYc4fc(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->compareNonQualityPreferences(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(ILio/bidmachine/media3/common/TrackGroup;ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;IZ)V
    .registers 13

    .line 3627
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;-><init>(ILio/bidmachine/media3/common/TrackGroup;I)V

    .line 3628
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 3631
    iget-boolean p1, p4, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    if-eqz p1, :cond_c

    const/16 p1, 0x18

    goto :goto_e

    :cond_c
    const/16 p1, 0x10

    .line 3635
    :goto_e
    iget-boolean p2, p4, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    and-int p2, p7, p1

    if-eqz p2, :cond_1a

    move p2, p3

    goto :goto_1b

    :cond_1a
    move p2, v0

    :goto_1b
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->allowMixedMimeTypes:Z

    const/high16 p2, -0x40800000    # -1.0f

    const/4 p7, -0x1

    if-eqz p8, :cond_4b

    .line 3638
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget v2, v1, Lio/bidmachine/media3/common/Format;->width:I

    if-eq v2, p7, :cond_2c

    iget v3, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    if-gt v2, v3, :cond_4b

    :cond_2c
    iget v2, v1, Lio/bidmachine/media3/common/Format;->height:I

    if-eq v2, p7, :cond_34

    iget v3, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    if-gt v2, v3, :cond_4b

    :cond_34
    iget v2, v1, Lio/bidmachine/media3/common/Format;->frameRate:F

    cmpl-float v3, v2, p2

    if-eqz v3, :cond_41

    iget v3, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4b

    :cond_41
    iget v1, v1, Lio/bidmachine/media3/common/Format;->bitrate:I

    if-eq v1, p7, :cond_49

    iget v2, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    if-gt v1, v2, :cond_4b

    :cond_49
    move v1, p3

    goto :goto_4c

    :cond_4b
    move v1, v0

    :goto_4c
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMaxConstraints:Z

    if-eqz p8, :cond_79

    .line 3646
    iget-object p8, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget v1, p8, Lio/bidmachine/media3/common/Format;->width:I

    if-eq v1, p7, :cond_5a

    iget v2, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoWidth:I

    if-lt v1, v2, :cond_79

    :cond_5a
    iget v1, p8, Lio/bidmachine/media3/common/Format;->height:I

    if-eq v1, p7, :cond_62

    iget v2, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoHeight:I

    if-lt v1, v2, :cond_79

    :cond_62
    iget v1, p8, Lio/bidmachine/media3/common/Format;->frameRate:F

    cmpl-float v2, v1, p2

    if-eqz v2, :cond_6f

    iget v2, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoFrameRate:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_79

    :cond_6f
    iget p8, p8, Lio/bidmachine/media3/common/Format;->bitrate:I

    if-eq p8, p7, :cond_77

    iget p7, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoBitrate:I

    if-lt p8, p7, :cond_79

    :cond_77
    move p7, p3

    goto :goto_7a

    :cond_79
    move p7, v0

    :goto_7a
    iput-boolean p7, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMinConstraints:Z

    .line 3655
    invoke-static {p5, v0}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p7

    iput-boolean p7, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinRendererCapabilities:Z

    .line 3656
    iget-object p7, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget p8, p7, Lio/bidmachine/media3/common/Format;->frameRate:F

    cmpl-float p2, p8, p2

    if-eqz p2, :cond_92

    const/high16 p2, 0x41200000    # 10.0f

    cmpl-float p2, p8, p2

    if-ltz p2, :cond_92

    move p2, p3

    goto :goto_93

    :cond_92
    move p2, v0

    :goto_93
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->hasReasonableFrameRate:Z

    .line 3658
    iget p2, p7, Lio/bidmachine/media3/common/Format;->bitrate:I

    iput p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->bitrate:I

    .line 3659
    invoke-virtual {p7}, Lio/bidmachine/media3/common/Format;->getPixelCount()I

    move-result p2

    iput p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->pixelCount:I

    move p2, v0

    .line 3662
    :goto_a0
    iget-object p7, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p7}, Ljava/util/AbstractCollection;->size()I

    move-result p7

    const p8, 0x7fffffff

    if-ge p2, p7, :cond_bf

    .line 3663
    iget-object p7, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget-object v1, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    .line 3666
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3664
    invoke-static {p7, v1, v0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Lio/bidmachine/media3/common/Format;Ljava/lang/String;Z)I

    move-result p7

    if-lez p7, :cond_bc

    goto :goto_c1

    :cond_bc
    add-int/lit8 p2, p2, 0x1

    goto :goto_a0

    :cond_bf
    move p2, p8

    move p7, v0

    .line 3674
    :goto_c1
    iput p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredLanguageIndex:I

    .line 3675
    iput p7, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredLanguageScore:I

    .line 3676
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget p2, p2, Lio/bidmachine/media3/common/Format;->roleFlags:I

    iget p7, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoRoleFlags:I

    .line 3677
    invoke-static {p2, p7}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4200(II)I

    move-result p2

    iput p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredRoleFlagsScore:I

    .line 3678
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget p2, p2, Lio/bidmachine/media3/common/Format;->roleFlags:I

    if-eqz p2, :cond_dd

    and-int/2addr p2, p3

    if-eqz p2, :cond_db

    goto :goto_dd

    :cond_db
    move p2, v0

    goto :goto_de

    :cond_dd
    :goto_dd
    move p2, p3

    :goto_de
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->hasMainOrNoRoleFlag:Z

    .line 3680
    invoke-static {p6}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_e8

    move p2, p3

    goto :goto_e9

    :cond_e8
    move p2, v0

    .line 3681
    :goto_e9
    iget-object p7, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    .line 3682
    invoke-static {p7, p6, p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Lio/bidmachine/media3/common/Format;Ljava/lang/String;Z)I

    move-result p2

    iput p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->selectedAudioLanguageScore:I

    move p2, v0

    .line 3684
    :goto_f2
    iget-object p6, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p6}, Ljava/util/AbstractCollection;->size()I

    move-result p6

    if-ge p2, p6, :cond_111

    .line 3685
    iget-object p6, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget-object p6, p6, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p6, :cond_10e

    iget-object p7, p4, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 3686
    invoke-interface {p7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_10e

    move p8, p2

    goto :goto_111

    :cond_10e
    add-int/lit8 p2, p2, 0x1

    goto :goto_f2

    .line 3691
    :cond_111
    :goto_111
    iput p8, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredMimeTypeMatchIndex:I

    .line 3693
    invoke-static {p5}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->getDecoderSupport(I)I

    move-result p2

    const/16 p4, 0x80

    if-ne p2, p4, :cond_11d

    move p2, p3

    goto :goto_11e

    :cond_11d
    move p2, v0

    :goto_11e
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesPrimaryDecoder:Z

    .line 3696
    invoke-static {p5}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->getHardwareAccelerationSupport(I)I

    move-result p2

    const/16 p4, 0x40

    if-ne p2, p4, :cond_129

    goto :goto_12a

    :cond_129
    move p3, v0

    :goto_12a
    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesHardwareAcceleration:Z

    .line 3698
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget-object p2, p2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4300(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->codecPreferenceScore:I

    .line 3699
    invoke-virtual {p0, p5, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->evaluateSelectionEligibility(II)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->selectionEligibility:I

    return-void
.end method

.method public static compareNonQualityPreferences(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)I
    .registers 6

    .line 3741
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinRendererCapabilities:Z

    iget-boolean v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinRendererCapabilities:Z

    .line 3742
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredLanguageIndex:I

    .line 3746
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredLanguageIndex:I

    .line 3747
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3748
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v3

    .line 3745
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredLanguageScore:I

    iget v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredLanguageScore:I

    .line 3749
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredRoleFlagsScore:I

    iget v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredRoleFlagsScore:I

    .line 3750
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->hasMainOrNoRoleFlag:Z

    iget-boolean v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->hasMainOrNoRoleFlag:Z

    .line 3752
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->selectedAudioLanguageScore:I

    iget v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->selectedAudioLanguageScore:I

    .line 3753
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->hasReasonableFrameRate:Z

    iget-boolean v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->hasReasonableFrameRate:Z

    .line 3755
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMaxConstraints:Z

    iget-boolean v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMaxConstraints:Z

    .line 3757
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMinConstraints:Z

    iget-boolean v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMinConstraints:Z

    .line 3758
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredMimeTypeMatchIndex:I

    .line 3760
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredMimeTypeMatchIndex:I

    .line 3761
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3762
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v3

    .line 3759
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesPrimaryDecoder:Z

    iget-boolean v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesPrimaryDecoder:Z

    .line 3764
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesHardwareAcceleration:Z

    iget-boolean v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesHardwareAcceleration:Z

    .line 3765
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 3767
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesPrimaryDecoder:Z

    if-eqz v1, :cond_94

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesHardwareAcceleration:Z

    if-eqz v1, :cond_94

    .line 3768
    iget p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->codecPreferenceScore:I

    iget p1, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->codecPreferenceScore:I

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 3770
    :cond_94
    invoke-virtual {v0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p0

    return p0
.end method

.method public static compareQualityPreferences(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)I
    .registers 7

    .line 3783
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMaxConstraints:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinRendererCapabilities:Z

    if-eqz v0, :cond_d

    .line 3784
    invoke-static {}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4400()Lcom/google/common/collect/Ordering;

    move-result-object v0

    goto :goto_15

    .line 3785
    :cond_d
    invoke-static {}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4400()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 3786
    :goto_15
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    .line 3787
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v2, v2, Lio/bidmachine/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    if-eqz v2, :cond_37

    .line 3788
    iget v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->bitrate:I

    .line 3789
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->bitrate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4400()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    .line 3791
    :cond_37
    iget v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->pixelCount:I

    .line 3792
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->pixelCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->bitrate:I

    .line 3793
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->bitrate:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p0, p1, v0}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    .line 3794
    invoke-virtual {p0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p0

    return p0
.end method

.method public static compareSelections(Ljava/util/List;Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;",
            ">;)I"
        }
    .end annotation

    .line 3798
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0;-><init>()V

    .line 3801
    invoke-static {p0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v2, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0;-><init>()V

    .line 3802
    invoke-static {p1, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v3, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0;-><init>()V

    .line 3800
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 3805
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;-><init>()V

    .line 3808
    invoke-static {p0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;-><init>()V

    .line 3809
    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;-><init>()V

    .line 3807
    invoke-virtual {v0, p0, p1, v1}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    .line 3811
    invoke-virtual {p0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p0

    return p0
.end method

.method public static createForTrackGroup(ILio/bidmachine/media3/common/TrackGroup;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[ILjava/lang/String;ILandroid/graphics/Point;)Lcom/google/common/collect/ImmutableList;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/TrackGroup;",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            "[I",
            "Ljava/lang/String;",
            "I",
            "Landroid/graphics/Point;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p6

    if-eqz v0, :cond_7

    .line 3568
    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_9

    :cond_7
    iget v1, p2, Lio/bidmachine/media3/common/TrackSelectionParameters;->viewportWidth:I

    :goto_9
    if-eqz v0, :cond_e

    .line 3570
    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_10

    :cond_e
    iget v0, p2, Lio/bidmachine/media3/common/TrackSelectionParameters;->viewportHeight:I

    .line 3571
    :goto_10
    iget-boolean v2, p2, Lio/bidmachine/media3/common/TrackSelectionParameters;->viewportOrientationMayChange:Z

    .line 3572
    invoke-static {p1, v1, v0, v2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4100(Lio/bidmachine/media3/common/TrackGroup;IIZ)I

    move-result v0

    .line 3574
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    const/4 v2, 0x0

    move v6, v2

    .line 3575
    :goto_1c
    iget v3, p1, Lio/bidmachine/media3/common/TrackGroup;->length:I

    if-ge v6, v3, :cond_4b

    .line 3576
    invoke-virtual {p1, v6}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/media3/common/Format;->getPixelCount()I

    move-result v3

    const v4, 0x7fffffff

    if-eq v0, v4, :cond_35

    const/4 v4, -0x1

    if-eq v3, v4, :cond_33

    if-gt v3, v0, :cond_33

    goto :goto_35

    :cond_33
    move v11, v2

    goto :goto_37

    :cond_35
    :goto_35
    const/4 v3, 0x1

    move v11, v3

    .line 3580
    :goto_37
    new-instance v3, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    aget v8, p3, v6

    move v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v3 .. v11}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;-><init>(ILio/bidmachine/media3/common/TrackGroup;ILio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;IZ)V

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 3591
    :cond_4b
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final evaluateSelectionEligibility(II)I
    .registers 5

    .line 3718
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget v0, v0, Lio/bidmachine/media3/common/Format;->roleFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 3722
    :cond_a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 3725
    :cond_15
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMaxConstraints:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-nez v0, :cond_20

    return v1

    .line 3728
    :cond_20
    invoke-static {p1, v1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMinConstraints:Z

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMaxConstraints:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget v0, v0, Lio/bidmachine/media3/common/Format;->bitrate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_44

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v1, v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    if-nez v1, :cond_44

    iget-boolean v0, v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    if-nez v0, :cond_44

    and-int/2addr p1, p2

    if-eqz p1, :cond_44

    const/4 p1, 0x2

    return p1

    :cond_44
    const/4 p1, 0x1

    return p1
.end method

.method public getSelectionEligibility()I
    .registers 2

    .line 3704
    iget v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->selectionEligibility:I

    return v0
.end method

.method public bridge synthetic isCompatibleForAdaptationWith(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;)Z
    .registers 2

    .line 3551
    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isCompatibleForAdaptationWith(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)Z

    move-result p1

    return p1
.end method

.method public isCompatibleForAdaptationWith(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)Z
    .registers 4

    .line 3709
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->allowMixedMimeTypes:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget-object v0, v0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Lio/bidmachine/media3/common/Format;

    iget-object v1, v1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 3710
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->parameters:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesPrimaryDecoder:Z

    iget-boolean v1, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesPrimaryDecoder:Z

    if-ne v0, v1, :cond_25

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesHardwareAcceleration:Z

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesHardwareAcceleration:Z

    if-ne v0, p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    return p1

    :cond_27
    :goto_27
    const/4 p1, 0x1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    check-cast p2, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->$r8$lambda$ssjtrNi9R6pwMTqQFhBrmJYc4fc(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    check-cast p2, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->$r8$lambda$7y2NEMB2G4ZY4bOChKg7CRrUAao(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final create(ILio/bidmachine/media3/common/TrackGroup;[I)Ljava/util/List;
    .registers 10

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->$r8$lambda$5mDa8VZWbEF0bgui83uQE9pd8iA(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;Ljava/lang/String;ILio/bidmachine/media3/common/TrackGroup;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->compareSelections(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[I

.field public final synthetic f$3:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;[ILandroid/graphics/Point;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;->f$2:[I

    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;->f$3:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final create(ILio/bidmachine/media3/common/TrackGroup;[I)Ljava/util/List;
    .registers 11

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;->f$2:[I

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;->f$3:Landroid/graphics/Point;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->$r8$lambda$GfQMiQbViuAo-7kM6CborUU4pcM(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;[ILandroid/graphics/Point;ILio/bidmachine/media3/common/TrackGroup;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda3 (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->compareSelections(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda4 (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public final synthetic f$2:Z

.field public final synthetic f$3:[I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Z[I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;->f$2:Z

    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;->f$3:[I

    return-void
.end method


# virtual methods
.method public final create(ILio/bidmachine/media3/common/TrackGroup;[I)Ljava/util/List;
    .registers 11

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;->f$2:Z

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;->f$3:[I

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->$r8$lambda$R-yt9OrbKk0qJrgZyHptUQkJsSU(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Z[IILio/bidmachine/media3/common/TrackGroup;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda5 (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->compareSelections(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda6 (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    return-void
.end method


# virtual methods
.method public final create(ILio/bidmachine/media3/common/TrackGroup;[I)Ljava/util/List;
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-static {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->$r8$lambda$UfFAU3-J0R2XpdvyMPBOLq_dJas(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILio/bidmachine/media3/common/TrackGroup;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda7 (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda7)
.class public final synthetic Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->compareSelections(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda8 (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda8)
.class public final synthetic Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->$r8$lambda$HHzQGHbie5sn1xOSrzUQP5wcL8g(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda9 (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$$ExternalSyntheticLambda9)
.class public final synthetic Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Predicate;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda9;->f$0:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda9;->f$1:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda9;->f$0:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda9;->f$1:Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    check-cast p1, Lio/bidmachine/media3/common/Format;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;->$r8$lambda$aPT-6Bhk1ON0rL_H_c1wrrvlBY8(Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Lio/bidmachine/media3/common/Format;)Z

    move-result p1

    return p1
.end method
