###### Class io.bidmachine.util.cache.MediaFileMetadata (io.bidmachine.util.cache.MediaFileMetadata)
.class public final Lio/bidmachine/util/cache/MediaFileMetadata;
.super Ljava/lang/Object;
.source "MediaFileMetadata.kt"


# instance fields
.field public final createdAt:Ljava/util/Date;

.field public final downloadTime:J

.field public final file:Ljava/io/File;

.field public final lastUsedTime:Ljava/util/Date;

.field public final mimeType:Ljava/lang/String;

.field public final pingTime:J

.field public final sizeBytes:J

.field public final usageFrequency:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;JJJJLjava/util/Date;Ljava/util/Date;)V
    .registers 13

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->file:Ljava/io/File;

    .line 9
    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->mimeType:Ljava/lang/String;

    .line 10
    iput-wide p3, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->sizeBytes:J

    .line 11
    iput-wide p5, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->usageFrequency:J

    .line 12
    iput-wide p7, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->pingTime:J

    .line 13
    iput-wide p9, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->downloadTime:J

    .line 14
    iput-object p11, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->lastUsedTime:Ljava/util/Date;

    .line 15
    iput-object p12, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;JJJJLjava/util/Date;Ljava/util/Date;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    .line 0
    invoke-direct/range {p0 .. p12}, Lio/bidmachine/util/cache/MediaFileMetadata;-><init>(Ljava/io/File;Ljava/lang/String;JJJJLjava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public static synthetic copy-77cDFVw$default(Lio/bidmachine/util/cache/MediaFileMetadata;Ljava/io/File;Ljava/lang/String;JJJJLjava/util/Date;Ljava/util/Date;ILjava/lang/Object;)Lio/bidmachine/util/cache/MediaFileMetadata;
    .registers 15

    .line 0
    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_6

    iget-object p1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->file:Ljava/io/File;

    :cond_6
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_c

    iget-object p2, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->mimeType:Ljava/lang/String;

    :cond_c
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_12

    iget-wide p3, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->sizeBytes:J

    :cond_12
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_18

    iget-wide p5, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->usageFrequency:J

    :cond_18
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_1e

    iget-wide p7, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->pingTime:J

    :cond_1e
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_24

    iget-wide p9, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->downloadTime:J

    :cond_24
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_2a

    iget-object p11, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->lastUsedTime:Ljava/util/Date;

    :cond_2a
    and-int/lit16 p13, p13, 0x80

    if-eqz p13, :cond_30

    iget-object p12, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->createdAt:Ljava/util/Date;

    :cond_30
    move-object p13, p11

    move-object p14, p12

    move-wide p11, p9

    move-wide p9, p7

    move-wide p7, p5

    move-wide p5, p3

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p14}, Lio/bidmachine/util/cache/MediaFileMetadata;->copy-77cDFVw(Ljava/io/File;Ljava/lang/String;JJJJLjava/util/Date;Ljava/util/Date;)Lio/bidmachine/util/cache/MediaFileMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy-77cDFVw(Ljava/io/File;Ljava/lang/String;JJJJLjava/util/Date;Ljava/util/Date;)Lio/bidmachine/util/cache/MediaFileMetadata;
    .registers 28

    .line 0
    const-string v0, "file"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeType"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastUsedTime"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lio/bidmachine/util/cache/MediaFileMetadata;

    const/4 v14, 0x0

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v14}, Lio/bidmachine/util/cache/MediaFileMetadata;-><init>(Ljava/io/File;Ljava/lang/String;JJJJLjava/util/Date;Ljava/util/Date;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/util/cache/MediaFileMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/util/cache/MediaFileMetadata;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->file:Ljava/io/File;

    iget-object v3, p1, Lio/bidmachine/util/cache/MediaFileMetadata;->file:Ljava/io/File;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/util/cache/MediaFileMetadata;->mimeType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-wide v3, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->sizeBytes:J

    iget-wide v5, p1, Lio/bidmachine/util/cache/MediaFileMetadata;->sizeBytes:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2b

    return v2

    :cond_2b
    iget-wide v3, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->usageFrequency:J

    iget-wide v5, p1, Lio/bidmachine/util/cache/MediaFileMetadata;->usageFrequency:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_34

    return v2

    :cond_34
    iget-wide v3, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->pingTime:J

    iget-wide v5, p1, Lio/bidmachine/util/cache/MediaFileMetadata;->pingTime:J

    invoke-static {v3, v4, v5, v6}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-wide v3, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->downloadTime:J

    iget-wide v5, p1, Lio/bidmachine/util/cache/MediaFileMetadata;->downloadTime:J

    invoke-static {v3, v4, v5, v6}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4a

    return v2

    :cond_4a
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->lastUsedTime:Ljava/util/Date;

    iget-object v3, p1, Lio/bidmachine/util/cache/MediaFileMetadata;->lastUsedTime:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    return v2

    :cond_55
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->createdAt:Ljava/util/Date;

    iget-object p1, p1, Lio/bidmachine/util/cache/MediaFileMetadata;->createdAt:Ljava/util/Date;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    return v2

    :cond_60
    return v0
.end method

.method public final getCreatedAt()Ljava/util/Date;
    .registers 2

    .line 15
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getDownloadTime-UwyO8pc()J
    .registers 3

    .line 13
    iget-wide v0, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->downloadTime:J

    return-wide v0
.end method

.method public final getFile()Ljava/io/File;
    .registers 2

    .line 8
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->file:Ljava/io/File;

    return-object v0
.end method

.method public final getLastUsedTime()Ljava/util/Date;
    .registers 2

    .line 14
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->lastUsedTime:Ljava/util/Date;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPingTime-UwyO8pc()J
    .registers 3

    .line 12
    iget-wide v0, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->pingTime:J

    return-wide v0
.end method

.method public final getSizeBytes()J
    .registers 3

    .line 10
    iget-wide v0, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->sizeBytes:J

    return-wide v0
.end method

.method public final getUsageFrequency()J
    .registers 3

    .line 11
    iget-wide v0, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->usageFrequency:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->sizeBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->usageFrequency:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->pingTime:J

    invoke-static {v1, v2}, Lkotlin/time/Duration;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->downloadTime:J

    invoke-static {v1, v2}, Lkotlin/time/Duration;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->lastUsedTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->createdAt:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaFileMetadata(file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sizeBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->sizeBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", usageFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->usageFrequency:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->pingTime:J

    invoke-static {v1, v2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->downloadTime:J

    invoke-static {v1, v2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUsedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->lastUsedTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadata;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
