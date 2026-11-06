###### Class io.bidmachine.media3.extractor.metadata.icy.IcyHeaders (io.bidmachine.media3.extractor.metadata.icy.IcyHeaders)
.class public final Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;
.super Ljava/lang/Object;
.source "IcyHeaders.java"

# interfaces
.implements Lio/bidmachine/media3/common/Metadata$Entry;


# instance fields
.field public final bitrate:I

.field public final genre:Ljava/lang/String;

.field public final isPublic:Z

.field public final metadataInterval:I

.field public final name:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 8

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-eq p6, v0, :cond_b

    if-lez p6, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 159
    :goto_c
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 160
    iput p1, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->bitrate:I

    .line 161
    iput-object p2, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    .line 163
    iput-object p4, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    .line 164
    iput-boolean p5, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->isPublic:Z

    .line 165
    iput p6, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->metadataInterval:I

    return-void
.end method

.method public static parse(Ljava/util/Map;)Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;"
        }
    .end annotation

    .line 54
    const-string v0, "Invalid metadata interval: "

    .line 62
    const-string v1, "icy-br"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 63
    const-string v2, "IcyHeaders"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v1, :cond_50

    .line 64
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    :try_start_17
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1b} :catch_39

    mul-int/lit16 v6, v6, 0x3e8

    if-lez v6, :cond_21

    move v1, v3

    goto :goto_37

    .line 70
    :cond_21
    :try_start_21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid bitrate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_35} :catch_3a

    move v1, v4

    move v6, v5

    :goto_37
    move v7, v6

    goto :goto_52

    :catch_39
    move v6, v5

    .line 74
    :catch_3a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid bitrate header: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    goto :goto_37

    :cond_50
    move v1, v4

    move v7, v5

    .line 77
    :goto_52
    const-string v6, "icy-genre"

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v8, 0x0

    if-eqz v6, :cond_67

    .line 79
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v6, v8

    move-object v8, v1

    move v1, v3

    goto :goto_68

    :cond_67
    move-object v6, v8

    .line 82
    :goto_68
    const-string v9, "icy-name"

    invoke-interface {p0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-eqz v9, :cond_7b

    .line 84
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v9, v1

    move v1, v3

    goto :goto_7c

    :cond_7b
    move-object v9, v6

    .line 87
    :goto_7c
    const-string v10, "icy-url"

    invoke-interface {p0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_8f

    .line 89
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v10, v1

    move v1, v3

    goto :goto_90

    :cond_8f
    move-object v10, v6

    .line 92
    :goto_90
    const-string v11, "icy-pub"

    invoke-interface {p0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_a9

    .line 94
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v11, v1

    move v1, v3

    goto :goto_aa

    :cond_a9
    move v11, v4

    .line 97
    :goto_aa
    const-string v12, "icy-metaint"

    invoke-interface {p0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_d6

    .line 99
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 101
    :try_start_ba
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_be
    .catch Ljava/lang/NumberFormatException; {:try_start_ba .. :try_end_be} :catch_d9

    if-lez v4, :cond_c2

    move v5, v4

    goto :goto_d5

    .line 105
    :cond_c2
    :try_start_c2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d4
    .catch Ljava/lang/NumberFormatException; {:try_start_c2 .. :try_end_d4} :catch_d8

    move v3, v1

    :goto_d5
    move v1, v3

    :cond_d6
    :goto_d6
    move v12, v5

    goto :goto_ec

    :catch_d8
    move v5, v4

    .line 109
    :catch_d9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d6

    :goto_ec
    if-eqz v1, :cond_f3

    .line 113
    new-instance v6, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;

    invoke-direct/range {v6 .. v12}, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_f3
    move-object v8, v6

    return-object v8
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_43

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;

    if-eq v3, v2, :cond_10

    goto :goto_43

    .line 186
    :cond_10
    check-cast p1, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;

    .line 187
    iget v2, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->bitrate:I

    iget v3, p1, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->bitrate:I

    if-ne v2, v3, :cond_43

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    .line 188
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    .line 189
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    .line 190
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-boolean v2, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->isPublic:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->isPublic:Z

    if-ne v2, v3, :cond_43

    iget v2, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->metadataInterval:I

    iget p1, p1, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->metadataInterval:I

    if-ne v2, p1, :cond_43

    return v0

    :cond_43
    :goto_43
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x20f

    .line 198
    iget v1, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->bitrate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 199
    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 200
    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 201
    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 202
    iget-boolean v1, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->isPublic:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 203
    iget v1, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->metadataInterval:I

    add-int/2addr v0, v1

    return v0
.end method

.method public populateMediaMetadata(Lio/bidmachine/media3/common/MediaMetadata$Builder;)V
    .registers 3

    .line 170
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 171
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setStation(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 173
    :cond_7
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 174
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setGenre(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    :cond_e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IcyHeaders: name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", genre=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", metadataInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
