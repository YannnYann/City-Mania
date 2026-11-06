###### Class io.bidmachine.media3.extractor.mp4.MetadataUtil (io.bidmachine.media3.extractor.mp4.MetadataUtil)
.class public final Lio/bidmachine/media3/extractor/mp4/MetadataUtil;
.super Ljava/lang/Object;
.source "MetadataUtil.java"


# direct methods
.method public static findMdtaMetadataEntryWithKey(Lio/bidmachine/media3/common/Metadata;Ljava/lang/String;)Lio/bidmachine/media3/container/MdtaMetadataEntry;
    .registers 5

    const/4 v0, 0x0

    .line 260
    :goto_1
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 261
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/Metadata;->get(I)Lio/bidmachine/media3/common/Metadata$Entry;

    move-result-object v1

    .line 262
    instance-of v2, v1, Lio/bidmachine/media3/container/MdtaMetadataEntry;

    if-eqz v2, :cond_1a

    .line 263
    check-cast v1, Lio/bidmachine/media3/container/MdtaMetadataEntry;

    .line 264
    iget-object v2, v1, Lio/bidmachine/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return-object v1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseCommentAttribute(ILio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/CommentFrame;
    .registers 5

    .line 288
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 289
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x64617461

    if-ne v1, v2, :cond_20

    const/16 p0, 0x8

    .line 291
    invoke-virtual {p1, p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    .line 292
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 293
    new-instance p1, Lio/bidmachine/media3/extractor/metadata/id3/CommentFrame;

    const-string v0, "und"

    invoke-direct {p1, v0, p0, p0}, Lio/bidmachine/media3/extractor/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 295
    :cond_20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse comment attribute: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/bidmachine/media3/container/Mp4Box;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseCoverArt(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;
    .registers 6

    .line 380
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 381
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x64617461

    .line 382
    const-string v3, "MetadataUtil"

    const/4 v4, 0x0

    if-ne v1, v2, :cond_51

    .line 383
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 384
    invoke-static {v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseFullBoxFlags(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1f

    .line 385
    const-string v2, "image/jpeg"

    goto :goto_27

    :cond_1f
    const/16 v2, 0xe

    if-ne v1, v2, :cond_26

    const-string v2, "image/png"

    goto :goto_27

    :cond_26
    move-object v2, v4

    :goto_27
    if-nez v2, :cond_3e

    .line 387
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized cover art flags: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_3e
    const/4 v1, 0x4

    .line 390
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    .line 391
    new-array v1, v0, [B

    const/4 v3, 0x0

    .line 392
    invoke-virtual {p0, v1, v3, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 393
    new-instance p0, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;

    const/4 v0, 0x3

    invoke-direct {p0, v2, v4, v0, v1}, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p0

    .line 399
    :cond_51
    const-string p0, "Failed to parse cover art attribute"

    invoke-static {v3, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static parseIlstElement(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/common/Metadata$Entry;
    .registers 6

    .line 153
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 154
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa9

    if-eq v2, v3, :cond_119

    const/16 v3, 0xfd

    if-ne v2, v3, :cond_1b

    goto/16 :goto_119

    :cond_1b
    const v2, 0x676e7265

    if-ne v1, v2, :cond_2b

    .line 182
    :try_start_20
    invoke-static {p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseStandardGenreAttribute(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :catchall_28
    move-exception v1

    goto/16 :goto_1de

    :cond_2b
    const v2, 0x6469736b

    if-ne v1, v2, :cond_3a

    .line 184
    :try_start_30
    const-string v2, "TPOS"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_3a
    const v2, 0x74726b6e

    if-ne v1, v2, :cond_49

    .line 186
    :try_start_3f
    const-string v2, "TRCK"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_49
    const v2, 0x746d706f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_5a

    .line 188
    :try_start_50
    const-string v2, "TBPM"

    invoke-static {v1, v2, p0, v4, v3}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;ZZ)Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_5a
    const v2, 0x6370696c

    if-ne v1, v2, :cond_69

    .line 190
    :try_start_5f
    const-string v2, "TCMP"

    invoke-static {v1, v2, p0, v4, v4}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;ZZ)Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_69
    const v2, 0x636f7672

    if-ne v1, v2, :cond_76

    .line 192
    :try_start_6e
    invoke-static {p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseCoverArt(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;

    move-result-object v1
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_76
    const v2, 0x61415254

    if-ne v1, v2, :cond_85

    .line 194
    :try_start_7b
    const-string v2, "TPE2"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_85
    const v2, 0x736f6e6d

    if-ne v1, v2, :cond_94

    .line 196
    :try_start_8a
    const-string v2, "TSOT"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_90
    .catchall {:try_start_8a .. :try_end_90} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_94
    const v2, 0x736f616c

    if-ne v1, v2, :cond_a3

    .line 198
    :try_start_99
    const-string v2, "TSOA"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_9f
    .catchall {:try_start_99 .. :try_end_9f} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_a3
    const v2, 0x736f6172

    if-ne v1, v2, :cond_b2

    .line 200
    :try_start_a8
    const-string v2, "TSOP"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_ae
    .catchall {:try_start_a8 .. :try_end_ae} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_b2
    const v2, 0x736f6161

    if-ne v1, v2, :cond_c1

    .line 202
    :try_start_b7
    const-string v2, "TSO2"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_bd
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_c1
    const v2, 0x736f636f

    if-ne v1, v2, :cond_d0

    .line 204
    :try_start_c6
    const-string v2, "TSOC"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_cc
    .catchall {:try_start_c6 .. :try_end_cc} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_d0
    const v2, 0x72746e67

    if-ne v1, v2, :cond_df

    .line 206
    :try_start_d5
    const-string v2, "ITUNESADVISORY"

    invoke-static {v1, v2, p0, v3, v3}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;ZZ)Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_db
    .catchall {:try_start_d5 .. :try_end_db} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_df
    const v2, 0x70676170

    if-ne v1, v2, :cond_ee

    .line 208
    :try_start_e4
    const-string v2, "ITUNESGAPLESS"

    invoke-static {v1, v2, p0, v3, v4}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;ZZ)Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_ea
    .catchall {:try_start_e4 .. :try_end_ea} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_ee
    const v2, 0x736f736e

    if-ne v1, v2, :cond_fd

    .line 210
    :try_start_f3
    const-string v2, "TVSHOWSORT"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_f9
    .catchall {:try_start_f3 .. :try_end_f9} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_fd
    const v2, 0x74767368

    if-ne v1, v2, :cond_10c

    .line 212
    :try_start_102
    const-string v2, "TVSHOW"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_108
    .catchall {:try_start_102 .. :try_end_108} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_10c
    const v2, 0x2d2d2d2d

    if-ne v1, v2, :cond_1ab

    .line 214
    :try_start_111
    invoke-static {p0, v0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseInternalAttribute(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_115
    .catchall {:try_start_111 .. :try_end_115} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_119
    :goto_119
    const v2, 0xffffff

    and-int/2addr v2, v1

    const v3, 0x636d74

    if-ne v2, v3, :cond_12a

    .line 161
    :try_start_122
    invoke-static {v1, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseCommentAttribute(ILio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/CommentFrame;

    move-result-object v1
    :try_end_126
    .catchall {:try_start_122 .. :try_end_126} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_12a
    const v3, 0x6e616d

    if-eq v2, v3, :cond_1d4

    const v3, 0x74726b

    if-ne v2, v3, :cond_136

    goto/16 :goto_1d4

    :cond_136
    const v3, 0x636f6d

    if-eq v2, v3, :cond_1ca

    const v3, 0x777274

    if-ne v2, v3, :cond_142

    goto/16 :goto_1ca

    :cond_142
    const v3, 0x646179

    if-ne v2, v3, :cond_151

    .line 167
    :try_start_147
    const-string v2, "TDRC"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_14d
    .catchall {:try_start_147 .. :try_end_14d} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_151
    const v3, 0x415254

    if-ne v2, v3, :cond_160

    .line 169
    :try_start_156
    const-string v2, "TPE1"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_15c
    .catchall {:try_start_156 .. :try_end_15c} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_160
    const v3, 0x746f6f

    if-ne v2, v3, :cond_16f

    .line 171
    :try_start_165
    const-string v2, "TSSE"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_16b
    .catchall {:try_start_165 .. :try_end_16b} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_16f
    const v3, 0x616c62

    if-ne v2, v3, :cond_17e

    .line 173
    :try_start_174
    const-string v2, "TALB"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_17a
    .catchall {:try_start_174 .. :try_end_17a} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_17e
    const v3, 0x6c7972

    if-ne v2, v3, :cond_18d

    .line 175
    :try_start_183
    const-string v2, "USLT"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_189
    .catchall {:try_start_183 .. :try_end_189} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_18d
    const v3, 0x67656e

    if-ne v2, v3, :cond_19c

    .line 177
    :try_start_192
    const-string v2, "TCON"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_198
    .catchall {:try_start_192 .. :try_end_198} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_19c
    const v3, 0x677270

    if-ne v2, v3, :cond_1ab

    .line 179
    :try_start_1a1
    const-string v2, "TIT1"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1a7
    .catchall {:try_start_1a1 .. :try_end_1a7} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 216
    :cond_1ab
    :try_start_1ab
    const-string v2, "MetadataUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped unknown metadata entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lio/bidmachine/media3/container/Mp4Box;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/bidmachine/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c5
    .catchall {:try_start_1ab .. :try_end_1c5} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 p0, 0x0

    return-object p0

    .line 165
    :cond_1ca
    :goto_1ca
    :try_start_1ca
    const-string v2, "TCOM"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1d0
    .catchall {:try_start_1ca .. :try_end_1d0} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 163
    :cond_1d4
    :goto_1d4
    :try_start_1d4
    const-string v2, "TIT2"

    invoke-static {v1, v2, p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1da
    .catchall {:try_start_1d4 .. :try_end_1da} :catchall_28

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :goto_1de
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 220
    throw v1
.end method

.method public static parseIndexAndCountAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;
    .registers 7

    .line 345
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 346
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_52

    const/16 v1, 0x16

    if-lt v0, v1, :cond_52

    const/16 v0, 0xa

    .line 348
    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 349
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    if-lez v0, :cond_52

    .line 351
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 352
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    if-lez p2, :cond_48

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 356
    :cond_48
    new-instance p2, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    .line 357
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {p2, p1, v3, p0}, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p2

    .line 360
    :cond_52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse index/count attribute: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/bidmachine/media3/container/Mp4Box;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static parseIntegerAttribute(Lio/bidmachine/media3/common/util/ParsableByteArray;)I
    .registers 4

    .line 321
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x64617461

    if-ne v1, v2, :cond_3d

    const/16 v1, 0x8

    .line 324
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_38

    const/4 v1, 0x2

    if-eq v0, v1, :cond_33

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    goto :goto_3d

    .line 333
    :cond_21
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3d

    .line 334
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p0

    return p0

    .line 331
    :cond_2e
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result p0

    return p0

    .line 329
    :cond_33
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    return p0

    .line 327
    :cond_38
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    return p0

    .line 338
    :cond_3d
    :goto_3d
    const-string p0, "MetadataUtil"

    const-string v0, "Failed to parse data atom to int"

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static parseIntegerAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;ZZ)Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;
    .registers 5

    .line 306
    invoke-static {p2}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(Lio/bidmachine/media3/common/util/ParsableByteArray;)I

    move-result p2

    if-eqz p4, :cond_b

    const/4 p4, 0x1

    .line 308
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_b
    const/4 p4, 0x0

    if-ltz p2, :cond_2a

    if-eqz p3, :cond_1e

    .line 312
    new-instance p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    .line 313
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2}, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p0

    .line 314
    :cond_1e
    new-instance p0, Lio/bidmachine/media3/extractor/metadata/id3/CommentFrame;

    const-string p3, "und"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Lio/bidmachine/media3/extractor/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 316
    :cond_2a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse uint8 attribute: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/bidmachine/media3/container/Mp4Box;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4
.end method

.method public static parseInternalAttribute(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    move-object v2, v0

    move-object v3, v2

    move v4, v1

    move v5, v4

    .line 409
    :goto_6
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v6

    if-ge v6, p1, :cond_41

    .line 410
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 411
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 412
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    const/4 v9, 0x4

    .line 413
    invoke-virtual {p0, v9}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const v9, 0x6d65616e

    if-ne v8, v9, :cond_28

    add-int/lit8 v7, v7, -0xc

    .line 415
    invoke-virtual {p0, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_28
    const v9, 0x6e616d65

    if-ne v8, v9, :cond_34

    add-int/lit8 v7, v7, -0xc

    .line 417
    invoke-virtual {p0, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_34
    const v9, 0x64617461

    if-ne v8, v9, :cond_3b

    move v4, v6

    move v5, v7

    :cond_3b
    add-int/lit8 v7, v7, -0xc

    .line 423
    invoke-virtual {p0, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_6

    :cond_41
    if-eqz v2, :cond_5b

    if-eqz v3, :cond_5b

    if-ne v4, v1, :cond_48

    goto :goto_5b

    .line 429
    :cond_48
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/16 p1, 0x10

    .line 430
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v5, p1

    .line 431
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 432
    new-instance p1, Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;

    invoke-direct {p1, v2, v3, p0}, Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_5b
    :goto_5b
    return-object v0
.end method

.method public static parseMdtaMetadataEntryFromIlst(Lio/bidmachine/media3/common/util/ParsableByteArray;ILjava/lang/String;)Lio/bidmachine/media3/container/MdtaMetadataEntry;
    .registers 7

    .line 235
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_2e

    .line 236
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 237
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x64617461

    if-ne v2, v3, :cond_29

    .line 239
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 240
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    add-int/lit8 v1, v1, -0x10

    .line 242
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 243
    invoke-virtual {p0, v2, v3, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 244
    new-instance p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;

    invoke-direct {p0, p2, v2, v0, p1}, Lio/bidmachine/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BII)V

    return-object p0

    :cond_29
    add-int/2addr v0, v1

    .line 246
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseStandardGenreAttribute(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;
    .registers 4

    .line 366
    invoke-static {p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseIntegerAttribute(Lio/bidmachine/media3/common/util/ParsableByteArray;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 369
    invoke-static {p0}, Lio/bidmachine/media3/extractor/metadata/id3/Id3Util;->resolveV1Genre(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_19

    .line 371
    new-instance v1, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    const-string v2, "TCON"

    .line 372
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v1, v2, v0, p0}, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1

    .line 374
    :cond_19
    const-string p0, "MetadataUtil"

    const-string v1, "Failed to parse standard genre code"

    invoke-static {p0, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static parseTextAttribute(ILjava/lang/String;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;
    .registers 7

    .line 275
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 276
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_23

    const/16 p0, 0x8

    .line 278
    invoke-virtual {p2, p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    .line 279
    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 280
    new-instance p2, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {p2, p1, v3, p0}, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p2

    .line 282
    :cond_23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse text attribute: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/bidmachine/media3/container/Mp4Box;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static setFormatGaplessInfo(ILio/bidmachine/media3/extractor/GaplessInfoHolder;Lio/bidmachine/media3/common/Format$Builder;)V
    .registers 4

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    .line 135
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 136
    iget p0, p1, Lio/bidmachine/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 137
    invoke-virtual {p2, p0}, Lio/bidmachine/media3/common/Format$Builder;->setEncoderDelay(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    iget p1, p1, Lio/bidmachine/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 138
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setEncoderPadding(I)Lio/bidmachine/media3/common/Format$Builder;

    :cond_14
    return-void
.end method

.method public static varargs setFormatMetadata(ILio/bidmachine/media3/common/Metadata;Lio/bidmachine/media3/common/Format$Builder;Lio/bidmachine/media3/common/Metadata;[Lio/bidmachine/media3/common/Metadata;)V
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_5

    goto :goto_c

    .line 102
    :cond_5
    new-instance p3, Lio/bidmachine/media3/common/Metadata;

    new-array v2, v1, [Lio/bidmachine/media3/common/Metadata$Entry;

    invoke-direct {p3, v2}, Lio/bidmachine/media3/common/Metadata;-><init>([Lio/bidmachine/media3/common/Metadata$Entry;)V

    :goto_c
    if-eqz p1, :cond_3f

    move v2, v1

    .line 105
    :goto_f
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Metadata;->length()I

    move-result v3

    if-ge v2, v3, :cond_3f

    .line 106
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/common/Metadata;->get(I)Lio/bidmachine/media3/common/Metadata$Entry;

    move-result-object v3

    .line 107
    instance-of v4, v3, Lio/bidmachine/media3/container/MdtaMetadataEntry;

    if-eqz v4, :cond_3d

    .line 108
    check-cast v3, Lio/bidmachine/media3/container/MdtaMetadataEntry;

    .line 110
    iget-object v4, v3, Lio/bidmachine/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    const-string v5, "com.android.capture.fps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    const/4 v4, 0x2

    if-ne p0, v4, :cond_3d

    .line 112
    new-array v4, v0, [Lio/bidmachine/media3/common/Metadata$Entry;

    aput-object v3, v4, v1

    invoke-virtual {p3, v4}, Lio/bidmachine/media3/common/Metadata;->copyWithAppendedEntries([Lio/bidmachine/media3/common/Metadata$Entry;)Lio/bidmachine/media3/common/Metadata;

    move-result-object p3

    goto :goto_3d

    .line 115
    :cond_35
    new-array v4, v0, [Lio/bidmachine/media3/common/Metadata$Entry;

    aput-object v3, v4, v1

    invoke-virtual {p3, v4}, Lio/bidmachine/media3/common/Metadata;->copyWithAppendedEntries([Lio/bidmachine/media3/common/Metadata$Entry;)Lio/bidmachine/media3/common/Metadata;

    move-result-object p3

    :cond_3d
    :goto_3d
    add-int/2addr v2, v0

    goto :goto_f

    .line 121
    :cond_3f
    array-length p0, p4

    :goto_40
    if-ge v1, p0, :cond_4a

    aget-object p1, p4, v1

    .line 122
    invoke-virtual {p3, p1}, Lio/bidmachine/media3/common/Metadata;->copyWithAppendedEntriesFrom(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Metadata;

    move-result-object p3

    add-int/2addr v1, v0

    goto :goto_40

    .line 125
    :cond_4a
    invoke-virtual {p3}, Lio/bidmachine/media3/common/Metadata;->length()I

    move-result p0

    if-lez p0, :cond_53

    .line 126
    invoke-virtual {p2, p3}, Lio/bidmachine/media3/common/Format$Builder;->setMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format$Builder;

    :cond_53
    return-void
.end method
