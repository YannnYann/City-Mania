###### Class io.bidmachine.media3.extractor.ts.DefaultTsPayloadReaderFactory (io.bidmachine.media3.extractor.ts.DefaultTsPayloadReaderFactory)
.class public final Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ts/TsPayloadReader$Factory;


# instance fields
.field public final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final flags:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 125
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    .line 140
    iput-object p2, p0, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final buildSeiReader(Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;)Lio/bidmachine/media3/extractor/ts/SeiReader;
    .registers 4

    .line 243
    new-instance v0, Lio/bidmachine/media3/extractor/ts/SeiReader;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p1

    const-string v1, "video/mp2t"

    invoke-direct {v0, p1, v1}, Lio/bidmachine/media3/extractor/ts/SeiReader;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public final buildUserDataReader(Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;)Lio/bidmachine/media3/extractor/ts/UserDataReader;
    .registers 4

    .line 256
    new-instance v0, Lio/bidmachine/media3/extractor/ts/UserDataReader;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p1

    const-string v1, "video/mp2t"

    invoke-direct {v0, p1, v1}, Lio/bidmachine/media3/extractor/ts/UserDataReader;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public createInitialPayloadReaders()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public createPayloadReader(ILio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;)Lio/bidmachine/media3/extractor/ts/TsPayloadReader;
    .registers 8

    const/4 v0, 0x2

    .line 151
    const-string v1, "video/mp2t"

    if-eq p1, v0, :cond_152

    const/4 v2, 0x3

    if-eq p1, v2, :cond_141

    const/4 v2, 0x4

    if-eq p1, v2, :cond_141

    const/16 v3, 0x15

    if-eq p1, v3, :cond_136

    const/16 v3, 0x1b

    const/4 v4, 0x0

    if-eq p1, v3, :cond_115

    const/16 v2, 0x24

    if-eq p1, v2, :cond_106

    const/16 v2, 0x2d

    if-eq p1, v2, :cond_fb

    const/16 v2, 0x59

    if-eq p1, v2, :cond_ee

    const/16 v2, 0xac

    if-eq p1, v2, :cond_dd

    const/16 v2, 0x101

    if-eq p1, v2, :cond_d0

    const/16 v2, 0x8a

    if-eq p1, v2, :cond_bd

    const/16 v2, 0x8b

    if-eq p1, v2, :cond_aa

    packed-switch p1, :pswitch_data_162

    packed-switch p1, :pswitch_data_16c

    packed-switch p1, :pswitch_data_176

    return-object v4

    :pswitch_3a
    const/16 p1, 0x10

    .line 211
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_43

    return-object v4

    .line 213
    :cond_43
    new-instance p1, Lio/bidmachine/media3/extractor/ts/SectionReader;

    new-instance p2, Lio/bidmachine/media3/extractor/ts/PassthroughSectionPayloadReader;

    const-string v0, "application/x-scte35"

    invoke-direct {p2, v0, v1}, Lio/bidmachine/media3/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lio/bidmachine/media3/extractor/ts/SectionReader;-><init>(Lio/bidmachine/media3/extractor/ts/SectionPayloadReader;)V

    return-object p1

    :pswitch_50
    const/16 p1, 0x40

    .line 175
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-nez p1, :cond_bd

    return-object v4

    .line 169
    :pswitch_59
    new-instance p1, Lio/bidmachine/media3/extractor/ts/PesReader;

    new-instance v0, Lio/bidmachine/media3/extractor/ts/Ac3Reader;

    iget-object v2, p2, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    .line 170
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->getRoleFlags()I

    move-result p2

    invoke-direct {v0, v2, p2, v1}, Lio/bidmachine/media3/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lio/bidmachine/media3/extractor/ts/PesReader;-><init>(Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 163
    :pswitch_6a
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_71

    return-object v4

    .line 165
    :cond_71
    new-instance p1, Lio/bidmachine/media3/extractor/ts/PesReader;

    new-instance v0, Lio/bidmachine/media3/extractor/ts/LatmReader;

    iget-object v2, p2, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    .line 166
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->getRoleFlags()I

    move-result p2

    invoke-direct {v0, v2, p2, v1}, Lio/bidmachine/media3/extractor/ts/LatmReader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lio/bidmachine/media3/extractor/ts/PesReader;-><init>(Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 198
    :pswitch_82
    new-instance p1, Lio/bidmachine/media3/extractor/ts/PesReader;

    new-instance v0, Lio/bidmachine/media3/extractor/ts/H263Reader;

    invoke-virtual {p0, p2}, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;)Lio/bidmachine/media3/extractor/ts/UserDataReader;

    move-result-object p2

    invoke-direct {v0, p2, v1}, Lio/bidmachine/media3/extractor/ts/H263Reader;-><init>(Lio/bidmachine/media3/extractor/ts/UserDataReader;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/bidmachine/media3/extractor/ts/PesReader;-><init>(Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 157
    :pswitch_91
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_98

    return-object v4

    .line 159
    :cond_98
    new-instance p1, Lio/bidmachine/media3/extractor/ts/PesReader;

    new-instance v0, Lio/bidmachine/media3/extractor/ts/AdtsReader;

    iget-object v2, p2, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    .line 161
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->getRoleFlags()I

    move-result p2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, p2, v1}, Lio/bidmachine/media3/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lio/bidmachine/media3/extractor/ts/PesReader;-><init>(Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 188
    :cond_aa
    new-instance p1, Lio/bidmachine/media3/extractor/ts/PesReader;

    new-instance v0, Lio/bidmachine/media3/extractor/ts/DtsReader;

    iget-object v2, p2, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    .line 191
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->getRoleFlags()I

    move-result p2

    const/16 v3, 0x1520

    invoke-direct {v0, v2, p2, v3, v1}, Lio/bidmachine/media3/extractor/ts/DtsReader;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-direct {p1, v0}, Lio/bidmachine/media3/extractor/ts/PesReader;-><init>(Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 181
    :cond_bd
    :pswitch_bd
    new-instance p1, Lio/bidmachine/media3/extractor/ts/PesReader;

    new-instance v0, Lio/bidmachine/media3/extractor/ts/DtsReader;

    iget-object v2, p2, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    .line 184
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->getRoleFlags()I

    move-result p2

    const/16 v3, 0x1000

    invoke-direct {v0, v2, p2, v3, v1}, Lio/bidmachine/media3/extractor/ts/DtsReader;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-direct {p1, v0}, Lio/bidmachine/media3/extractor/ts/PesReader;-><init>(Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 222
    :cond_d0
    new-instance p1, Lio/bidmachine/media3/extractor/ts/SectionReader;

    new-instance p2, Lio/bidmachine/media3/extractor/ts/PassthroughSectionPayloadReader;

    const-string v0, "application/vnd.dvb.ait"

    invoke-direct {p2, v0, v1}, Lio/bidmachine/media3/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lio/bidmachine/media3/extractor/ts/SectionReader;-><init>(Lio/bidmachine/media3/extractor/ts/SectionPayloadReader;)V

    return-object p1

    .line 172
    :cond_dd
    new-instance p1, Lio/bidmachine/media3/extractor/ts/PesReader;

    new-instance v0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;

    iget-object v2, p2, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    .line 173
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->getRoleFlags()I

    move-result p2

    invoke-direct {v0, v2, p2, v1}, Lio/bidmachine/media3/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lio/bidmachine/media3/extractor/ts/PesReader;-><init>(Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 220
    :cond_ee
    new-instance p1, Lio/bidmachine/media3/extractor/ts/PesReader;

    new-instance v0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;

    iget-object p2, p2, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    invoke-direct {v0, p2, v1}, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/bidmachine/media3/extractor/ts/PesReader;-><init>(Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 227
    :cond_fb
    new-instance p1, Lio/bidmachine/media3/extractor/ts/PesReader;

    new-instance p2, Lio/bidmachine/media3/extractor/ts/MpeghReader;

    invoke-direct {p2, v1}, Lio/bidmachine/media3/extractor/ts/MpeghReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lio/bidmachine/media3/extractor/ts/PesReader;-><init>(Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 209
    :cond_106
    new-instance p1, Lio/bidmachine/media3/extractor/ts/PesReader;

    new-instance v0, Lio/bidmachine/media3/extractor/ts/H265Reader;

    invoke-virtual {p0, p2}, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;)Lio/bidmachine/media3/extractor/ts/SeiReader;

    move-result-object p2

    invoke-direct {v0, p2, v1}, Lio/bidmachine/media3/extractor/ts/H265Reader;-><init>(Lio/bidmachine/media3/extractor/ts/SeiReader;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/bidmachine/media3/extractor/ts/PesReader;-><init>(Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 200
    :cond_115
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_11c

    return-object v4

    .line 202
    :cond_11c
    new-instance p1, Lio/bidmachine/media3/extractor/ts/PesReader;

    new-instance v0, Lio/bidmachine/media3/extractor/ts/H264Reader;

    .line 204
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;)Lio/bidmachine/media3/extractor/ts/SeiReader;

    move-result-object p2

    const/4 v2, 0x1

    .line 205
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v2

    const/16 v3, 0x8

    .line 206
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v3

    invoke-direct {v0, p2, v2, v3, v1}, Lio/bidmachine/media3/extractor/ts/H264Reader;-><init>(Lio/bidmachine/media3/extractor/ts/SeiReader;ZZLjava/lang/String;)V

    invoke-direct {p1, v0}, Lio/bidmachine/media3/extractor/ts/PesReader;-><init>(Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 218
    :cond_136
    new-instance p1, Lio/bidmachine/media3/extractor/ts/PesReader;

    new-instance p2, Lio/bidmachine/media3/extractor/ts/Id3Reader;

    invoke-direct {p2, v1}, Lio/bidmachine/media3/extractor/ts/Id3Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lio/bidmachine/media3/extractor/ts/PesReader;-><init>(Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 154
    :cond_141
    new-instance p1, Lio/bidmachine/media3/extractor/ts/PesReader;

    new-instance v0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;

    iget-object v2, p2, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    .line 155
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->getRoleFlags()I

    move-result p2

    invoke-direct {v0, v2, p2, v1}, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lio/bidmachine/media3/extractor/ts/PesReader;-><init>(Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 196
    :cond_152
    :pswitch_152
    new-instance p1, Lio/bidmachine/media3/extractor/ts/PesReader;

    new-instance v0, Lio/bidmachine/media3/extractor/ts/H262Reader;

    invoke-virtual {p0, p2}, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;)Lio/bidmachine/media3/extractor/ts/UserDataReader;

    move-result-object p2

    invoke-direct {v0, p2, v1}, Lio/bidmachine/media3/extractor/ts/H262Reader;-><init>(Lio/bidmachine/media3/extractor/ts/UserDataReader;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/bidmachine/media3/extractor/ts/PesReader;-><init>(Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    nop

    :pswitch_data_162
    .packed-switch 0xf
        :pswitch_91
        :pswitch_82
        :pswitch_6a
    .end packed-switch

    :pswitch_data_16c
    .packed-switch 0x80
        :pswitch_152
        :pswitch_59
        :pswitch_50
    .end packed-switch

    :pswitch_data_176
    .packed-switch 0x86
        :pswitch_3a
        :pswitch_59
        :pswitch_bd
    .end packed-switch
.end method

.method public final getClosedCaptionFormats(Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;",
            ")",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x20

    .line 269
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 270
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-object p1

    .line 272
    :cond_b
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object p1, p1, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    invoke-direct {v0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 273
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 274
    :goto_14
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_8e

    .line 275
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 276
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 277
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne v1, v2, :cond_8a

    .line 280
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    move v4, v2

    :goto_38
    if-ge v4, v1, :cond_8a

    const/4 v5, 0x3

    .line 283
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    .line 284
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    const/4 v8, 0x1

    if-eqz v7, :cond_4a

    move v7, v8

    goto :goto_4b

    :cond_4a
    move v7, v2

    :goto_4b
    if-eqz v7, :cond_52

    and-int/lit8 v6, v6, 0x3f

    .line 290
    const-string v9, "application/cea-708"

    goto :goto_55

    .line 293
    :cond_52
    const-string v9, "application/cea-608"

    move v6, v8

    .line 297
    :goto_55
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    int-to-byte v10, v10

    .line 299
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-eqz v7, :cond_6a

    and-int/lit8 v7, v10, 0x40

    if-eqz v7, :cond_64

    goto :goto_65

    :cond_64
    move v8, v2

    .line 306
    :goto_65
    invoke-static {v8}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->buildCea708InitializationData(Z)Ljava/util/List;

    move-result-object v7

    goto :goto_6b

    :cond_6a
    const/4 v7, 0x0

    .line 309
    :goto_6b
    new-instance v8, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v8}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 311
    invoke-virtual {v8, v9}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v8

    .line 312
    invoke-virtual {v8, v5}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    .line 313
    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/Format$Builder;->setAccessibilityChannel(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    .line 314
    invoke-virtual {v5, v7}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    .line 315
    invoke-virtual {v5}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v5

    .line 309
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 320
    :cond_8a
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_14

    :cond_8e
    return-object p1
.end method

.method public final isSet(I)Z
    .registers 3

    .line 327
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method
