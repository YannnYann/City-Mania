###### Class io.bidmachine.media3.common.Metadata (io.bidmachine.media3.common.Metadata)
.class public final Lio/bidmachine/media3/common/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/Metadata$Entry;
    }
.end annotation


# instance fields
.field public final entries:[Lio/bidmachine/media3/common/Metadata$Entry;

.field public final presentationTimeUs:J


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/common/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    new-array v0, v0, [Lio/bidmachine/media3/common/Metadata$Entry;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lio/bidmachine/media3/common/Metadata$Entry;

    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/common/Metadata;-><init>(J[Lio/bidmachine/media3/common/Metadata$Entry;)V

    return-void
.end method

.method public varargs constructor <init>(J[Lio/bidmachine/media3/common/Metadata$Entry;)V
    .registers 4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-wide p1, p0, Lio/bidmachine/media3/common/Metadata;->presentationTimeUs:J

    .line 83
    iput-object p3, p0, Lio/bidmachine/media3/common/Metadata;->entries:[Lio/bidmachine/media3/common/Metadata$Entry;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/common/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    new-array v0, v0, [Lio/bidmachine/media3/common/Metadata$Entry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/bidmachine/media3/common/Metadata$Entry;

    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/Metadata;-><init>([Lio/bidmachine/media3/common/Metadata$Entry;)V

    return-void
.end method

.method public varargs constructor <init>([Lio/bidmachine/media3/common/Metadata$Entry;)V
    .registers 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 74
    invoke-direct {p0, v0, v1, p1}, Lio/bidmachine/media3/common/Metadata;-><init>(J[Lio/bidmachine/media3/common/Metadata$Entry;)V

    return-void
.end method


# virtual methods
.method public varargs copyWithAppendedEntries([Lio/bidmachine/media3/common/Metadata$Entry;)Lio/bidmachine/media3/common/Metadata;
    .registers 6

    .line 138
    array-length v0, p1

    if-nez v0, :cond_4

    return-object p0

    .line 141
    :cond_4
    new-instance v0, Lio/bidmachine/media3/common/Metadata;

    iget-wide v1, p0, Lio/bidmachine/media3/common/Metadata;->presentationTimeUs:J

    iget-object v3, p0, Lio/bidmachine/media3/common/Metadata;->entries:[Lio/bidmachine/media3/common/Metadata$Entry;

    .line 142
    invoke-static {v3, p1}, Lio/bidmachine/media3/common/util/Util;->nullSafeArrayConcatenation([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/bidmachine/media3/common/Metadata$Entry;

    invoke-direct {v0, v1, v2, p1}, Lio/bidmachine/media3/common/Metadata;-><init>(J[Lio/bidmachine/media3/common/Metadata$Entry;)V

    return-object v0
.end method

.method public copyWithAppendedEntriesFrom(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Metadata;
    .registers 2

    if-nez p1, :cond_3

    return-object p0

    .line 128
    :cond_3
    iget-object p1, p1, Lio/bidmachine/media3/common/Metadata;->entries:[Lio/bidmachine/media3/common/Metadata$Entry;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/Metadata;->copyWithAppendedEntries([Lio/bidmachine/media3/common/Metadata$Entry;)Lio/bidmachine/media3/common/Metadata;

    move-result-object p1

    return-object p1
.end method

.method public copyWithPresentationTimeUs(J)Lio/bidmachine/media3/common/Metadata;
    .registers 5

    .line 152
    iget-wide v0, p0, Lio/bidmachine/media3/common/Metadata;->presentationTimeUs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_7

    return-object p0

    .line 155
    :cond_7
    new-instance v0, Lio/bidmachine/media3/common/Metadata;

    iget-object v1, p0, Lio/bidmachine/media3/common/Metadata;->entries:[Lio/bidmachine/media3/common/Metadata$Entry;

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/media3/common/Metadata;-><init>(J[Lio/bidmachine/media3/common/Metadata$Entry;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/Metadata;

    if-eq v3, v2, :cond_10

    goto :goto_25

    .line 166
    :cond_10
    check-cast p1, Lio/bidmachine/media3/common/Metadata;

    .line 167
    iget-object v2, p0, Lio/bidmachine/media3/common/Metadata;->entries:[Lio/bidmachine/media3/common/Metadata$Entry;

    iget-object v3, p1, Lio/bidmachine/media3/common/Metadata;->entries:[Lio/bidmachine/media3/common/Metadata$Entry;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-wide v2, p0, Lio/bidmachine/media3/common/Metadata;->presentationTimeUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/common/Metadata;->presentationTimeUs:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_25

    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public get(I)Lio/bidmachine/media3/common/Metadata$Entry;
    .registers 3

    .line 113
    iget-object v0, p0, Lio/bidmachine/media3/common/Metadata;->entries:[Lio/bidmachine/media3/common/Metadata$Entry;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .registers 4

    .line 172
    iget-object v0, p0, Lio/bidmachine/media3/common/Metadata;->entries:[Lio/bidmachine/media3/common/Metadata$Entry;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 173
    iget-wide v1, p0, Lio/bidmachine/media3/common/Metadata;->presentationTimeUs:J

    invoke-static {v1, v2}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public length()I
    .registers 2

    .line 103
    iget-object v0, p0, Lio/bidmachine/media3/common/Metadata;->entries:[Lio/bidmachine/media3/common/Metadata$Entry;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/common/Metadata;->entries:[Lio/bidmachine/media3/common/Metadata$Entry;

    .line 180
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-wide v1, p0, Lio/bidmachine/media3/common/Metadata;->presentationTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_21

    const-string v1, ""

    goto :goto_34

    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", presentationTimeUs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lio/bidmachine/media3/common/Metadata;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.common.Metadata.Entry (io.bidmachine.media3.common.Metadata$Entry)
.class public interface abstract Lio/bidmachine/media3/common/Metadata$Entry;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Entry"
.end annotation


# virtual methods
.method public getWrappedMetadataBytes()[B
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWrappedMetadataFormat()Lio/bidmachine/media3/common/Format;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public populateMediaMetadata(Lio/bidmachine/media3/common/MediaMetadata$Builder;)V
    .registers 2

    .line 0
    return-void
.end method
