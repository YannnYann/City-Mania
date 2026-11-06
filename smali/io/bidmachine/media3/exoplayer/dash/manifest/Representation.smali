###### Class io.bidmachine.media3.exoplayer.dash.manifest.Representation (io.bidmachine.media3.exoplayer.dash.manifest.Representation)
.class public abstract Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;
.super Ljava/lang/Object;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;,
        Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;
    }
.end annotation


# instance fields
.field public final baseUrls:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;"
        }
    .end annotation
.end field

.field public final essentialProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final format:Lio/bidmachine/media3/common/Format;

.field public final inbandEventStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final initializationUri:Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

.field public final presentationTimeOffsetUs:J

.field public final revisionId:J

.field public final supplementalProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/bidmachine/media3/common/Format;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 148
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->revisionId:J

    .line 149
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->format:Lio/bidmachine/media3/common/Format;

    .line 150
    invoke-static {p4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    if-nez p6, :cond_1b

    .line 153
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1f

    .line 154
    :cond_1b
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_1f
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->inbandEventStreams:Ljava/util/List;

    .line 155
    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->essentialProperties:Ljava/util/List;

    .line 156
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->supplementalProperties:Ljava/util/List;

    .line 157
    invoke-virtual {p5, p0}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->getInitialization(Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->initializationUri:Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    .line 158
    invoke-virtual {p5}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->getPresentationTimeOffsetUs()J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->presentationTimeOffsetUs:J

    return-void
.end method

.method public synthetic constructor <init>(JLio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$1;)V
    .registers 10

    .line 35
    invoke-direct/range {p0 .. p8}, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;-><init>(JLio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static newInstance(JLio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/bidmachine/media3/common/Format;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;"
        }
    .end annotation

    move-object/from16 v0, p4

    .line 113
    instance-of v1, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    if-eqz v1, :cond_1e

    .line 114
    new-instance v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;

    move-object v7, v0

    check-cast v7, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    const-wide/16 v12, -0x1

    move-wide v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v13}, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;-><init>(JLio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;J)V

    return-object v2

    .line 124
    :cond_1e
    instance-of v1, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    if-eqz v1, :cond_36

    .line 125
    new-instance v3, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;

    move-object v8, v0

    check-cast v8, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    move-wide v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;-><init>(JLio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v3

    .line 134
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract getCacheKey()Ljava/lang/String;
.end method

.method public abstract getIndex()Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;
.end method

.method public abstract getIndexUri()Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
.end method

.method public getInitializationUri()Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
    .registers 2

    .line 167
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->initializationUri:Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.dash.manifest.Representation.AnonymousClass1 (io.bidmachine.media3.exoplayer.dash.manifest.Representation$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$1;
.super Ljava/lang/Object;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.dash.manifest.Representation.MultiSegmentRepresentation (io.bidmachine.media3.exoplayer.dash.manifest.Representation$MultiSegmentRepresentation)
.class public Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;
.super Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;
.source "Representation.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiSegmentRepresentation"
.end annotation


# instance fields
.field public final segmentBase:Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;


# direct methods
.method public constructor <init>(JLio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/bidmachine/media3/common/Format;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 321
    invoke-direct/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;-><init>(JLio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$1;)V

    .line 329
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    return-void
.end method


# virtual methods
.method public getAvailableSegmentCount(JJ)J
    .registers 6

    .line 388
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getAvailableSegmentCount(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getCacheKey()Ljava/lang/String;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDurationUs(JJ)J
    .registers 6

    .line 368
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentDurationUs(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getFirstAvailableSegmentNum(JJ)J
    .registers 6

    .line 378
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getFirstSegmentNum()J
    .registers 3

    .line 373
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIndex()Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;
    .registers 1

    .line 0
    return-object p0
.end method

.method public getIndexUri()Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextSegmentAvailableTimeUs(JJ)J
    .registers 6

    .line 393
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getNextSegmentAvailableTimeUs(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getSegmentCount(J)J
    .registers 4

    .line 383
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getSegmentNum(JJ)J
    .registers 6

    .line 358
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentNum(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getSegmentUrl(J)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
    .registers 4

    .line 353
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentUrl(Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;J)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object p1

    return-object p1
.end method

.method public getTimeUs(J)J
    .registers 4

    .line 363
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public isExplicit()Z
    .registers 2

    .line 398
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->isExplicit()Z

    move-result v0

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.dash.manifest.Representation.SingleSegmentRepresentation (io.bidmachine.media3.exoplayer.dash.manifest.Representation$SingleSegmentRepresentation)
.class public Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;
.super Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleSegmentRepresentation"
.end annotation


# instance fields
.field public final cacheKey:Ljava/lang/String;

.field public final contentLength:J

.field public final indexUri:Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

.field public final segmentIndex:Lio/bidmachine/media3/exoplayer/dash/manifest/SingleSegmentIndex;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JLio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;J)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/bidmachine/media3/common/Format;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 259
    invoke-direct/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;-><init>(JLio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$1;)V

    const/4 p1, 0x0

    .line 267
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->uri:Landroid/net/Uri;

    .line 268
    invoke-virtual {p5}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;->getIndex()Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->indexUri:Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-object/from16 p2, p9

    .line 269
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->cacheKey:Ljava/lang/String;

    move-wide/from16 p2, p10

    .line 270
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->contentLength:J

    if-eqz p1, :cond_30

    const/4 p1, 0x0

    goto :goto_42

    .line 274
    :cond_30
    new-instance p1, Lio/bidmachine/media3/exoplayer/dash/manifest/SingleSegmentIndex;

    new-instance p4, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    const/4 p5, 0x0

    const-wide/16 v1, 0x0

    move-wide/from16 p6, p2

    move-object p2, p4

    move-object p3, p5

    move-wide p4, v1

    invoke-direct/range {p2 .. p7}, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {p1, p2}, Lio/bidmachine/media3/exoplayer/dash/manifest/SingleSegmentIndex;-><init>(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;)V

    :goto_42
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->segmentIndex:Lio/bidmachine/media3/exoplayer/dash/manifest/SingleSegmentIndex;

    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .registers 2

    .line 292
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;
    .registers 2

    .line 286
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->segmentIndex:Lio/bidmachine/media3/exoplayer/dash/manifest/SingleSegmentIndex;

    return-object v0
.end method

.method public getIndexUri()Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
    .registers 2

    .line 280
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->indexUri:Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    return-object v0
.end method
