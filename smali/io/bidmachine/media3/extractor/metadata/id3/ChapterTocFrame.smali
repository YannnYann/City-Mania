###### Class io.bidmachine.media3.extractor.metadata.id3.ChapterTocFrame (io.bidmachine.media3.extractor.metadata.id3.ChapterTocFrame)
.class public final Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;
.super Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;
.source "ChapterTocFrame.java"


# instance fields
.field public final children:[Ljava/lang/String;

.field public final elementId:Ljava/lang/String;

.field public final isOrdered:Z

.field public final isRoot:Z

.field public final subFrames:[Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;)V
    .registers 7

    .line 41
    const-string v0, "CTOC"

    invoke-direct {p0, v0}, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 43
    iput-boolean p2, p0, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;->isRoot:Z

    .line 44
    iput-boolean p3, p0, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;->isOrdered:Z

    .line 45
    iput-object p4, p0, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;->subFrames:[Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;

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

    if-eqz p1, :cond_3d

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;

    if-eq v3, v2, :cond_10

    goto :goto_3d

    .line 67
    :cond_10
    check-cast p1, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;

    .line 68
    iget-boolean v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;->isRoot:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;->isRoot:Z

    if-ne v2, v3, :cond_3d

    iget-boolean v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;->isOrdered:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;->isOrdered:Z

    if-ne v2, v3, :cond_3d

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 70
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 71
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;->subFrames:[Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;

    iget-object p1, p1, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;->subFrames:[Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;

    .line 72
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    return v0

    :cond_3d
    :goto_3d
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 78
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;->isRoot:Z

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 79
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;->isOrdered:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 80
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    add-int/2addr v1, v0

    return v1
.end method
