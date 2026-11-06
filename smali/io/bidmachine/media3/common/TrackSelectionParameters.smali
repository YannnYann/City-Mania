###### Class io.bidmachine.media3.common.TrackSelectionParameters (io.bidmachine.media3.common.TrackSelectionParameters)
.class public Lio/bidmachine/media3/common/TrackSelectionParameters;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;,
        Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/common/TrackSelectionParameters;

.field public static final DEFAULT_WITHOUT_CONTEXT:Lio/bidmachine/media3/common/TrackSelectionParameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FIELD_AUDIO_OFFLOAD_MODE_PREFERENCE:Ljava/lang/String;

.field public static final FIELD_AUDIO_OFFLOAD_PREFERENCES:Ljava/lang/String;

.field public static final FIELD_DISABLED_TRACK_TYPE:Ljava/lang/String;

.field public static final FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE:Ljava/lang/String;

.field public static final FIELD_FORCE_LOWEST_BITRATE:Ljava/lang/String;

.field public static final FIELD_IGNORED_TEXT_SELECTION_FLAGS:Ljava/lang/String;

.field public static final FIELD_IS_GAPLESS_SUPPORT_REQUIRED:Ljava/lang/String;

.field public static final FIELD_IS_PREFER_IMAGE_OVER_VIDEO_ENABLED:Ljava/lang/String;

.field public static final FIELD_IS_SPEED_CHANGE_SUPPORT_REQUIRED:Ljava/lang/String;

.field public static final FIELD_IS_VIEWPORT_SIZE_LIMITED_BY_PHYSICAL_DISPLAY_SIZE:Ljava/lang/String;

.field public static final FIELD_MAX_AUDIO_BITRATE:Ljava/lang/String;

.field public static final FIELD_MAX_AUDIO_CHANNEL_COUNT:Ljava/lang/String;

.field public static final FIELD_MAX_VIDEO_BITRATE:Ljava/lang/String;

.field public static final FIELD_MAX_VIDEO_FRAMERATE:Ljava/lang/String;

.field public static final FIELD_MAX_VIDEO_HEIGHT:Ljava/lang/String;

.field public static final FIELD_MAX_VIDEO_WIDTH:Ljava/lang/String;

.field public static final FIELD_MIN_VIDEO_BITRATE:Ljava/lang/String;

.field public static final FIELD_MIN_VIDEO_FRAMERATE:Ljava/lang/String;

.field public static final FIELD_MIN_VIDEO_HEIGHT:Ljava/lang/String;

.field public static final FIELD_MIN_VIDEO_WIDTH:Ljava/lang/String;

.field public static final FIELD_PREFERRED_AUDIO_LANGUAGES:Ljava/lang/String;

.field public static final FIELD_PREFERRED_AUDIO_MIME_TYPES:Ljava/lang/String;

.field public static final FIELD_PREFERRED_AUDIO_ROLE_FLAGS:Ljava/lang/String;

.field public static final FIELD_PREFERRED_TEXT_LANGUAGES:Ljava/lang/String;

.field public static final FIELD_PREFERRED_TEXT_ROLE_FLAGS:Ljava/lang/String;

.field public static final FIELD_PREFERRED_VIDEO_LANGUAGES:Ljava/lang/String;

.field public static final FIELD_PREFERRED_VIDEO_MIMETYPES:Ljava/lang/String;

.field public static final FIELD_PREFERRED_VIDEO_ROLE_FLAGS:Ljava/lang/String;

.field public static final FIELD_SELECTION_OVERRIDES:Ljava/lang/String;

.field public static final FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE:Ljava/lang/String;

.field public static final FIELD_USE_PREFERRED_TEXT_LANGUAGES_AND_ROLE_FLAGS_FROM_CAPTIONING_MANAGER:Ljava/lang/String;

.field public static final FIELD_VIEWPORT_HEIGHT:Ljava/lang/String;

.field public static final FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE:Ljava/lang/String;

.field public static final FIELD_VIEWPORT_WIDTH:Ljava/lang/String;


# instance fields
.field public final audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

.field public final disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final forceHighestSupportedBitrate:Z

.field public final forceLowestBitrate:Z

.field public final ignoredTextSelectionFlags:I

.field public final isPrioritizeImageOverVideoEnabled:Z

.field public final isViewportSizeLimitedByPhysicalDisplaySize:Z

.field public final maxAudioBitrate:I

.field public final maxAudioChannelCount:I

.field public final maxVideoBitrate:I

.field public final maxVideoFrameRate:I

.field public final maxVideoHeight:I

.field public final maxVideoWidth:I

.field public final minVideoBitrate:I

.field public final minVideoFrameRate:I

.field public final minVideoHeight:I

.field public final minVideoWidth:I

.field public final overrides:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Lio/bidmachine/media3/common/TrackGroup;",
            "Lio/bidmachine/media3/common/TrackSelectionOverride;",
            ">;"
        }
    .end annotation
.end field

.field public final preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final preferredAudioRoleFlags:I

.field public final preferredTextLanguages:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final preferredTextRoleFlags:I

.field public final preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final preferredVideoRoleFlags:I

.field public final selectUndeterminedTextLanguage:Z

.field public final usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

.field public final viewportHeight:I

.field public final viewportOrientationMayChange:Z

.field public final viewportWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1086
    new-instance v0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;-><init>()V

    invoke-virtual {v0}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->build()Lio/bidmachine/media3/common/TrackSelectionParameters;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->DEFAULT:Lio/bidmachine/media3/common/TrackSelectionParameters;

    .line 1092
    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lio/bidmachine/media3/common/TrackSelectionParameters;

    const/4 v0, 0x1

    .line 1436
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_AUDIO_LANGUAGES:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1437
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_AUDIO_ROLE_FLAGS:Ljava/lang/String;

    const/4 v0, 0x3

    .line 1438
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_TEXT_LANGUAGES:Ljava/lang/String;

    const/4 v0, 0x4

    .line 1439
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_TEXT_ROLE_FLAGS:Ljava/lang/String;

    const/4 v0, 0x5

    .line 1440
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE:Ljava/lang/String;

    const/4 v0, 0x6

    .line 1441
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_MAX_VIDEO_WIDTH:Ljava/lang/String;

    const/4 v0, 0x7

    .line 1442
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_MAX_VIDEO_HEIGHT:Ljava/lang/String;

    const/16 v0, 0x8

    .line 1443
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_MAX_VIDEO_FRAMERATE:Ljava/lang/String;

    const/16 v0, 0x9

    .line 1444
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_MAX_VIDEO_BITRATE:Ljava/lang/String;

    const/16 v0, 0xa

    .line 1445
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_MIN_VIDEO_WIDTH:Ljava/lang/String;

    const/16 v0, 0xb

    .line 1446
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_MIN_VIDEO_HEIGHT:Ljava/lang/String;

    const/16 v0, 0xc

    .line 1447
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_MIN_VIDEO_FRAMERATE:Ljava/lang/String;

    const/16 v0, 0xd

    .line 1448
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_MIN_VIDEO_BITRATE:Ljava/lang/String;

    const/16 v0, 0xe

    .line 1449
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_VIEWPORT_WIDTH:Ljava/lang/String;

    const/16 v0, 0xf

    .line 1450
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_VIEWPORT_HEIGHT:Ljava/lang/String;

    const/16 v0, 0x10

    .line 1451
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE:Ljava/lang/String;

    const/16 v0, 0x11

    .line 1452
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_VIDEO_MIMETYPES:Ljava/lang/String;

    const/16 v0, 0x12

    .line 1453
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_MAX_AUDIO_CHANNEL_COUNT:Ljava/lang/String;

    const/16 v0, 0x13

    .line 1454
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_MAX_AUDIO_BITRATE:Ljava/lang/String;

    const/16 v0, 0x14

    .line 1455
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_AUDIO_MIME_TYPES:Ljava/lang/String;

    const/16 v0, 0x15

    .line 1456
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_FORCE_LOWEST_BITRATE:Ljava/lang/String;

    const/16 v0, 0x16

    .line 1457
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE:Ljava/lang/String;

    const/16 v0, 0x17

    .line 1458
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_SELECTION_OVERRIDES:Ljava/lang/String;

    const/16 v0, 0x18

    .line 1459
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_DISABLED_TRACK_TYPE:Ljava/lang/String;

    const/16 v0, 0x19

    .line 1460
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_VIDEO_ROLE_FLAGS:Ljava/lang/String;

    const/16 v0, 0x1a

    .line 1461
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_IGNORED_TEXT_SELECTION_FLAGS:Ljava/lang/String;

    const/16 v0, 0x1b

    .line 1462
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_AUDIO_OFFLOAD_MODE_PREFERENCE:Ljava/lang/String;

    const/16 v0, 0x1c

    .line 1463
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_IS_GAPLESS_SUPPORT_REQUIRED:Ljava/lang/String;

    const/16 v0, 0x1d

    .line 1464
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_IS_SPEED_CHANGE_SUPPORT_REQUIRED:Ljava/lang/String;

    const/16 v0, 0x1e

    .line 1465
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_AUDIO_OFFLOAD_PREFERENCES:Ljava/lang/String;

    const/16 v0, 0x1f

    .line 1467
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_IS_PREFER_IMAGE_OVER_VIDEO_ENABLED:Ljava/lang/String;

    const/16 v0, 0x20

    .line 1468
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_VIDEO_LANGUAGES:Ljava/lang/String;

    const/16 v0, 0x21

    .line 1470
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_IS_VIEWPORT_SIZE_LIMITED_BY_PHYSICAL_DISPLAY_SIZE:Ljava/lang/String;

    const/16 v0, 0x22

    .line 1473
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters;->FIELD_USE_PREFERRED_TEXT_LANGUAGES_AND_ROLE_FLAGS_FROM_CAPTIONING_MANAGER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)V
    .registers 3

    .line 1298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1300
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$3800(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    .line 1301
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$3900(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    .line 1302
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$4000(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    .line 1303
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$4100(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    .line 1304
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$4200(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoWidth:I

    .line 1305
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$4300(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoHeight:I

    .line 1306
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$4400(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoFrameRate:I

    .line 1307
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$4500(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoBitrate:I

    .line 1308
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$4600(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->viewportWidth:I

    .line 1309
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$4700(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->viewportHeight:I

    .line 1311
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$4800(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    .line 1312
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$4900(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->viewportOrientationMayChange:Z

    .line 1313
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$5000(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 1314
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$5100(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    .line 1315
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$5200(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoRoleFlags:I

    .line 1317
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$5300(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    .line 1318
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$5400(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioRoleFlags:I

    .line 1319
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$5500(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxAudioChannelCount:I

    .line 1320
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$5600(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxAudioBitrate:I

    .line 1321
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$5700(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 1322
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$5800(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    .line 1324
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$5900(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    .line 1325
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$6000(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredTextRoleFlags:I

    .line 1327
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$6100(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    .line 1328
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$6200(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    .line 1329
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$6300(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    .line 1331
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$6400(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->isPrioritizeImageOverVideoEnabled:Z

    .line 1333
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$6500(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    .line 1334
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$6600(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    .line 1335
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$6700(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    .line 1336
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->access$6800(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Ljava/util/HashSet;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method


# virtual methods
.method public buildUpon()Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
    .registers 2

    .line 1341
    new-instance v0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;-><init>(Lio/bidmachine/media3/common/TrackSelectionParameters;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_f0

    .line 1350
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_f0

    .line 1353
    :cond_13
    check-cast p1, Lio/bidmachine/media3/common/TrackSelectionParameters;

    .line 1355
    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    iget v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    if-ne v2, v3, :cond_f0

    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    iget v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    if-ne v2, v3, :cond_f0

    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    iget v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    if-ne v2, v3, :cond_f0

    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    iget v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    if-ne v2, v3, :cond_f0

    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoWidth:I

    iget v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoWidth:I

    if-ne v2, v3, :cond_f0

    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoHeight:I

    iget v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoHeight:I

    if-ne v2, v3, :cond_f0

    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoFrameRate:I

    iget v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoFrameRate:I

    if-ne v2, v3, :cond_f0

    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoBitrate:I

    iget v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoBitrate:I

    if-ne v2, v3, :cond_f0

    iget-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->viewportOrientationMayChange:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->viewportOrientationMayChange:Z

    if-ne v2, v3, :cond_f0

    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->viewportWidth:I

    iget v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->viewportWidth:I

    if-ne v2, v3, :cond_f0

    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->viewportHeight:I

    iget v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->viewportHeight:I

    if-ne v2, v3, :cond_f0

    iget-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    if-ne v2, v3, :cond_f0

    iget-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 1368
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    iget-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    .line 1369
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoRoleFlags:I

    iget v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoRoleFlags:I

    if-ne v2, v3, :cond_f0

    iget-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    .line 1372
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioRoleFlags:I

    iget v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioRoleFlags:I

    if-ne v2, v3, :cond_f0

    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxAudioChannelCount:I

    iget v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxAudioChannelCount:I

    if-ne v2, v3, :cond_f0

    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxAudioBitrate:I

    iget v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxAudioBitrate:I

    if-ne v2, v3, :cond_f0

    iget-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 1376
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    iget-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-object v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    .line 1377
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    iget-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    .line 1379
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredTextRoleFlags:I

    iget v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredTextRoleFlags:I

    if-ne v2, v3, :cond_f0

    iget-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    if-ne v2, v3, :cond_f0

    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    iget v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    if-ne v2, v3, :cond_f0

    iget-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    if-ne v2, v3, :cond_f0

    iget-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->isPrioritizeImageOverVideoEnabled:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->isPrioritizeImageOverVideoEnabled:Z

    if-ne v2, v3, :cond_f0

    iget-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    if-ne v2, v3, :cond_f0

    iget-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    if-ne v2, v3, :cond_f0

    iget-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    .line 1390
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    iget-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    iget-object p1, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 1391
    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f0

    return v0

    :cond_f0
    :goto_f0
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 1398
    iget v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 1399
    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1400
    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1401
    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1402
    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoWidth:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1403
    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoHeight:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1404
    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoFrameRate:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1405
    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoBitrate:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1406
    iget-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->viewportOrientationMayChange:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1407
    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->viewportWidth:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1408
    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->viewportHeight:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1409
    iget-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1410
    iget-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1411
    iget-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1412
    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoRoleFlags:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1414
    iget-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1415
    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioRoleFlags:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1416
    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxAudioChannelCount:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1417
    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxAudioBitrate:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1418
    iget-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1419
    iget-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1421
    iget-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1422
    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredTextRoleFlags:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1423
    iget-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1424
    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1425
    iget-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1427
    iget-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->isPrioritizeImageOverVideoEnabled:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1429
    iget-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1430
    iget-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1431
    iget-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1432
    iget-object v1, p0, Lio/bidmachine/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

###### Class io.bidmachine.media3.common.TrackSelectionParameters.AnonymousClass1 (io.bidmachine.media3.common.TrackSelectionParameters$1)
.class public synthetic Lio/bidmachine/media3/common/TrackSelectionParameters$1;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/TrackSelectionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.common.TrackSelectionParameters.AudioOffloadPreferences (io.bidmachine.media3.common.TrackSelectionParameters$AudioOffloadPreferences)
.class public final Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/TrackSelectionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioOffloadPreferences"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

.field public static final FIELD_AUDIO_OFFLOAD_MODE_PREFERENCE:Ljava/lang/String;

.field public static final FIELD_IS_GAPLESS_SUPPORT_REQUIRED:Ljava/lang/String;

.field public static final FIELD_IS_SPEED_CHANGE_SUPPORT_REQUIRED:Ljava/lang/String;


# instance fields
.field public final audioOffloadMode:I

.field public final isGaplessSupportRequired:Z

.field public final isSpeedChangeSupportRequired:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 999
    new-instance v0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;-><init>()V

    .line 1000
    invoke-virtual {v0}, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;->build()Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->DEFAULT:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    const/4 v0, 0x1

    .line 1057
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->FIELD_AUDIO_OFFLOAD_MODE_PREFERENCE:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1058
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->FIELD_IS_GAPLESS_SUPPORT_REQUIRED:Ljava/lang/String;

    const/4 v0, 0x3

    .line 1060
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->FIELD_IS_SPEED_CHANGE_SUPPORT_REQUIRED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;)V
    .registers 3

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;->access$3500(Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    .line 1019
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;->access$3600(Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->isGaplessSupportRequired:Z

    .line 1020
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;->access$3700(Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->isSpeedChangeSupportRequired:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;Lio/bidmachine/media3/common/TrackSelectionParameters$1;)V
    .registers 3

    .line 897
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;-><init>(Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    .line 1039
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    if-eq v3, v2, :cond_10

    goto :goto_25

    .line 1042
    :cond_10
    check-cast p1, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    .line 1043
    iget v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    iget v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    if-ne v2, v3, :cond_25

    iget-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->isGaplessSupportRequired:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->isGaplessSupportRequired:Z

    if-ne v2, v3, :cond_25

    iget-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->isSpeedChangeSupportRequired:Z

    iget-boolean p1, p1, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->isSpeedChangeSupportRequired:Z

    if-ne v2, p1, :cond_25

    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 1051
    iget v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 1052
    iget-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->isGaplessSupportRequired:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1053
    iget-boolean v1, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->isSpeedChangeSupportRequired:Z

    add-int/2addr v0, v1

    return v0
.end method

###### Class io.bidmachine.media3.common.TrackSelectionParameters.AudioOffloadPreferences.Builder (io.bidmachine.media3.common.TrackSelectionParameters$AudioOffloadPreferences$Builder)
.class public final Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public audioOffloadMode:I

.field public isGaplessSupportRequired:Z

.field public isSpeedChangeSupportRequired:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 943
    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;->audioOffloadMode:I

    .line 944
    iput-boolean v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;->isGaplessSupportRequired:Z

    .line 945
    iput-boolean v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;->isSpeedChangeSupportRequired:Z

    return-void
.end method

.method public static synthetic access$3500(Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;)I
    .registers 1

    .line 937
    iget p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;->audioOffloadMode:I

    return p0
.end method

.method public static synthetic access$3600(Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;)Z
    .registers 1

    .line 937
    iget-boolean p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;->isGaplessSupportRequired:Z

    return p0
.end method

.method public static synthetic access$3700(Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;)Z
    .registers 1

    .line 937
    iget-boolean p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;->isSpeedChangeSupportRequired:Z

    return p0
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;
    .registers 3

    .line 994
    new-instance v0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;-><init>(Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder;Lio/bidmachine/media3/common/TrackSelectionParameters$1;)V

    return-object v0
.end method

###### Class io.bidmachine.media3.common.TrackSelectionParameters.Builder (io.bidmachine.media3.common.TrackSelectionParameters$Builder)
.class public Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/TrackSelectionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

.field public disabledTrackTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public forceHighestSupportedBitrate:Z

.field public forceLowestBitrate:Z

.field public ignoredTextSelectionFlags:I

.field public isPrioritizeImageOverVideoEnabled:Z

.field public isViewportSizeLimitedByPhysicalDisplaySize:Z

.field public maxAudioBitrate:I

.field public maxAudioChannelCount:I

.field public maxVideoBitrate:I

.field public maxVideoFrameRate:I

.field public maxVideoHeight:I

.field public maxVideoWidth:I

.field public minVideoBitrate:I

.field public minVideoFrameRate:I

.field public minVideoHeight:I

.field public minVideoWidth:I

.field public overrides:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/bidmachine/media3/common/TrackGroup;",
            "Lio/bidmachine/media3/common/TrackSelectionOverride;",
            ">;"
        }
    .end annotation
.end field

.field public preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public preferredAudioRoleFlags:I

.field public preferredTextLanguages:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public preferredTextRoleFlags:I

.field public preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public preferredVideoRoleFlags:I

.field public selectUndeterminedTextLanguage:Z

.field public usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

.field public viewportHeight:I

.field public viewportOrientationMayChange:Z

.field public viewportWidth:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 117
    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->maxVideoWidth:I

    .line 118
    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->maxVideoHeight:I

    .line 119
    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->maxVideoFrameRate:I

    .line 120
    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->maxVideoBitrate:I

    .line 121
    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->viewportWidth:I

    .line 122
    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->viewportHeight:I

    const/4 v1, 0x1

    .line 123
    iput-boolean v1, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    .line 124
    iput-boolean v1, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->viewportOrientationMayChange:Z

    .line 125
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 126
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    .line 127
    iput v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredVideoRoleFlags:I

    .line 129
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    .line 130
    iput v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredAudioRoleFlags:I

    .line 131
    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->maxAudioChannelCount:I

    .line 132
    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->maxAudioBitrate:I

    .line 133
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 134
    sget-object v0, Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->DEFAULT:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    .line 136
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    .line 137
    iput v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    .line 138
    iput-boolean v1, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    .line 139
    iput v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->ignoredTextSelectionFlags:I

    .line 140
    iput-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    .line 142
    iput-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->isPrioritizeImageOverVideoEnabled:Z

    .line 144
    iput-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->forceLowestBitrate:Z

    .line 145
    iput-boolean v2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->forceHighestSupportedBitrate:Z

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/TrackSelectionParameters;)V
    .registers 2

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->init(Lio/bidmachine/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public static synthetic access$3800(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I
    .registers 1

    .line 76
    iget p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->maxVideoWidth:I

    return p0
.end method

.method public static synthetic access$3900(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I
    .registers 1

    .line 76
    iget p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->maxVideoHeight:I

    return p0
.end method

.method public static synthetic access$4000(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I
    .registers 1

    .line 76
    iget p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->maxVideoFrameRate:I

    return p0
.end method

.method public static synthetic access$4100(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I
    .registers 1

    .line 76
    iget p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->maxVideoBitrate:I

    return p0
.end method

.method public static synthetic access$4200(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I
    .registers 1

    .line 76
    iget p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->minVideoWidth:I

    return p0
.end method

.method public static synthetic access$4300(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I
    .registers 1

    .line 76
    iget p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->minVideoHeight:I

    return p0
.end method

.method public static synthetic access$4400(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I
    .registers 1

    .line 76
    iget p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->minVideoFrameRate:I

    return p0
.end method

.method public static synthetic access$4500(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I
    .registers 1

    .line 76
    iget p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->minVideoBitrate:I

    return p0
.end method

.method public static synthetic access$4600(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I
    .registers 1

    .line 76
    iget p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->viewportWidth:I

    return p0
.end method

.method public static synthetic access$4700(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I
    .registers 1

    .line 76
    iget p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->viewportHeight:I

    return p0
.end method

.method public static synthetic access$4800(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Z
    .registers 1

    .line 76
    iget-boolean p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    return p0
.end method

.method public static synthetic access$4900(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Z
    .registers 1

    .line 76
    iget-boolean p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->viewportOrientationMayChange:Z

    return p0
.end method

.method public static synthetic access$5000(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;
    .registers 1

    .line 76
    iget-object p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static synthetic access$5100(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;
    .registers 1

    .line 76
    iget-object p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static synthetic access$5200(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I
    .registers 1

    .line 76
    iget p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredVideoRoleFlags:I

    return p0
.end method

.method public static synthetic access$5300(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;
    .registers 1

    .line 76
    iget-object p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static synthetic access$5400(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I
    .registers 1

    .line 76
    iget p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredAudioRoleFlags:I

    return p0
.end method

.method public static synthetic access$5500(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I
    .registers 1

    .line 76
    iget p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->maxAudioChannelCount:I

    return p0
.end method

.method public static synthetic access$5600(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I
    .registers 1

    .line 76
    iget p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->maxAudioBitrate:I

    return p0
.end method

.method public static synthetic access$5700(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;
    .registers 1

    .line 76
    iget-object p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static synthetic access$5800(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;
    .registers 1

    .line 76
    iget-object p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    return-object p0
.end method

.method public static synthetic access$5900(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;
    .registers 1

    .line 76
    iget-object p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static synthetic access$6000(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I
    .registers 1

    .line 76
    iget p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    return p0
.end method

.method public static synthetic access$6100(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Z
    .registers 1

    .line 76
    iget-boolean p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    return p0
.end method

.method public static synthetic access$6200(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)I
    .registers 1

    .line 76
    iget p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->ignoredTextSelectionFlags:I

    return p0
.end method

.method public static synthetic access$6300(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Z
    .registers 1

    .line 76
    iget-boolean p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    return p0
.end method

.method public static synthetic access$6400(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Z
    .registers 1

    .line 76
    iget-boolean p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->isPrioritizeImageOverVideoEnabled:Z

    return p0
.end method

.method public static synthetic access$6500(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Z
    .registers 1

    .line 76
    iget-boolean p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->forceLowestBitrate:Z

    return p0
.end method

.method public static synthetic access$6600(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Z
    .registers 1

    .line 76
    iget-boolean p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->forceHighestSupportedBitrate:Z

    return p0
.end method

.method public static synthetic access$6700(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Ljava/util/HashMap;
    .registers 1

    .line 76
    iget-object p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$6800(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)Ljava/util/HashSet;
    .registers 1

    .line 76
    iget-object p0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    return-object p0
.end method

.method public static normalizeLanguageCodes([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 887
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 888
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_20

    aget-object v3, p0, v2

    .line 889
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 891
    :cond_20
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/common/TrackSelectionParameters;
    .registers 2

    .line 883
    new-instance v0, Lio/bidmachine/media3/common/TrackSelectionParameters;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/common/TrackSelectionParameters;-><init>(Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;)V

    return-object v0
.end method

.method public clearOverridesOfType(I)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
    .registers 4

    .line 829
    iget-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 830
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 831
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/TrackSelectionOverride;

    .line 832
    invoke-virtual {v1}, Lio/bidmachine/media3/common/TrackSelectionOverride;->getType()I

    move-result v1

    if-ne v1, p1, :cond_a

    .line 833
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_20
    return-object p0
.end method

.method public final init(Lio/bidmachine/media3/common/TrackSelectionParameters;)V
    .registers 4

    .line 290
    iget v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->maxVideoWidth:I

    .line 291
    iget v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->maxVideoHeight:I

    .line 292
    iget v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->maxVideoFrameRate:I

    .line 293
    iget v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->maxVideoBitrate:I

    .line 294
    iget v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoWidth:I

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->minVideoWidth:I

    .line 295
    iget v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoHeight:I

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->minVideoHeight:I

    .line 296
    iget v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoFrameRate:I

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->minVideoFrameRate:I

    .line 297
    iget v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->minVideoBitrate:I

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->minVideoBitrate:I

    .line 298
    iget v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->viewportWidth:I

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->viewportWidth:I

    .line 299
    iget v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->viewportHeight:I

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->viewportHeight:I

    .line 300
    iget-boolean v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    .line 302
    iget-boolean v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->viewportOrientationMayChange:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->viewportOrientationMayChange:Z

    .line 303
    iget-object v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 304
    iget-object v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    .line 305
    iget v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredVideoRoleFlags:I

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredVideoRoleFlags:I

    .line 307
    iget-object v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    .line 308
    iget v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioRoleFlags:I

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredAudioRoleFlags:I

    .line 309
    iget v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxAudioChannelCount:I

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->maxAudioChannelCount:I

    .line 310
    iget v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->maxAudioBitrate:I

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->maxAudioBitrate:I

    .line 311
    iget-object v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 312
    iget-object v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->audioOffloadPreferences:Lio/bidmachine/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    .line 314
    iget-object v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    .line 315
    iget v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->preferredTextRoleFlags:I

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    .line 316
    iget-boolean v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    .line 318
    iget v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    iput v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->ignoredTextSelectionFlags:I

    .line 319
    iget-boolean v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    .line 321
    iget-boolean v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->isPrioritizeImageOverVideoEnabled:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->isPrioritizeImageOverVideoEnabled:Z

    .line 323
    iget-boolean v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->forceLowestBitrate:Z

    .line 324
    iget-boolean v0, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->forceHighestSupportedBitrate:Z

    .line 325
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    .line 326
    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    return-void
.end method

.method public set(Lio/bidmachine/media3/common/TrackSelectionParameters;)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
    .registers 2

    .line 333
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->init(Lio/bidmachine/media3/common/TrackSelectionParameters;)V

    return-object p0
.end method

.method public setIgnoredTextSelectionFlags(I)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
    .registers 2

    .line 739
    iput p1, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->ignoredTextSelectionFlags:I

    return-object p0
.end method

.method public setOverrideForType(Lio/bidmachine/media3/common/TrackSelectionOverride;)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
    .registers 4

    .line 814
    invoke-virtual {p1}, Lio/bidmachine/media3/common/TrackSelectionOverride;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->clearOverridesOfType(I)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    .line 815
    iget-object v0, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    iget-object v1, p1, Lio/bidmachine/media3/common/TrackSelectionOverride;->mediaTrackGroup:Lio/bidmachine/media3/common/TrackGroup;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPreferredTextLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
    .registers 2

    if-nez p1, :cond_a

    const/4 p1, 0x0

    .line 698
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->setPreferredTextLanguages([Ljava/lang/String;)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    return-object p1

    .line 699
    :cond_a
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->setPreferredTextLanguages([Ljava/lang/String;)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPreferredTextLanguages([Ljava/lang/String;)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
    .registers 2

    .line 712
    invoke-static {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->normalizeLanguageCodes([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    const/4 p1, 0x0

    .line 713
    iput-boolean p1, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    return-object p0
.end method

.method public setPreferredTextRoleFlags(I)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
    .registers 2

    .line 725
    iput p1, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    const/4 p1, 0x0

    .line 726
    iput-boolean p1, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    return-object p0
.end method

.method public setTrackTypeDisabled(IZ)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;
    .registers 3

    if-eqz p2, :cond_c

    .line 874
    iget-object p2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 876
    :cond_c
    iget-object p2, p0, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method
