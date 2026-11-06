###### Class io.bidmachine.media3.common.Tracks (io.bidmachine.media3.common.Tracks)
.class public final Lio/bidmachine/media3/common/Tracks;
.super Ljava/lang/Object;
.source "Tracks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/Tracks$Group;
    }
.end annotation


# static fields
.field public static final EMPTY:Lio/bidmachine/media3/common/Tracks;

.field public static final FIELD_TRACK_GROUPS:Ljava/lang/String;


# instance fields
.field public final groups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/Tracks$Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 262
    new-instance v0, Lio/bidmachine/media3/common/Tracks;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/Tracks;-><init>(Ljava/util/List;)V

    sput-object v0, Lio/bidmachine/media3/common/Tracks;->EMPTY:Lio/bidmachine/media3/common/Tracks;

    const/4 v0, 0x0

    .line 374
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Tracks;->FIELD_TRACK_GROUPS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Tracks$Group;",
            ">;)V"
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1a

    .line 362
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/bidmachine/media3/common/Tracks;

    if-eq v1, v0, :cond_f

    goto :goto_1a

    .line 365
    :cond_f
    check-cast p1, Lio/bidmachine/media3/common/Tracks;

    .line 366
    iget-object v0, p0, Lio/bidmachine/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Lio/bidmachine/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public getGroups()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/Tracks$Group;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lio/bidmachine/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 371
    iget-object v0, p0, Lio/bidmachine/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 283
    iget-object v0, p0, Lio/bidmachine/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isTypeSelected(I)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 348
    :goto_2
    iget-object v2, p0, Lio/bidmachine/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 349
    iget-object v2, p0, Lio/bidmachine/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/Tracks$Group;

    .line 350
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Tracks$Group;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Lio/bidmachine/media3/common/Tracks$Group;->getType()I

    move-result v2

    if-ne v2, p1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    return v0
.end method

.method public isTypeSupported(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 301
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/common/Tracks;->isTypeSupported(IZ)Z

    move-result p1

    return p1
.end method

.method public isTypeSupported(IZ)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 316
    :goto_2
    iget-object v2, p0, Lio/bidmachine/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 317
    iget-object v2, p0, Lio/bidmachine/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/Tracks$Group;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/Tracks$Group;->getType()I

    move-result v2

    if-ne v2, p1, :cond_28

    .line 318
    iget-object v2, p0, Lio/bidmachine/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/Tracks$Group;

    invoke-virtual {v2, p2}, Lio/bidmachine/media3/common/Tracks$Group;->isSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 p1, 0x1

    return p1

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2b
    return v0
.end method

###### Class io.bidmachine.media3.common.Tracks.Group (io.bidmachine.media3.common.Tracks$Group)
.class public final Lio/bidmachine/media3/common/Tracks$Group;
.super Ljava/lang/Object;
.source "Tracks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/Tracks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Group"
.end annotation


# static fields
.field public static final FIELD_ADAPTIVE_SUPPORTED:Ljava/lang/String;

.field public static final FIELD_TRACK_GROUP:Ljava/lang/String;

.field public static final FIELD_TRACK_SELECTED:Ljava/lang/String;

.field public static final FIELD_TRACK_SUPPORT:Ljava/lang/String;


# instance fields
.field public final adaptiveSupported:Z

.field public final length:I

.field public final mediaTrackGroup:Lio/bidmachine/media3/common/TrackGroup;

.field public final trackSelected:[Z

.field public final trackSupport:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 230
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Tracks$Group;->FIELD_TRACK_GROUP:Ljava/lang/String;

    const/4 v0, 0x1

    .line 231
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Tracks$Group;->FIELD_TRACK_SUPPORT:Ljava/lang/String;

    const/4 v0, 0x3

    .line 232
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Tracks$Group;->FIELD_TRACK_SELECTED:Ljava/lang/String;

    const/4 v0, 0x4

    .line 233
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Tracks$Group;->FIELD_ADAPTIVE_SUPPORTED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/TrackGroup;Z[I[Z)V
    .registers 9

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iget v0, p1, Lio/bidmachine/media3/common/TrackGroup;->length:I

    iput v0, p0, Lio/bidmachine/media3/common/Tracks$Group;->length:I

    .line 67
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_11

    array-length v1, p4

    if-ne v0, v1, :cond_11

    move v1, v3

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 68
    iput-object p1, p0, Lio/bidmachine/media3/common/Tracks$Group;->mediaTrackGroup:Lio/bidmachine/media3/common/TrackGroup;

    if-eqz p2, :cond_1c

    if-le v0, v3, :cond_1c

    move v2, v3

    .line 69
    :cond_1c
    iput-boolean v2, p0, Lio/bidmachine/media3/common/Tracks$Group;->adaptiveSupported:Z

    .line 70
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lio/bidmachine/media3/common/Tracks$Group;->trackSupport:[I

    .line 71
    invoke-virtual {p4}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Z

    iput-object p1, p0, Lio/bidmachine/media3/common/Tracks$Group;->trackSelected:[Z

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

    if-eqz p1, :cond_37

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/Tracks$Group;

    if-eq v3, v2, :cond_10

    goto :goto_37

    .line 214
    :cond_10
    check-cast p1, Lio/bidmachine/media3/common/Tracks$Group;

    .line 215
    iget-boolean v2, p0, Lio/bidmachine/media3/common/Tracks$Group;->adaptiveSupported:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/Tracks$Group;->adaptiveSupported:Z

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Lio/bidmachine/media3/common/Tracks$Group;->mediaTrackGroup:Lio/bidmachine/media3/common/TrackGroup;

    iget-object v3, p1, Lio/bidmachine/media3/common/Tracks$Group;->mediaTrackGroup:Lio/bidmachine/media3/common/TrackGroup;

    .line 216
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lio/bidmachine/media3/common/Tracks$Group;->trackSupport:[I

    iget-object v3, p1, Lio/bidmachine/media3/common/Tracks$Group;->trackSupport:[I

    .line 217
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lio/bidmachine/media3/common/Tracks$Group;->trackSelected:[Z

    iget-object p1, p1, Lio/bidmachine/media3/common/Tracks$Group;->trackSelected:[Z

    .line 218
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    if-eqz p1, :cond_37

    return v0

    :cond_37
    :goto_37
    return v1
.end method

.method public getMediaTrackGroup()Lio/bidmachine/media3/common/TrackGroup;
    .registers 2

    .line 83
    iget-object v0, p0, Lio/bidmachine/media3/common/Tracks$Group;->mediaTrackGroup:Lio/bidmachine/media3/common/TrackGroup;

    return-object v0
.end method

.method public getTrackFormat(I)Lio/bidmachine/media3/common/Format;
    .registers 3

    .line 93
    iget-object v0, p0, Lio/bidmachine/media3/common/Tracks$Group;->mediaTrackGroup:Lio/bidmachine/media3/common/TrackGroup;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object p1

    return-object p1
.end method

.method public getType()I
    .registers 2

    .line 191
    iget-object v0, p0, Lio/bidmachine/media3/common/Tracks$Group;->mediaTrackGroup:Lio/bidmachine/media3/common/TrackGroup;

    iget v0, v0, Lio/bidmachine/media3/common/TrackGroup;->type:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 223
    iget-object v0, p0, Lio/bidmachine/media3/common/Tracks$Group;->mediaTrackGroup:Lio/bidmachine/media3/common/TrackGroup;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/TrackGroup;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 224
    iget-boolean v1, p0, Lio/bidmachine/media3/common/Tracks$Group;->adaptiveSupported:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 225
    iget-object v1, p0, Lio/bidmachine/media3/common/Tracks$Group;->trackSupport:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 226
    iget-object v1, p0, Lio/bidmachine/media3/common/Tracks$Group;->trackSelected:[Z

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAdaptiveSupported()Z
    .registers 2

    .line 142
    iget-boolean v0, p0, Lio/bidmachine/media3/common/Tracks$Group;->adaptiveSupported:Z

    return v0
.end method

.method public isSelected()Z
    .registers 3

    .line 137
    iget-object v0, p0, Lio/bidmachine/media3/common/Tracks$Group;->trackSelected:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Booleans;->contains([ZZ)Z

    move-result v0

    return v0
.end method

.method public isSupported(Z)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 163
    :goto_2
    iget-object v2, p0, Lio/bidmachine/media3/common/Tracks$Group;->trackSupport:[I

    array-length v2, v2

    if-ge v1, v2, :cond_12

    .line 164
    invoke-virtual {p0, v1, p1}, Lio/bidmachine/media3/common/Tracks$Group;->isTrackSupported(IZ)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return v0
.end method

.method public isTrackSelected(I)Z
    .registers 3

    .line 186
    iget-object v0, p0, Lio/bidmachine/media3/common/Tracks$Group;->trackSelected:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public isTrackSupported(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/common/Tracks$Group;->isTrackSupported(IZ)Z

    move-result p1

    return p1
.end method

.method public isTrackSupported(IZ)Z
    .registers 4

    .line 130
    iget-object v0, p0, Lio/bidmachine/media3/common/Tracks$Group;->trackSupport:[I

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_f

    if-eqz p2, :cond_d

    const/4 p2, 0x3

    if-ne p1, p2, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    return p1
.end method
