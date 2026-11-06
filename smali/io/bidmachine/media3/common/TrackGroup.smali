###### Class io.bidmachine.media3.common.TrackGroup (io.bidmachine.media3.common.TrackGroup)
.class public final Lio/bidmachine/media3/common/TrackGroup;
.super Ljava/lang/Object;
.source "TrackGroup.java"


# static fields
.field public static final FIELD_FORMATS:Ljava/lang/String;

.field public static final FIELD_ID:Ljava/lang/String;


# instance fields
.field public final formats:[Lio/bidmachine/media3/common/Format;

.field public hashCode:I

.field public final id:Ljava/lang/String;

.field public final length:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 169
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackGroup;->FIELD_FORMATS:Ljava/lang/String;

    const/4 v0, 0x1

    .line 170
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackGroup;->FIELD_ID:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lio/bidmachine/media3/common/Format;)V
    .registers 5

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 88
    iput-object p1, p0, Lio/bidmachine/media3/common/TrackGroup;->id:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lio/bidmachine/media3/common/TrackGroup;->formats:[Lio/bidmachine/media3/common/Format;

    .line 90
    array-length p1, p2

    iput p1, p0, Lio/bidmachine/media3/common/TrackGroup;->length:I

    .line 91
    aget-object p1, p2, v1

    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lio/bidmachine/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_27

    .line 93
    aget-object p1, p2, v1

    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {p1}, Lio/bidmachine/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    .line 95
    :cond_27
    iput p1, p0, Lio/bidmachine/media3/common/TrackGroup;->type:I

    .line 96
    invoke-virtual {p0}, Lio/bidmachine/media3/common/TrackGroup;->verifyCorrectness()V

    return-void
.end method

.method public varargs constructor <init>([Lio/bidmachine/media3/common/Format;)V
    .registers 3

    .line 76
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lio/bidmachine/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/Format;)V

    return-void
.end method

.method public static logErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 238
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Different "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " combined in one TrackGroup: \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' (track 0) and \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' (track "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string p0, "TrackGroup"

    const-string p1, ""

    invoke-static {p0, p1, v0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_c

    .line 225
    const-string v0, "und"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    return-object p0

    :cond_c
    :goto_c
    const-string p0, ""

    return-object p0
.end method

.method public static normalizeRoleFlags(I)I
    .registers 1

    .line 0
    or-int/lit16 p0, p0, 0x4000

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/TrackGroup;

    if-eq v3, v2, :cond_10

    goto :goto_27

    .line 160
    :cond_10
    check-cast p1, Lio/bidmachine/media3/common/TrackGroup;

    .line 161
    iget-object v2, p0, Lio/bidmachine/media3/common/TrackGroup;->id:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lio/bidmachine/media3/common/TrackGroup;->formats:[Lio/bidmachine/media3/common/Format;

    iget-object p1, p1, Lio/bidmachine/media3/common/TrackGroup;->formats:[Lio/bidmachine/media3/common/Format;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public getFormat(I)Lio/bidmachine/media3/common/Format;
    .registers 3

    .line 119
    iget-object v0, p0, Lio/bidmachine/media3/common/TrackGroup;->formats:[Lio/bidmachine/media3/common/Format;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .registers 3

    .line 143
    iget v0, p0, Lio/bidmachine/media3/common/TrackGroup;->hashCode:I

    if-nez v0, :cond_18

    .line 145
    iget-object v0, p0, Lio/bidmachine/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 146
    iget-object v0, p0, Lio/bidmachine/media3/common/TrackGroup;->formats:[Lio/bidmachine/media3/common/Format;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 147
    iput v1, p0, Lio/bidmachine/media3/common/TrackGroup;->hashCode:I

    .line 149
    :cond_18
    iget v0, p0, Lio/bidmachine/media3/common/TrackGroup;->hashCode:I

    return v0
.end method

.method public indexOf(Lio/bidmachine/media3/common/Format;)I
    .registers 5

    const/4 v0, 0x0

    .line 133
    :goto_1
    iget-object v1, p0, Lio/bidmachine/media3/common/TrackGroup;->formats:[Lio/bidmachine/media3/common/Format;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 134
    aget-object v1, v1, v0

    if-ne p1, v1, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/bidmachine/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/common/TrackGroup;->formats:[Lio/bidmachine/media3/common/Format;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final verifyCorrectness()V
    .registers 7

    .line 201
    iget-object v0, p0, Lio/bidmachine/media3/common/TrackGroup;->formats:[Lio/bidmachine/media3/common/Format;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/media3/common/TrackGroup;->normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v2, p0, Lio/bidmachine/media3/common/TrackGroup;->formats:[Lio/bidmachine/media3/common/Format;

    aget-object v2, v2, v1

    iget v2, v2, Lio/bidmachine/media3/common/Format;->roleFlags:I

    invoke-static {v2}, Lio/bidmachine/media3/common/TrackGroup;->normalizeRoleFlags(I)I

    move-result v2

    const/4 v3, 0x1

    .line 203
    :goto_16
    iget-object v4, p0, Lio/bidmachine/media3/common/TrackGroup;->formats:[Lio/bidmachine/media3/common/Format;

    array-length v5, v4

    if-ge v3, v5, :cond_62

    .line 204
    aget-object v4, v4, v3

    iget-object v4, v4, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v4}, Lio/bidmachine/media3/common/TrackGroup;->normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 205
    iget-object v0, p0, Lio/bidmachine/media3/common/TrackGroup;->formats:[Lio/bidmachine/media3/common/Format;

    aget-object v1, v0, v1

    iget-object v1, v1, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v0, v0, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    const-string v2, "languages"

    invoke-static {v2, v1, v0, v3}, Lio/bidmachine/media3/common/TrackGroup;->logErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 212
    :cond_39
    iget-object v4, p0, Lio/bidmachine/media3/common/TrackGroup;->formats:[Lio/bidmachine/media3/common/Format;

    aget-object v4, v4, v3

    iget v4, v4, Lio/bidmachine/media3/common/Format;->roleFlags:I

    invoke-static {v4}, Lio/bidmachine/media3/common/TrackGroup;->normalizeRoleFlags(I)I

    move-result v4

    if-eq v2, v4, :cond_5f

    .line 213
    iget-object v0, p0, Lio/bidmachine/media3/common/TrackGroup;->formats:[Lio/bidmachine/media3/common/Format;

    aget-object v0, v0, v1

    iget v0, v0, Lio/bidmachine/media3/common/Format;->roleFlags:I

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/common/TrackGroup;->formats:[Lio/bidmachine/media3/common/Format;

    aget-object v1, v1, v3

    iget v1, v1, Lio/bidmachine/media3/common/Format;->roleFlags:I

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    const-string v2, "role flags"

    invoke-static {v2, v0, v1, v3}, Lio/bidmachine/media3/common/TrackGroup;->logErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_62
    return-void
.end method
