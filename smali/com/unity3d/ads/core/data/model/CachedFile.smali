###### Class com.unity3d.ads.core.data.model.CachedFile (com.unity3d.ads.core.data.model.CachedFile)
.class public final Lcom/unity3d/ads/core/data/model/CachedFile;
.super Ljava/lang/Object;
.source "CachedFile.kt"


# instance fields
.field private final contentLength:J

.field private final extension:Ljava/lang/String;

.field private final file:Ljava/io/File;

.field private final name:Ljava/lang/String;

.field private final priority:I

.field private final protocol:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLjava/lang/String;I)V
    .registers 10

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->url:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->name:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->file:Ljava/io/File;

    .line 9
    iput-object p4, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->extension:Ljava/lang/String;

    .line 10
    iput-wide p5, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->contentLength:J

    .line 11
    iput-object p7, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->protocol:Ljava/lang/String;

    .line 12
    iput p8, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->priority:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 20

    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_5

    const/4 p3, 0x0

    :cond_5
    move-object v3, p3

    and-int/lit8 p3, p9, 0x8

    .line 5
    const-string v0, ""

    if-eqz p3, :cond_e

    move-object v4, v0

    goto :goto_f

    :cond_e
    move-object v4, p4

    :goto_f
    and-int/lit8 p3, p9, 0x10

    if-eqz p3, :cond_17

    const-wide/16 p3, -0x1

    move-wide v5, p3

    goto :goto_18

    :cond_17
    move-wide v5, p5

    :goto_18
    and-int/lit8 p3, p9, 0x20

    if-eqz p3, :cond_1e

    move-object v7, v0

    goto :goto_20

    :cond_1e
    move-object/from16 v7, p7

    :goto_20
    and-int/lit8 p3, p9, 0x40

    if-eqz p3, :cond_2c

    const p3, 0x7fffffff

    move v8, p3

    :goto_28
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    goto :goto_2f

    :cond_2c
    move/from16 v8, p8

    goto :goto_28

    :goto_2f
    invoke-direct/range {v0 .. v8}, Lcom/unity3d/ads/core/data/model/CachedFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/data/model/CachedFile;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLjava/lang/String;IILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/CachedFile;
    .registers 11

    .line 0
    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->url:Ljava/lang/String;

    :cond_6
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_c

    iget-object p2, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->name:Ljava/lang/String;

    :cond_c
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_12

    iget-object p3, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->file:Ljava/io/File;

    :cond_12
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_18

    iget-object p4, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->extension:Ljava/lang/String;

    :cond_18
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_1e

    iget-wide p5, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->contentLength:J

    :cond_1e
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_24

    iget-object p7, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->protocol:Ljava/lang/String;

    :cond_24
    and-int/lit8 p9, p9, 0x40

    if-eqz p9, :cond_2a

    iget p8, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->priority:I

    :cond_2a
    move-object p9, p7

    move p10, p8

    move-wide p7, p5

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p10}, Lcom/unity3d/ads/core/data/model/CachedFile;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLjava/lang/String;I)Lcom/unity3d/ads/core/data/model/CachedFile;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/io/File;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->contentLength:J

    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->priority:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLjava/lang/String;I)Lcom/unity3d/ads/core/data/model/CachedFile;
    .registers 19

    .line 0
    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/unity3d/ads/core/data/model/CachedFile;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/unity3d/ads/core/data/model/CachedFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLjava/lang/String;I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/data/model/CachedFile;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/data/model/CachedFile;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/CachedFile;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/CachedFile;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->file:Ljava/io/File;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/CachedFile;->file:Ljava/io/File;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->extension:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/CachedFile;->extension:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-wide v3, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->contentLength:J

    iget-wide v5, p1, Lcom/unity3d/ads/core/data/model/CachedFile;->contentLength:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_41

    return v2

    :cond_41
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->protocol:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/CachedFile;->protocol:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    return v2

    :cond_4c
    iget v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->priority:I

    iget p1, p1, Lcom/unity3d/ads/core/data/model/CachedFile;->priority:I

    if-eq v1, p1, :cond_53

    return v2

    :cond_53
    return v0
.end method

.method public final getContentLength()J
    .registers 3

    .line 10
    iget-wide v0, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->contentLength:J

    return-wide v0
.end method

.method public final getExtension()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public final getFile()Ljava/io/File;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->priority:I

    return v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->file:Ljava/io/File;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    move v1, v2

    goto :goto_1c

    :cond_18
    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    :goto_1c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->extension:Ljava/lang/String;

    if-nez v1, :cond_24

    goto :goto_28

    :cond_24
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_28
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->contentLength:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->protocol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CachedFile(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->contentLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unity3d/ads/core/data/model/CachedFile;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
