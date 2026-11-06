###### Class io.bidmachine.media3.exoplayer.hls.HlsTrackMetadataEntry (io.bidmachine.media3.exoplayer.hls.HlsTrackMetadataEntry)
.class public final Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;
.super Ljava/lang/Object;
.source "HlsTrackMetadataEntry.java"

# interfaces
.implements Lio/bidmachine/media3/common/Metadata$Entry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;
    }
.end annotation


# instance fields
.field public final groupId:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final variantInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;",
            ">;)V"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;->groupId:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;->name:Ljava/lang/String;

    .line 150
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

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

    if-eqz p1, :cond_31

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;

    if-eq v3, v2, :cond_10

    goto :goto_31

    .line 167
    :cond_10
    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;

    .line 168
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;->groupId:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;->groupId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;->name:Ljava/lang/String;

    .line 169
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    .line 170
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    return v0

    :cond_31
    :goto_31
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 175
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;->groupId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 176
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;->name:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 177
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HlsTrackMetadataEntry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;->groupId:Ljava/lang/String;

    if-eqz v1, :cond_31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;->groupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_33

    :cond_31
    const-string v1, ""

    :goto_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.hls.HlsTrackMetadataEntry.VariantInfo (io.bidmachine.media3.exoplayer.hls.HlsTrackMetadataEntry$VariantInfo)
.class public final Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;
.super Ljava/lang/Object;
.source "HlsTrackMetadataEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VariantInfo"
.end annotation


# instance fields
.field public final audioGroupId:Ljava/lang/String;

.field public final averageBitrate:I

.field public final captionGroupId:Ljava/lang/String;

.field public final peakBitrate:I

.field public final subtitleGroupId:Ljava/lang/String;

.field public final videoGroupId:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->averageBitrate:I

    .line 85
    iput p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->peakBitrate:I

    .line 86
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->videoGroupId:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->audioGroupId:Ljava/lang/String;

    .line 88
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->subtitleGroupId:Ljava/lang/String;

    .line 89
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->captionGroupId:Ljava/lang/String;

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

    if-eqz p1, :cond_47

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;

    if-eq v3, v2, :cond_10

    goto :goto_47

    .line 100
    :cond_10
    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;

    .line 101
    iget v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->averageBitrate:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->averageBitrate:I

    if-ne v2, v3, :cond_47

    iget v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->peakBitrate:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->peakBitrate:I

    if-ne v2, v3, :cond_47

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->videoGroupId:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->videoGroupId:Ljava/lang/String;

    .line 103
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->audioGroupId:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->audioGroupId:Ljava/lang/String;

    .line 104
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->subtitleGroupId:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->subtitleGroupId:Ljava/lang/String;

    .line 105
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->captionGroupId:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->captionGroupId:Ljava/lang/String;

    .line 106
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_47

    return v0

    :cond_47
    :goto_47
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 111
    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->averageBitrate:I

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->peakBitrate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->videoGroupId:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->audioGroupId:Ljava/lang/String;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->subtitleGroupId:Ljava/lang/String;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2e

    :cond_2d
    move v1, v2

    :goto_2e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 116
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->captionGroupId:Ljava/lang/String;

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_39
    add-int/2addr v0, v2

    return v0
.end method
