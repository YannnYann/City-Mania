###### Class io.bidmachine.media3.container.MdtaMetadataEntry (io.bidmachine.media3.container.MdtaMetadataEntry)
.class public final Lio/bidmachine/media3/container/MdtaMetadataEntry;
.super Ljava/lang/Object;
.source "MdtaMetadataEntry.java"

# interfaces
.implements Lio/bidmachine/media3/common/Metadata$Entry;


# instance fields
.field public final key:Ljava/lang/String;

.field public final localeIndicator:I

.field public final typeIndicator:I

.field public final value:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[BII)V
    .registers 5

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {p1, p2, p4}, Lio/bidmachine/media3/container/MdtaMetadataEntry;->validateData(Ljava/lang/String;[BI)V

    .line 106
    iput-object p1, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->value:[B

    .line 108
    iput p3, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->localeIndicator:I

    .line 109
    iput p4, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->typeIndicator:I

    return-void
.end method

.method public static getFormattedValueForAuxiliaryTracksMap(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    const-string v1, "track types = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 211
    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static validateData(Ljava/lang/String;[BI)V
    .registers 8

    const/4 v0, 0x4

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_7c

    goto :goto_45

    :sswitch_f
    const-string v4, "auxiliary.tracks.map"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_45

    :cond_18
    move v3, v0

    goto :goto_45

    :sswitch_1a
    const-string v4, "auxiliary.tracks.offset"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_45

    :cond_23
    const/4 v3, 0x3

    goto :goto_45

    :sswitch_25
    const-string v4, "auxiliary.tracks.length"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_45

    :cond_2e
    const/4 v3, 0x2

    goto :goto_45

    :sswitch_30
    const-string v4, "auxiliary.tracks.interleaved"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto :goto_45

    :cond_39
    move v3, v2

    goto :goto_45

    :sswitch_3b
    const-string v4, "com.android.capture.fps"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    goto :goto_45

    :cond_44
    move v3, v1

    :goto_45
    packed-switch v3, :pswitch_data_92

    return-void

    :pswitch_49
    if-nez p2, :cond_4c

    move v1, v2

    .line 194
    :cond_4c
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    return-void

    :pswitch_50
    const/16 p0, 0x4e

    if-ne p2, p0, :cond_5a

    .line 191
    array-length p0, p1

    const/16 p1, 0x8

    if-ne p0, p1, :cond_5a

    move v1, v2

    :cond_5a
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    return-void

    :pswitch_5e
    const/16 p0, 0x4b

    if-ne p2, p0, :cond_6c

    .line 197
    array-length p0, p1

    if-ne p0, v2, :cond_6c

    aget-byte p0, p1, v1

    if-eqz p0, :cond_6b

    if-ne p0, v2, :cond_6c

    :cond_6b
    move v1, v2

    :cond_6c
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    return-void

    :pswitch_70
    const/16 p0, 0x17

    if-ne p2, p0, :cond_78

    .line 187
    array-length p0, p1

    if-ne p0, v0, :cond_78

    move v1, v2

    :cond_78
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    return-void

    :sswitch_data_7c
    .sparse-switch
        -0x7438daab -> :sswitch_3b
        -0x100eb5d5 -> :sswitch_30
        0x3c4d37e4 -> :sswitch_25
        0x41766191 -> :sswitch_1a
        0x7755f91e -> :sswitch_f
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_70
        :pswitch_5e
        :pswitch_50
        :pswitch_50
        :pswitch_49
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/container/MdtaMetadataEntry;

    if-eq v3, v2, :cond_10

    goto :goto_33

    .line 135
    :cond_10
    check-cast p1, Lio/bidmachine/media3/container/MdtaMetadataEntry;

    .line 136
    iget-object v2, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->value:[B

    iget-object v3, p1, Lio/bidmachine/media3/container/MdtaMetadataEntry;->value:[B

    .line 137
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_33

    iget v2, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->localeIndicator:I

    iget v3, p1, Lio/bidmachine/media3/container/MdtaMetadataEntry;->localeIndicator:I

    if-ne v2, v3, :cond_33

    iget v2, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->typeIndicator:I

    iget p1, p1, Lio/bidmachine/media3/container/MdtaMetadataEntry;->typeIndicator:I

    if-ne v2, p1, :cond_33

    return v0

    :cond_33
    :goto_33
    return v1
.end method

.method public getAuxiliaryTrackTypesFromMap()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    const-string v1, "auxiliary.tracks.map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Metadata is not an auxiliary tracks map"

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->value:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v0, :cond_2a

    .line 122
    iget-object v3, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->value:[B

    add-int/lit8 v4, v2, 0x2

    aget-byte v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2a
    return-object v1
.end method

.method public hashCode()I
    .registers 3

    .line 145
    iget-object v0, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 146
    iget-object v0, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->value:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 147
    iget v0, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->localeIndicator:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 148
    iget v0, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->typeIndicator:I

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 155
    iget v0, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->typeIndicator:I

    if-eqz v0, :cond_57

    const/4 v1, 0x1

    if-eq v0, v1, :cond_50

    const/16 v1, 0x17

    if-eq v0, v1, :cond_41

    const/16 v1, 0x43

    if-eq v0, v1, :cond_36

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_28

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_18

    goto :goto_6a

    .line 169
    :cond_18
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->value:[B

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_70

    .line 166
    :cond_28
    iget-object v0, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lio/bidmachine/media3/container/MdtaMetadataEntry$$ExternalSyntheticBackport0;->m(B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_70

    .line 163
    :cond_36
    iget-object v0, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->value:[B

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->fromByteArray([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_70

    .line 160
    :cond_41
    iget-object v0, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->value:[B

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->fromByteArray([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_70

    .line 157
    :cond_50
    iget-object v0, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->value:[B

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_70

    .line 172
    :cond_57
    iget-object v0, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    const-string v1, "auxiliary.tracks.map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 173
    invoke-virtual {p0}, Lio/bidmachine/media3/container/MdtaMetadataEntry;->getAuxiliaryTrackTypesFromMap()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/container/MdtaMetadataEntry;->getFormattedValueForAuxiliaryTracksMap(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_70

    .line 178
    :cond_6a
    :goto_6a
    iget-object v0, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->value:[B

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 181
    :goto_70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mdta: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
