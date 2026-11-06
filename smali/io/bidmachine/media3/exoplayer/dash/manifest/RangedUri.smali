###### Class io.bidmachine.media3.exoplayer.dash.manifest.RangedUri (io.bidmachine.media3.exoplayer.dash.manifest.RangedUri)
.class public final Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
.super Ljava/lang/Object;
.source "RangedUri.java"


# instance fields
.field public hashCode:I

.field public final length:J

.field public final referenceUri:Ljava/lang/String;

.field public final start:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 6

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    .line 47
    const-string p1, ""

    :cond_7
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    .line 48
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->start:J

    .line 49
    iput-wide p4, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->length:J

    return-void
.end method


# virtual methods
.method public attemptMerge(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
    .registers 15

    .line 87
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->resolveUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p1, :cond_52

    .line 88
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->resolveUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto :goto_52

    .line 90
    :cond_12
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->length:J

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    move-wide v6, v2

    if-eqz p2, :cond_34

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->start:J

    add-long v8, v2, v6

    iget-wide v10, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->start:J

    cmp-long p2, v8, v10

    if-nez p2, :cond_34

    .line 91
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    .line 94
    iget-wide p1, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->length:J

    cmp-long v8, p1, v4

    if-nez v8, :cond_2e

    goto :goto_30

    :cond_2e
    add-long v4, v6, p1

    :goto_30
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v0

    .line 95
    :cond_34
    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->length:J

    cmp-long p2, v2, v4

    if-eqz p2, :cond_52

    iget-wide p1, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->start:J

    add-long v8, p1, v2

    iget-wide v10, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->start:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_52

    .line 96
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    cmp-long v8, v6, v4

    if-nez v8, :cond_4c

    :goto_4a
    move-wide v2, p1

    goto :goto_4f

    :cond_4c
    add-long v4, v2, v6

    goto :goto_4a

    .line 99
    :goto_4f
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    :cond_52
    :goto_52
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    if-eq v3, v2, :cond_10

    goto :goto_2d

    .line 125
    :cond_10
    check-cast p1, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    .line 126
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->start:J

    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->start:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2d

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->length:J

    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->length:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2d

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    .line 128
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 107
    iget v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->hashCode:I

    if-nez v0, :cond_1b

    .line 109
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->start:J

    long-to-int v0, v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 110
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->length:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 111
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 112
    iput v1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->hashCode:I

    .line 114
    :cond_1b
    iget v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->hashCode:I

    return v0
.end method

.method public resolveUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 59
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public resolveUriString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 69
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangedUri(referenceUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->length:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
