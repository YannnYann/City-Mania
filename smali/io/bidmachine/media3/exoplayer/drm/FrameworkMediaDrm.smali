###### Class io.bidmachine.media3.exoplayer.drm.FrameworkMediaDrm (io.bidmachine.media3.exoplayer.drm.FrameworkMediaDrm)
.class public final Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$Api31;
    }
.end annotation


# static fields
.field public static final DEFAULT_PROVIDER:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;


# instance fields
.field public final mediaDrm:Landroid/media/MediaDrm;

.field public referenceCount:I

.field public final uuid:Ljava/util/UUID;


# direct methods
.method public static synthetic $r8$lambda$HYWGoNSSIXK2gQSDpZ5MQPR2bjM(Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;Landroid/media/MediaDrm;[BII[B)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p2, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, p3

    move p3, p4

    move p4, p5

    move-object p5, p6

    .line 133
    invoke-interface/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;->onEvent(Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;[BII[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$JVBFhJUA5druhIFn1ekNLE3DUIc(Ljava/util/UUID;)Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;
    .registers 3

    .line 70
    :try_start_0
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;

    move-result-object p0
    :try_end_4
    .catch Lio/bidmachine/media3/exoplayer/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 72
    :catch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to instantiate a FrameworkMediaDrm for uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FrameworkMediaDrm"

    invoke-static {v0, p0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance p0, Lio/bidmachine/media3/exoplayer/drm/DummyExoMediaDrm;

    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/drm/DummyExoMediaDrm;-><init>()V

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->DEFAULT_PROVIDER:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lio/bidmachine/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v2}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 117
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    .line 118
    new-instance v0, Landroid/media/MediaDrm;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 120
    iput v1, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->referenceCount:I

    .line 121
    sget-object v1, Lio/bidmachine/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-static {}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->needsForceWidevineL3Workaround()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 122
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->forceWidevineL3(Landroid/media/MediaDrm;)V

    :cond_33
    return-void
.end method

.method public static addLaUrlAttributeIfMissing([B)[B
    .registers 8

    .line 569
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 572
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    .line 573
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v2

    .line 574
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v3

    .line 575
    const-string v4, "FrameworkMediaDrm"

    const/4 v5, 0x1

    if-ne v2, v5, :cond_83

    if-eq v3, v5, :cond_19

    goto :goto_83

    .line 579
    :cond_19
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v5

    .line 580
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5, v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 581
    const-string v5, "<LA_URL>"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    return-object p0

    .line 586
    :cond_2c
    const-string p0, "</DATA>"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v5, -0x1

    if-ne p0, v5, :cond_3a

    .line 588
    const-string v5, "Could not find the </DATA> tag. Skipping LA_URL workaround."

    invoke-static {v4, v5}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 591
    invoke-virtual {v0, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<LA_URL>https://x</LA_URL>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x34

    .line 595
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 596
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 597
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-short v1, v2

    .line 598
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v1, v3

    .line 599
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 600
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 601
    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 602
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    .line 576
    :cond_83
    :goto_83
    const-string v0, "Unexpected record count or type. Skipping LA_URL workaround."

    invoke-static {v4, v0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static adjustRequestData(Ljava/util/UUID;[B)[B
    .registers 3

    .line 538
    sget-object v0, Lio/bidmachine/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 539
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/drm/ClearKeyUtil;->adjustRequestData([B)[B

    move-result-object p0

    return-object p0

    :cond_d
    return-object p1
.end method

.method public static adjustRequestInitData(Ljava/util/UUID;[B)[B
    .registers 5

    .line 486
    sget-object v0, Lio/bidmachine/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 487
    invoke-static {p1, p0}, Lio/bidmachine/media3/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_10

    :cond_f
    move-object p1, v1

    .line 494
    :goto_10
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->addLaUrlAttributeIfMissing([B)[B

    move-result-object p1

    .line 493
    invoke-static {v0, p1}, Lio/bidmachine/media3/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object p1

    .line 496
    :cond_18
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->cdmRequiresCommonPsshUuid(Ljava/util/UUID;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 497
    invoke-static {p1}, Lio/bidmachine/media3/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Lio/bidmachine/media3/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 499
    sget-object p1, Lio/bidmachine/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    iget-object v2, v1, Lio/bidmachine/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->keyIds:[Ljava/util/UUID;

    iget-object v1, v1, Lio/bidmachine/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->schemeData:[B

    .line 500
    invoke-static {p1, v2, v1}, Lio/bidmachine/media3/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object p1

    .line 511
    :cond_2e
    sget v1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_3c

    sget-object v1, Lio/bidmachine/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 512
    :cond_3c
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    const-string v0, "Amazon"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 514
    const-string v1, "AFTB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "AFTS"

    .line 515
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "AFTM"

    .line 516
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "AFTT"

    .line 517
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 518
    :cond_6e
    invoke-static {p1, p0}, Lio/bidmachine/media3/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object p0

    if-eqz p0, :cond_75

    return-object p0

    :cond_75
    return-object p1
.end method

.method public static adjustRequestMimeType(Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 529
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_21

    sget-object v0, Lio/bidmachine/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 530
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const-string p0, "video/mp4"

    .line 531
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    const-string p0, "audio/mp4"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 532
    :cond_1e
    const-string p0, "cenc"

    return-object p0

    :cond_21
    return-object p1
.end method

.method public static adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;
    .registers 2

    .line 481
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->cdmRequiresCommonPsshUuid(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lio/bidmachine/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    :cond_8
    return-object p0
.end method

.method public static cdmRequiresCommonPsshUuid(Ljava/util/UUID;)Z
    .registers 3

    .line 546
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1b

    if-ge v0, v1, :cond_10

    sget-object v0, Lio/bidmachine/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static forceWidevineL3(Landroid/media/MediaDrm;)V
    .registers 3

    .line 550
    const-string v0, "securityLevel"

    const-string v1, "L3"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getSchemeData(Ljava/util/UUID;Ljava/util/List;)Lio/bidmachine/media3/common/DrmInitData$SchemeData;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;)",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;"
        }
    .end annotation

    .line 427
    sget-object v0, Lio/bidmachine/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_10

    .line 429
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    return-object p0

    .line 432
    :cond_10
    sget p0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    if-lt p0, v1, :cond_7d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v2, :cond_7d

    .line 434
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    move v1, v0

    move v3, v1

    .line 437
    :goto_25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_58

    .line 438
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 439
    iget-object v5, v4, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-static {v5}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 440
    iget-object v6, v4, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object v7, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7d

    iget-object v4, v4, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    iget-object v6, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 441
    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 442
    invoke-static {v5}, Lio/bidmachine/media3/extractor/mp4/PsshAtomUtil;->isPsshAtom([B)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 443
    array-length v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 450
    :cond_58
    new-array v1, v3, [B

    move v2, v0

    move v3, v2

    .line 452
    :goto_5c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_78

    .line 453
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 454
    iget-object v4, v4, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 455
    array-length v5, v4

    .line 456
    invoke-static {v4, v0, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 460
    :cond_78
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->copyWithData([B)Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    move-result-object p0

    return-object p0

    :cond_7d
    move p0, v0

    .line 466
    :goto_7e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_a7

    .line 467
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 468
    iget-object v3, v1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lio/bidmachine/media3/extractor/mp4/PsshAtomUtil;->parseVersion([B)I

    move-result v3

    .line 469
    sget v4, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_9f

    if-nez v3, :cond_9f

    goto :goto_a3

    :cond_9f
    if-lt v4, v5, :cond_a4

    if-ne v3, v2, :cond_a4

    :goto_a3
    return-object v1

    :cond_a4
    add-int/lit8 p0, p0, 0x1

    goto :goto_7e

    .line 477
    :cond_a7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    return-object p0
.end method

.method public static needsForceWidevineL3Workaround()Z
    .registers 2

    .line 559
    const-string v0, "ASUS_Z00AD"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newInstance(Ljava/util/UUID;)Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 106
    :try_start_0
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_5
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception p0

    .line 110
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/UnsupportedDrmException;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lio/bidmachine/media3/exoplayer/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v0

    :catch_e
    move-exception p0

    .line 108
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/UnsupportedDrmException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lio/bidmachine/media3/exoplayer/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public final adjustLicenseServerUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 248
    const-string v0, "<LA_URL>https://x</LA_URL>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_b

    return-object v1

    .line 251
    :cond_b
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_30

    const-string v0, "https://default.url"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 253
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    const-string v2, "1.2"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "aidl-1"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2f
    return-object v1

    :cond_30
    return-object p1
.end method

.method public closeSession([B)V
    .registers 3

    .line 196
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    return-void
.end method

.method public bridge synthetic createCryptoConfig([B)Lio/bidmachine/media3/decoder/CryptoConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->createCryptoConfig([B)Lio/bidmachine/media3/exoplayer/drm/FrameworkCryptoConfig;

    move-result-object p1

    return-object p1
.end method

.method public createCryptoConfig([B)Lio/bidmachine/media3/exoplayer/drm/FrameworkCryptoConfig;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 397
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/FrameworkCryptoConfig;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/drm/FrameworkCryptoConfig;-><init>(Ljava/util/UUID;[B)V

    return-object v0
.end method

.method public getCryptoType()I
    .registers 2

    .line 0
    const/4 v0, 0x2

    return v0
.end method

.method public getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    if-eqz p2, :cond_21

    .line 225
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-static {v0, p2}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->getSchemeData(Ljava/util/UUID;Ljava/util/List;)Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    move-result-object p2

    .line 226
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    iget-object v1, p2, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->adjustRequestInitData(Ljava/util/UUID;[B)[B

    move-result-object v0

    .line 227
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    iget-object v2, p2, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->adjustRequestMimeType(Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    move-object v3, v1

    goto :goto_24

    :cond_21
    const/4 p2, 0x0

    move-object v2, p2

    move-object v3, v2

    .line 229
    :goto_24
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    .line 230
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1

    .line 232
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object p4

    invoke-static {p3, p4}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->adjustRequestData(Ljava/util/UUID;[B)[B

    move-result-object p3

    .line 233
    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->adjustLicenseServerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 234
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    if-eqz p2, :cond_51

    iget-object v0, p2, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 237
    iget-object p4, p2, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 242
    :cond_51
    sget p2, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_5c

    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    move-result p1

    goto :goto_5e

    :cond_5c
    const/high16 p1, -0x80000000

    .line 244
    :goto_5e
    new-instance p2, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    invoke-direct {p2, p3, p4, p1}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;-><init>([BLjava/lang/String;I)V

    return-object p2
.end method

.method public getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 373
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProvisionRequest()Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;
    .registers 4

    .line 276
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 277
    new-instance v1, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public final isMediaDrmRequiresSecureDecoderImplemented()Z
    .registers 3

    .line 413
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    sget-object v1, Lio/bidmachine/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 414
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    const-string v1, "v5."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "14."

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "15."

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "16.0"

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x1

    return v0

    :cond_32
    const/4 v0, 0x0

    return v0

    .line 422
    :cond_34
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    sget-object v1, Lio/bidmachine/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public openSession()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    return-object v0
.end method

.method public provideKeyResponse([B[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 266
    sget-object v0, Lio/bidmachine/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 267
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/drm/ClearKeyUtil;->adjustResponseData([B)[B

    move-result-object p2

    .line 270
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public provideProvisionResponse([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    return-void
.end method

.method public queryKeyStatus([B)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized release()V
    .registers 2

    monitor-enter p0

    .line 329
    :try_start_1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->referenceCount:I

    if-nez v0, :cond_11

    .line 330
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception v0

    goto :goto_13

    .line 332
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_f

    throw v0
.end method

.method public requiresSecureDecoder([BLjava/lang/String;)Z
    .registers 6

    .line 296
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_17

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->isMediaDrmRequiresSecureDecoderImplemented()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 297
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 298
    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaDrm;[B)I

    move-result p1

    invoke-static {v0, p2, p1}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$Api31;->requiresSecureDecoder(Landroid/media/MediaDrm;Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_17
    const/4 v0, 0x0

    .line 302
    :try_start_18
    new-instance v1, Landroid/media/MediaCrypto;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V
    :try_end_23
    .catch Landroid/media/MediaCryptoException; {:try_start_18 .. :try_end_23} :catch_32
    .catchall {:try_start_18 .. :try_end_23} :catchall_30

    .line 303
    :try_start_23
    invoke-virtual {v1, p2}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result p1
    :try_end_27
    .catch Landroid/media/MediaCryptoException; {:try_start_23 .. :try_end_27} :catch_2e
    .catchall {:try_start_23 .. :try_end_27} :catchall_2b

    .line 312
    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V

    return p1

    :catchall_2b
    move-exception p1

    move-object v0, v1

    goto :goto_42

    :catch_2e
    move-object v0, v1

    goto :goto_32

    :catchall_30
    move-exception p1

    goto :goto_42

    .line 309
    :catch_32
    :goto_32
    :try_start_32
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    sget-object p2, Lio/bidmachine/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_30

    xor-int/lit8 p1, p1, 0x1

    if-eqz v0, :cond_41

    .line 312
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    :cond_41
    return p1

    :goto_42
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    .line 314
    :cond_47
    throw p1
.end method

.method public restoreKeys([B[B)V
    .registers 4

    .line 337
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    return-void
.end method

.method public setOnEventListener(Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;)V
    .registers 4

    .line 129
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    .line 132
    :cond_6
    new-instance v1, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;)V

    move-object p1, v1

    .line 129
    :goto_c
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    return-void
.end method

.method public setPlayerIdForSession([BLio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 5

    .line 202
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_13

    .line 204
    :try_start_6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-static {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$Api31;->setLogSessionIdOnMediaDrmSession(Landroid/media/MediaDrm;[BLio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    :try_end_b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_b} :catch_c

    return-void

    .line 206
    :catch_c
    const-string p1, "FrameworkMediaDrm"

    const-string p2, "setLogSessionId failed."

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.FrameworkMediaDrm.Api31 (io.bidmachine.media3.exoplayer.drm.FrameworkMediaDrm$Api31)
.class public Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$Api31;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api31"
.end annotation


# direct methods
.method public static requiresSecureDecoder(Landroid/media/MediaDrm;Ljava/lang/String;I)Z
    .registers 3

    .line 611
    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$Api31$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/MediaDrm;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static setLogSessionIdOnMediaDrmSession(Landroid/media/MediaDrm;[BLio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 4

    .line 616
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->getLogSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object p2

    .line 617
    invoke-static {}, Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31$$ExternalSyntheticApiModelOutline0;->m()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    invoke-static {p2, v0}, Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 619
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$Api31$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaDrm;[B)Landroid/media/MediaDrm$PlaybackComponent;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$Api31$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/media/MediaDrm$PlaybackComponent;

    move-result-object p0

    .line 620
    invoke-static {p0, p2}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$Api31$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/MediaDrm$PlaybackComponent;Landroid/media/metrics/LogSessionId;)V

    :cond_1d
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.FrameworkMediaDrm$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.drm.FrameworkMediaDrm$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acquireExoMediaDrm(Ljava/util/UUID;)Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;
    .registers 2

    .line 0
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->$r8$lambda$JVBFhJUA5druhIFn1ekNLE3DUIc(Ljava/util/UUID;)Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.drm.FrameworkMediaDrm$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.drm.FrameworkMediaDrm$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;

    return-void
.end method


# virtual methods
.method public final onEvent(Landroid/media/MediaDrm;[BII[B)V
    .registers 13

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->$r8$lambda$HYWGoNSSIXK2gQSDpZ5MQPR2bjM(Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;Landroid/media/MediaDrm;[BII[B)V

    return-void
.end method
