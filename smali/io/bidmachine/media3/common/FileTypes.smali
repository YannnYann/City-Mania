###### Class io.bidmachine.media3.common.FileTypes (io.bidmachine.media3.common.FileTypes)
.class public final Lio/bidmachine/media3/common/FileTypes;
.super Ljava/lang/Object;
.source "FileTypes.java"


# direct methods
.method public static inferFileTypeFromMimeType(Ljava/lang/String;)I
    .registers 25

    const/16 v2, 0x13

    const/16 v3, 0x12

    const/16 v4, 0x11

    const/16 v5, 0x10

    const/16 v6, 0xf

    const/16 v7, 0xe

    const/16 v8, 0xd

    const/16 v9, 0xc

    const/16 v10, 0xb

    const/16 v11, 0xa

    const/16 v12, 0x9

    const/16 v13, 0x8

    const/4 v14, 0x7

    const/4 v15, 0x6

    const/16 v16, 0x5

    const/16 v17, 0x4

    const/16 v18, 0x3

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, -0x1

    if-nez p0, :cond_29

    return v21

    :cond_29
    const/16 v22, 0x15

    .line 205
    invoke-static/range {p0 .. p0}, Lio/bidmachine/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v23

    sparse-switch v23, :sswitch_data_23c

    move/from16 v0, v21

    const/16 v23, 0x14

    goto/16 :goto_223

    :sswitch_3f
    const/16 v23, 0x14

    const-string v1, "video/x-matroska"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_21e

    :cond_4b
    const/16 v0, 0x1f

    goto/16 :goto_223

    :sswitch_4f
    const/16 v23, 0x14

    const-string v1, "audio/webm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_21e

    :cond_5b
    const/16 v0, 0x1e

    goto/16 :goto_223

    :sswitch_5f
    const/16 v23, 0x14

    const-string v1, "audio/mpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_21e

    :cond_6b
    const/16 v0, 0x1d

    goto/16 :goto_223

    :sswitch_6f
    const/16 v23, 0x14

    const-string v1, "audio/midi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto/16 :goto_21e

    :cond_7b
    const/16 v0, 0x1c

    goto/16 :goto_223

    :sswitch_7f
    const/16 v23, 0x14

    const-string v1, "audio/flac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto/16 :goto_21e

    :cond_8b
    const/16 v0, 0x1b

    goto/16 :goto_223

    :sswitch_8f
    const/16 v23, 0x14

    const-string v1, "audio/eac3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    goto/16 :goto_21e

    :cond_9b
    const/16 v0, 0x1a

    goto/16 :goto_223

    :sswitch_9f
    const/16 v23, 0x14

    const-string v1, "audio/3gpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    goto/16 :goto_21e

    :cond_ab
    const/16 v0, 0x19

    goto/16 :goto_223

    :sswitch_af
    const/16 v23, 0x14

    const-string v1, "video/mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    goto/16 :goto_21e

    :cond_bb
    const/16 v0, 0x18

    goto/16 :goto_223

    :sswitch_bf
    const/16 v23, 0x14

    const-string v1, "audio/wav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    goto/16 :goto_21e

    :cond_cb
    const/16 v0, 0x17

    goto/16 :goto_223

    :sswitch_cf
    const/16 v23, 0x14

    const-string v1, "audio/ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_db

    goto/16 :goto_21e

    :cond_db
    const/16 v0, 0x16

    goto/16 :goto_223

    :sswitch_df
    const/16 v23, 0x14

    const-string v1, "audio/mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_eb

    goto/16 :goto_21e

    :cond_eb
    move/from16 v0, v22

    goto/16 :goto_223

    :sswitch_ef
    const/16 v23, 0x14

    const-string v1, "audio/amr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fb

    goto/16 :goto_21e

    :cond_fb
    move/from16 v0, v23

    goto/16 :goto_223

    :sswitch_ff
    const/16 v23, 0x14

    const-string v1, "audio/ac4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10b

    goto/16 :goto_21e

    :cond_10b
    move v0, v2

    goto/16 :goto_223

    :sswitch_10e
    const/16 v23, 0x14

    const-string v1, "audio/ac3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11a

    goto/16 :goto_21e

    :cond_11a
    move v0, v3

    goto/16 :goto_223

    :sswitch_11d
    const/16 v23, 0x14

    const-string v1, "video/x-flv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_129

    goto/16 :goto_21e

    :cond_129
    move v0, v4

    goto/16 :goto_223

    :sswitch_12c
    const/16 v23, 0x14

    const-string v1, "application/webm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_138

    goto/16 :goto_21e

    :cond_138
    move v0, v5

    goto/16 :goto_223

    :sswitch_13b
    const/16 v23, 0x14

    const-string v1, "audio/x-matroska"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_147

    goto/16 :goto_21e

    :cond_147
    move v0, v6

    goto/16 :goto_223

    :sswitch_14a
    const/16 v23, 0x14

    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_156

    goto/16 :goto_21e

    :cond_156
    move v0, v7

    goto/16 :goto_223

    :sswitch_159
    const/16 v23, 0x14

    const-string v1, "image/bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_165

    goto/16 :goto_21e

    :cond_165
    move v0, v8

    goto/16 :goto_223

    :sswitch_168
    const/16 v23, 0x14

    const-string v1, "text/vtt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_174

    goto/16 :goto_21e

    :cond_174
    move v0, v9

    goto/16 :goto_223

    :sswitch_177
    const/16 v23, 0x14

    const-string v1, "video/x-msvideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_183

    goto/16 :goto_21e

    :cond_183
    move v0, v10

    goto/16 :goto_223

    :sswitch_186
    const/16 v23, 0x14

    const-string v1, "application/mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_192

    goto/16 :goto_21e

    :cond_192
    move v0, v11

    goto/16 :goto_223

    :sswitch_195
    const/16 v23, 0x14

    const-string v1, "image/webp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a1

    goto/16 :goto_21e

    :cond_1a1
    move v0, v12

    goto/16 :goto_223

    :sswitch_1a4
    const/16 v23, 0x14

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b0

    goto/16 :goto_21e

    :cond_1b0
    move v0, v13

    goto/16 :goto_223

    :sswitch_1b3
    const/16 v23, 0x14

    const-string v1, "image/heif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bf

    goto/16 :goto_21e

    :cond_1bf
    move v0, v14

    goto/16 :goto_223

    :sswitch_1c2
    const/16 v23, 0x14

    const-string v1, "image/heic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cd

    goto :goto_21e

    :cond_1cd
    move v0, v15

    goto :goto_223

    :sswitch_1cf
    const/16 v23, 0x14

    const-string v1, "image/avif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1da

    goto :goto_21e

    :cond_1da
    move/from16 v0, v16

    goto :goto_223

    :sswitch_1dd
    const/16 v23, 0x14

    const-string v1, "audio/amr-wb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e8

    goto :goto_21e

    :cond_1e8
    move/from16 v0, v17

    goto :goto_223

    :sswitch_1eb
    const/16 v23, 0x14

    const-string v1, "video/webm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f6

    goto :goto_21e

    :cond_1f6
    move/from16 v0, v18

    goto :goto_223

    :sswitch_1f9
    const/16 v23, 0x14

    const-string v1, "video/mp2t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_204

    goto :goto_21e

    :cond_204
    const/4 v0, 0x2

    goto :goto_223

    :sswitch_206
    const/16 v23, 0x14

    const-string v1, "video/mp2p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_211

    goto :goto_21e

    :cond_211
    move/from16 v0, v19

    goto :goto_223

    :sswitch_214
    const/16 v23, 0x14

    const-string v1, "audio/eac3-joc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_221

    :goto_21e
    move/from16 v0, v21

    goto :goto_223

    :cond_221
    move/from16 v0, v20

    :goto_223
    packed-switch v0, :pswitch_data_2be

    return v21

    :pswitch_227
    return v14

    :pswitch_228
    return v6

    :pswitch_229
    return v17

    :pswitch_22a
    return v9

    :pswitch_22b
    return v12

    :pswitch_22c
    return v19

    :pswitch_22d
    return v16

    :pswitch_22e
    return v4

    :pswitch_22f
    return v2

    :pswitch_230
    return v8

    :pswitch_231
    return v5

    :pswitch_232
    return v13

    :pswitch_233
    return v3

    :pswitch_234
    return v7

    :pswitch_235
    return v23

    :pswitch_236
    return v22

    :pswitch_237
    return v18

    :pswitch_238
    return v15

    :pswitch_239
    return v10

    :pswitch_23a
    return v11

    :pswitch_23b
    return v20

    :sswitch_data_23c
    .sparse-switch
        -0x7e929daa -> :sswitch_214
        -0x6315f78b -> :sswitch_206
        -0x6315f787 -> :sswitch_1f9
        -0x63118f53 -> :sswitch_1eb
        -0x5fc6f775 -> :sswitch_1dd
        -0x58abd7ba -> :sswitch_1cf
        -0x58a8e8f5 -> :sswitch_1c2
        -0x58a8e8f2 -> :sswitch_1b3
        -0x58a7d764 -> :sswitch_1a4
        -0x58a21830 -> :sswitch_195
        -0x4a681e4e -> :sswitch_186
        -0x405dba54 -> :sswitch_177
        -0x3be2f26c -> :sswitch_168
        -0x3468a12f -> :sswitch_159
        -0x34686c8b -> :sswitch_14a
        -0x17118226 -> :sswitch_13b
        -0x2974308 -> :sswitch_12c
        0xd45707 -> :sswitch_11d
        0xb269698 -> :sswitch_10e
        0xb269699 -> :sswitch_ff
        0xb26980d -> :sswitch_ef
        0xb26c538 -> :sswitch_df
        0xb26cbd6 -> :sswitch_cf
        0xb26e933 -> :sswitch_bf
        0x4f62635d -> :sswitch_af
        0x59976a2d -> :sswitch_9f
        0x59ae0c65 -> :sswitch_8f
        0x59aeaa01 -> :sswitch_7f
        0x59b1cdba -> :sswitch_6f
        0x59b1e81e -> :sswitch_5f
        0x59b64a32 -> :sswitch_4f
        0x79909c15 -> :sswitch_3f
    .end sparse-switch

    :pswitch_data_2be
    .packed-switch 0x0
        :pswitch_23b
        :pswitch_23a
        :pswitch_239
        :pswitch_238
        :pswitch_237
        :pswitch_236
        :pswitch_235
        :pswitch_235
        :pswitch_234
        :pswitch_233
        :pswitch_232
        :pswitch_231
        :pswitch_230
        :pswitch_22f
        :pswitch_22e
        :pswitch_238
        :pswitch_238
        :pswitch_22d
        :pswitch_23b
        :pswitch_22c
        :pswitch_237
        :pswitch_232
        :pswitch_22b
        :pswitch_22a
        :pswitch_232
        :pswitch_237
        :pswitch_23b
        :pswitch_229
        :pswitch_228
        :pswitch_227
        :pswitch_238
        :pswitch_238
    .end packed-switch
.end method

.method public static inferFileTypeFromResponseHeaders(Ljava/util/Map;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .line 190
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_19

    .line 192
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    :cond_11
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x0

    .line 193
    :goto_1a
    invoke-static {p0}, Lio/bidmachine/media3/common/FileTypes;->inferFileTypeFromMimeType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static inferFileTypeFromUri(Landroid/net/Uri;)I
    .registers 7

    .line 267
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_8

    return v0

    .line 270
    :cond_8
    const-string v1, ".ac3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b1

    const-string v1, ".ec3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto/16 :goto_1b1

    .line 272
    :cond_1a
    const-string v1, ".ac4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 p0, 0x1

    return p0

    .line 274
    :cond_24
    const-string v1, ".adts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1af

    const-string v1, ".aac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto/16 :goto_1af

    .line 276
    :cond_36
    const-string v1, ".amr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 p0, 0x3

    return p0

    .line 278
    :cond_40
    const-string v1, ".flac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_4a

    return v2

    .line 280
    :cond_4a
    const-string v1, ".flv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_54

    return v3

    .line 282
    :cond_54
    const-string v1, ".mid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1ac

    const-string v1, ".midi"

    .line 283
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1ac

    const-string v1, ".smf"

    .line 284
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    goto/16 :goto_1ac

    .line 288
    :cond_6e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    .line 286
    const-string v4, ".mk"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1aa

    const-string v1, ".webm"

    .line 289
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    goto/16 :goto_1aa

    .line 291
    :cond_85
    const-string v1, ".mp3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    const/4 p0, 0x7

    return p0

    .line 293
    :cond_8f
    const-string v1, ".mp4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a7

    .line 296
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    .line 294
    const-string v5, ".m4"

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1a7

    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 297
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1a7

    .line 302
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    .line 300
    const-string v3, ".cmf"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_be

    goto/16 :goto_1a7

    .line 306
    :cond_be
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    .line 304
    const-string v3, ".og"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1a4

    const-string v1, ".opus"

    .line 307
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d5

    goto/16 :goto_1a4

    .line 309
    :cond_d5
    const-string v1, ".ps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a1

    const-string v1, ".mpeg"

    .line 310
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a1

    const-string v1, ".mpg"

    .line 311
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a1

    const-string v1, ".m2p"

    .line 312
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f7

    goto/16 :goto_1a1

    .line 314
    :cond_f7
    const-string v1, ".ts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19e

    .line 317
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    .line 315
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10c

    goto/16 :goto_19e

    .line 319
    :cond_10c
    const-string v1, ".wav"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19b

    const-string v1, ".wave"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11e

    goto/16 :goto_19b

    .line 321
    :cond_11e
    const-string v1, ".vtt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_198

    const-string v1, ".webvtt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12f

    goto :goto_198

    .line 323
    :cond_12f
    const-string v1, ".jpg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_195

    const-string v1, ".jpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_140

    goto :goto_195

    .line 325
    :cond_140
    const-string v1, ".avi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14b

    const/16 p0, 0x10

    return p0

    .line 327
    :cond_14b
    const-string v1, ".png"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_156

    const/16 p0, 0x11

    return p0

    .line 329
    :cond_156
    const-string v1, ".webp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_161

    const/16 p0, 0x12

    return p0

    .line 331
    :cond_161
    const-string v1, ".bmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_192

    const-string v1, ".dib"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_172

    goto :goto_192

    .line 333
    :cond_172
    const-string v1, ".heic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18f

    const-string v1, ".heif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_183

    goto :goto_18f

    .line 335
    :cond_183
    const-string v1, ".avif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18e

    const/16 p0, 0x15

    return p0

    :cond_18e
    return v0

    :cond_18f
    :goto_18f
    const/16 p0, 0x14

    return p0

    :cond_192
    :goto_192
    const/16 p0, 0x13

    return p0

    :cond_195
    :goto_195
    const/16 p0, 0xe

    return p0

    :cond_198
    :goto_198
    const/16 p0, 0xd

    return p0

    :cond_19b
    :goto_19b
    const/16 p0, 0xc

    return p0

    :cond_19e
    :goto_19e
    const/16 p0, 0xb

    return p0

    :cond_1a1
    :goto_1a1
    const/16 p0, 0xa

    return p0

    :cond_1a4
    :goto_1a4
    const/16 p0, 0x9

    return p0

    :cond_1a7
    :goto_1a7
    const/16 p0, 0x8

    return p0

    :cond_1aa
    :goto_1aa
    const/4 p0, 0x6

    return p0

    :cond_1ac
    :goto_1ac
    const/16 p0, 0xf

    return p0

    :cond_1af
    :goto_1af
    const/4 p0, 0x2

    return p0

    :cond_1b1
    :goto_1b1
    const/4 p0, 0x0

    return p0
.end method
