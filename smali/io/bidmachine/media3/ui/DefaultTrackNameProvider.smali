###### Class io.bidmachine.media3.ui.DefaultTrackNameProvider (io.bidmachine.media3.ui.DefaultTrackNameProvider)
.class public Lio/bidmachine/media3/ui/DefaultTrackNameProvider;
.super Ljava/lang/Object;
.source "DefaultTrackNameProvider.java"

# interfaces
.implements Lio/bidmachine/media3/ui/TrackNameProvider;


# instance fields
.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method public static inferPrimaryTrackType(Lio/bidmachine/media3/common/Format;)I
    .registers 5

    .line 168
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    return v0

    .line 172
    :cond_a
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/media3/common/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    if-eqz v0, :cond_14

    return v2

    .line 175
    :cond_14
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/media3/common/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1e

    return v3

    .line 178
    :cond_1e
    iget v0, p0, Lio/bidmachine/media3/common/Format;->width:I

    if-ne v0, v1, :cond_32

    iget v0, p0, Lio/bidmachine/media3/common/Format;->height:I

    if-eq v0, v1, :cond_27

    goto :goto_32

    .line 181
    :cond_27
    iget v0, p0, Lio/bidmachine/media3/common/Format;->channelCount:I

    if-ne v0, v1, :cond_31

    iget p0, p0, Lio/bidmachine/media3/common/Format;->sampleRate:I

    if-eq p0, v1, :cond_30

    goto :goto_31

    :cond_30
    return v1

    :cond_31
    :goto_31
    return v3

    :cond_32
    :goto_32
    return v2
.end method


# virtual methods
.method public final buildAudioChannelString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;
    .registers 3

    .line 84
    iget p1, p1, Lio/bidmachine/media3/common/Format;->channelCount:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_45

    const/4 v0, 0x1

    if-ge p1, v0, :cond_9

    goto :goto_45

    :cond_9
    if-eq p1, v0, :cond_3c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_33

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x8

    if-eq p1, v0, :cond_21

    .line 99
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lio/bidmachine/media3/ui/R$string;->exo_track_surround:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 97
    :cond_21
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lio/bidmachine/media3/ui/R$string;->exo_track_surround_7_point_1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 95
    :cond_2a
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lio/bidmachine/media3/ui/R$string;->exo_track_surround_5_point_1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 92
    :cond_33
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lio/bidmachine/media3/ui/R$string;->exo_track_stereo:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 90
    :cond_3c
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lio/bidmachine/media3/ui/R$string;->exo_track_mono:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 86
    :cond_45
    :goto_45
    const-string p1, ""

    return-object p1
.end method

.method public final buildBitrateString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;
    .registers 5

    .line 77
    iget p1, p1, Lio/bidmachine/media3/common/Format;->bitrate:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 79
    const-string p1, ""

    return-object p1

    .line 80
    :cond_8
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lio/bidmachine/media3/ui/R$string;->exo_track_bitrate:I

    int-to-float p1, p1

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final buildLabelString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;
    .registers 3

    .line 110
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, ""

    return-object p1

    :cond_b
    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->label:Ljava/lang/String;

    return-object p1
.end method

.method public final buildLanguageOrLabelString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;
    .registers 4

    .line 105
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->buildLanguageString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->buildRoleString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->buildLabelString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1b
    return-object v0
.end method

.method public final buildLanguageString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;
    .registers 6

    .line 114
    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_48

    const-string v0, "und"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_48

    .line 118
    :cond_13
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    .line 119
    invoke-static {}, Lio/bidmachine/media3/common/util/Util;->getDefaultDisplayLocale()Ljava/util/Locale;

    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    return-object v1

    :cond_26
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    :try_start_28
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_47
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_28 .. :try_end_47} :catch_47

    :catch_47
    return-object p1

    :cond_48
    :goto_48
    return-object v1
.end method

.method public final buildResolutionString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;
    .registers 5

    .line 69
    iget v0, p1, Lio/bidmachine/media3/common/Format;->width:I

    .line 70
    iget p1, p1, Lio/bidmachine/media3/common/Format;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    if-ne p1, v1, :cond_a

    goto :goto_1f

    .line 73
    :cond_a
    iget-object v1, p0, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lio/bidmachine/media3/ui/R$string;->exo_track_resolution:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 72
    :cond_1f
    :goto_1f
    const-string p1, ""

    return-object p1
.end method

.method public final buildRoleString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;
    .registers 5

    .line 137
    iget v0, p1, Lio/bidmachine/media3/common/Format;->roleFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_f

    .line 138
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lio/bidmachine/media3/ui/R$string;->exo_track_role_alternate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 137
    :cond_f
    const-string v0, ""

    .line 140
    :goto_11
    iget v1, p1, Lio/bidmachine/media3/common/Format;->roleFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_27

    .line 141
    iget-object v1, p0, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lio/bidmachine/media3/ui/R$string;->exo_track_role_supplementary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_27
    iget v1, p1, Lio/bidmachine/media3/common/Format;->roleFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3d

    .line 144
    iget-object v1, p0, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lio/bidmachine/media3/ui/R$string;->exo_track_role_commentary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_3d
    iget p1, p1, Lio/bidmachine/media3/common/Format;->roleFlags:I

    and-int/lit16 p1, p1, 0x440

    if-eqz p1, :cond_54

    .line 147
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lio/bidmachine/media3/ui/R$string;->exo_track_role_closed_captions:I

    .line 148
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_54
    return-object v0
.end method

.method public getTrackName(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;
    .registers 5

    .line 45
    invoke-static {p1}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->inferPrimaryTrackType(Lio/bidmachine/media3/common/Format;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 49
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->buildRoleString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->buildResolutionString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->buildBitrateString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    :cond_1c
    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 53
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->buildLanguageOrLabelString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->buildAudioChannelString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->buildBitrateString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 57
    :cond_34
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->buildLanguageOrLabelString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3f

    return-object v0

    .line 62
    :cond_3f
    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    if-eqz p1, :cond_5b

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_5b

    .line 65
    :cond_4e
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lio/bidmachine/media3/ui/R$string;->exo_track_unknown_name:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :cond_5b
    :goto_5b
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lio/bidmachine/media3/ui/R$string;->exo_track_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final varargs joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 155
    array-length v0, p1

    const-string v1, ""

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_25

    aget-object v3, p1, v2

    .line 156
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_22

    .line 157
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object v1, v3

    goto :goto_22

    .line 160
    :cond_16
    iget-object v4, p0, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v5, Lio/bidmachine/media3/ui/R$string;->exo_item_list:I

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_22
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_25
    return-object v1
.end method
