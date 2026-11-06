###### Class io.bidmachine.media3.common.MediaMetadata (io.bidmachine.media3.common.MediaMetadata)
.class public final Lio/bidmachine/media3/common/MediaMetadata;
.super Ljava/lang/Object;
.source "MediaMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/MediaMetadata$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Lio/bidmachine/media3/common/MediaMetadata;

.field public static final FIELD_ALBUM_ARTIST:Ljava/lang/String;

.field public static final FIELD_ALBUM_TITLE:Ljava/lang/String;

.field public static final FIELD_ARTIST:Ljava/lang/String;

.field public static final FIELD_ARTWORK_DATA:Ljava/lang/String;

.field public static final FIELD_ARTWORK_DATA_TYPE:Ljava/lang/String;

.field public static final FIELD_ARTWORK_URI:Ljava/lang/String;

.field public static final FIELD_COMPILATION:Ljava/lang/String;

.field public static final FIELD_COMPOSER:Ljava/lang/String;

.field public static final FIELD_CONDUCTOR:Ljava/lang/String;

.field public static final FIELD_DESCRIPTION:Ljava/lang/String;

.field public static final FIELD_DISC_NUMBER:Ljava/lang/String;

.field public static final FIELD_DISPLAY_TITLE:Ljava/lang/String;

.field public static final FIELD_DURATION_MS:Ljava/lang/String;

.field public static final FIELD_EXTRAS:Ljava/lang/String;

.field public static final FIELD_FOLDER_TYPE:Ljava/lang/String;

.field public static final FIELD_GENRE:Ljava/lang/String;

.field public static final FIELD_IS_BROWSABLE:Ljava/lang/String;

.field public static final FIELD_IS_PLAYABLE:Ljava/lang/String;

.field public static final FIELD_MEDIA_TYPE:Ljava/lang/String;

.field public static final FIELD_OVERALL_RATING:Ljava/lang/String;

.field public static final FIELD_RECORDING_DAY:Ljava/lang/String;

.field public static final FIELD_RECORDING_MONTH:Ljava/lang/String;

.field public static final FIELD_RECORDING_YEAR:Ljava/lang/String;

.field public static final FIELD_RELEASE_DAY:Ljava/lang/String;

.field public static final FIELD_RELEASE_MONTH:Ljava/lang/String;

.field public static final FIELD_RELEASE_YEAR:Ljava/lang/String;

.field public static final FIELD_STATION:Ljava/lang/String;

.field public static final FIELD_SUBTITLE:Ljava/lang/String;

.field public static final FIELD_SUPPORTED_COMMANDS:Ljava/lang/String;

.field public static final FIELD_TITLE:Ljava/lang/String;

.field public static final FIELD_TOTAL_DISC_COUNT:Ljava/lang/String;

.field public static final FIELD_TOTAL_TRACK_COUNT:Ljava/lang/String;

.field public static final FIELD_TRACK_NUMBER:Ljava/lang/String;

.field public static final FIELD_USER_RATING:Ljava/lang/String;

.field public static final FIELD_WRITER:Ljava/lang/String;


# instance fields
.field public final albumArtist:Ljava/lang/CharSequence;

.field public final albumTitle:Ljava/lang/CharSequence;

.field public final artist:Ljava/lang/CharSequence;

.field public final artworkData:[B

.field public final artworkDataType:Ljava/lang/Integer;

.field public final artworkUri:Landroid/net/Uri;

.field public final compilation:Ljava/lang/CharSequence;

.field public final composer:Ljava/lang/CharSequence;

.field public final conductor:Ljava/lang/CharSequence;

.field public final description:Ljava/lang/CharSequence;

.field public final discNumber:Ljava/lang/Integer;

.field public final displayTitle:Ljava/lang/CharSequence;

.field public final durationMs:Ljava/lang/Long;

.field public final extras:Landroid/os/Bundle;

.field public final folderType:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final genre:Ljava/lang/CharSequence;

.field public final isBrowsable:Ljava/lang/Boolean;

.field public final isPlayable:Ljava/lang/Boolean;

.field public final mediaType:Ljava/lang/Integer;

.field public final recordingDay:Ljava/lang/Integer;

.field public final recordingMonth:Ljava/lang/Integer;

.field public final recordingYear:Ljava/lang/Integer;

.field public final releaseDay:Ljava/lang/Integer;

.field public final releaseMonth:Ljava/lang/Integer;

.field public final releaseYear:Ljava/lang/Integer;

.field public final station:Ljava/lang/CharSequence;

.field public final subtitle:Ljava/lang/CharSequence;

.field public final supportedCommands:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final title:Ljava/lang/CharSequence;

.field public final totalDiscCount:Ljava/lang/Integer;

.field public final totalTrackCount:Ljava/lang/Integer;

.field public final trackNumber:Ljava/lang/Integer;

.field public final writer:Ljava/lang/CharSequence;

.field public final year:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 997
    new-instance v0, Lio/bidmachine/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;-><init>()V

    invoke-virtual {v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->build()Lio/bidmachine/media3/common/MediaMetadata;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->EMPTY:Lio/bidmachine/media3/common/MediaMetadata;

    const/4 v0, 0x0

    .line 1302
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_TITLE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1303
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_ARTIST:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1304
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_ALBUM_TITLE:Ljava/lang/String;

    const/4 v0, 0x3

    .line 1305
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_ALBUM_ARTIST:Ljava/lang/String;

    const/4 v0, 0x4

    .line 1306
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_DISPLAY_TITLE:Ljava/lang/String;

    const/4 v0, 0x5

    .line 1307
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_SUBTITLE:Ljava/lang/String;

    const/4 v0, 0x6

    .line 1308
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_DESCRIPTION:Ljava/lang/String;

    const/16 v0, 0x8

    .line 1310
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_USER_RATING:Ljava/lang/String;

    const/16 v0, 0x9

    .line 1311
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_OVERALL_RATING:Ljava/lang/String;

    const/16 v0, 0xa

    .line 1312
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_ARTWORK_DATA:Ljava/lang/String;

    const/16 v0, 0xb

    .line 1313
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_ARTWORK_URI:Ljava/lang/String;

    const/16 v0, 0xc

    .line 1314
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_TRACK_NUMBER:Ljava/lang/String;

    const/16 v0, 0xd

    .line 1315
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_TOTAL_TRACK_COUNT:Ljava/lang/String;

    const/16 v0, 0xe

    .line 1316
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_FOLDER_TYPE:Ljava/lang/String;

    const/16 v0, 0xf

    .line 1317
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_IS_PLAYABLE:Ljava/lang/String;

    const/16 v0, 0x10

    .line 1318
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_RECORDING_YEAR:Ljava/lang/String;

    const/16 v0, 0x11

    .line 1319
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_RECORDING_MONTH:Ljava/lang/String;

    const/16 v0, 0x12

    .line 1320
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_RECORDING_DAY:Ljava/lang/String;

    const/16 v0, 0x13

    .line 1321
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_RELEASE_YEAR:Ljava/lang/String;

    const/16 v0, 0x14

    .line 1322
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_RELEASE_MONTH:Ljava/lang/String;

    const/16 v0, 0x15

    .line 1323
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_RELEASE_DAY:Ljava/lang/String;

    const/16 v0, 0x16

    .line 1324
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_WRITER:Ljava/lang/String;

    const/16 v0, 0x17

    .line 1325
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_COMPOSER:Ljava/lang/String;

    const/16 v0, 0x18

    .line 1326
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_CONDUCTOR:Ljava/lang/String;

    const/16 v0, 0x19

    .line 1327
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_DISC_NUMBER:Ljava/lang/String;

    const/16 v0, 0x1a

    .line 1328
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_TOTAL_DISC_COUNT:Ljava/lang/String;

    const/16 v0, 0x1b

    .line 1329
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_GENRE:Ljava/lang/String;

    const/16 v0, 0x1c

    .line 1330
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_COMPILATION:Ljava/lang/String;

    const/16 v0, 0x1d

    .line 1331
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_ARTWORK_DATA_TYPE:Ljava/lang/String;

    const/16 v0, 0x1e

    .line 1332
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_STATION:Ljava/lang/String;

    const/16 v0, 0x1f

    .line 1333
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_MEDIA_TYPE:Ljava/lang/String;

    const/16 v0, 0x20

    .line 1334
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_IS_BROWSABLE:Ljava/lang/String;

    const/16 v0, 0x21

    .line 1335
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_DURATION_MS:Ljava/lang/String;

    const/16 v0, 0x22

    .line 1336
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_SUPPORTED_COMMANDS:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 1337
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaMetadata;->FIELD_EXTRAS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/MediaMetadata$Builder;)V
    .registers 8

    .line 1153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1155
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$100(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1156
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$200(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v1

    .line 1157
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$300(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v0, :cond_35

    .line 1159
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 1160
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_52

    :cond_1e
    if-eqz v1, :cond_26

    .line 1161
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_52

    :cond_26
    if-eqz v2, :cond_30

    .line 1162
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lio/bidmachine/media3/common/MediaMetadata;->getFolderTypeFromMediaType(I)I

    move-result v3

    :cond_30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_52

    :cond_35
    if-eqz v1, :cond_52

    .line 1165
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_3e

    const/4 v3, 0x1

    :cond_3e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v3, :cond_52

    if-nez v2, :cond_52

    .line 1167
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lio/bidmachine/media3/common/MediaMetadata;->getMediaTypeFromFolderType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1170
    :cond_52
    :goto_52
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$400(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    .line 1171
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$500(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    .line 1172
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$600(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    .line 1173
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$700(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    .line 1174
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$800(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    .line 1175
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$900(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    .line 1176
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$1000(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    .line 1177
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$1100(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/common/MediaMetadata;->durationMs:Ljava/lang/Long;

    .line 1178
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$1200(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Lio/bidmachine/media3/common/Rating;

    .line 1179
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$1300(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Lio/bidmachine/media3/common/Rating;

    .line 1180
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$1400(Lio/bidmachine/media3/common/MediaMetadata$Builder;)[B

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/common/MediaMetadata;->artworkData:[B

    .line 1181
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$1500(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    .line 1182
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$1600(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 1183
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$1700(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    .line 1184
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$1800(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    .line 1185
    iput-object v1, p0, Lio/bidmachine/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    .line 1186
    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    .line 1187
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$1900(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    .line 1188
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$2000(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata;->year:Ljava/lang/Integer;

    .line 1189
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$2000(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    .line 1190
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$2100(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    .line 1191
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$2200(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    .line 1192
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$2300(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    .line 1193
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$2400(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    .line 1194
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$2500(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    .line 1195
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$2600(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    .line 1196
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$2700(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    .line 1197
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$2800(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    .line 1198
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$2900(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    .line 1199
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$3000(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    .line 1200
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$3100(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    .line 1201
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$3200(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    .line 1202
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$3300(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    .line 1203
    iput-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    .line 1204
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$3400(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    .line 1205
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->access$3500(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaMetadata$Builder;Lio/bidmachine/media3/common/MediaMetadata$1;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/MediaMetadata;-><init>(Lio/bidmachine/media3/common/MediaMetadata$Builder;)V

    return-void
.end method

.method public static getFolderTypeFromMediaType(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_12

    :pswitch_3
    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_9
    const/4 p0, 0x4

    return p0

    :pswitch_b
    const/4 p0, 0x3

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :pswitch_f
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_3
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public static getMediaTypeFromFolderType(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_18

    const/16 p0, 0x14

    return p0

    :pswitch_6
    const/16 p0, 0x19

    return p0

    :pswitch_9
    const/16 p0, 0x18

    return p0

    :pswitch_c
    const/16 p0, 0x17

    return p0

    :pswitch_f
    const/16 p0, 0x16

    return p0

    :pswitch_12
    const/16 p0, 0x15

    return p0

    :pswitch_15
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public buildUpon()Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 3

    .line 1210
    new-instance v0, Lio/bidmachine/media3/common/MediaMetadata$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;-><init>(Lio/bidmachine/media3/common/MediaMetadata;Lio/bidmachine/media3/common/MediaMetadata$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_164

    .line 1220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/MediaMetadata;

    if-eq v3, v2, :cond_11

    goto/16 :goto_164

    .line 1223
    :cond_11
    check-cast p1, Lio/bidmachine/media3/common/MediaMetadata;

    .line 1224
    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    .line 1225
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    .line 1226
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    .line 1227
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    .line 1228
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    .line 1229
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    .line 1230
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->durationMs:Ljava/lang/Long;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->durationMs:Ljava/lang/Long;

    .line 1231
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    .line 1233
    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->artworkData:[B

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->artworkData:[B

    .line 1234
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    .line 1235
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 1236
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    .line 1237
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    .line 1238
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    .line 1239
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    .line 1240
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    .line 1241
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    .line 1242
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    .line 1243
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    .line 1244
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    .line 1245
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    .line 1246
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    .line 1247
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    .line 1248
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    .line 1249
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    .line 1250
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    .line 1251
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    .line 1252
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    .line 1253
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    .line 1254
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    .line 1255
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    .line 1256
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaMetadata;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    .line 1257
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lio/bidmachine/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_159

    move v2, v0

    goto :goto_15a

    :cond_159
    move v2, v1

    :goto_15a
    iget-object p1, p1, Lio/bidmachine/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    if-nez p1, :cond_160

    move p1, v0

    goto :goto_161

    :cond_160
    move p1, v1

    :goto_161
    if-ne v2, p1, :cond_164

    return v0

    :cond_164
    :goto_164
    return v1
.end method

.method public hashCode()I
    .registers 37

    move-object/from16 v0, p0

    .line 1264
    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    iget-object v2, v0, Lio/bidmachine/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iget-object v3, v0, Lio/bidmachine/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iget-object v4, v0, Lio/bidmachine/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iget-object v5, v0, Lio/bidmachine/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    iget-object v6, v0, Lio/bidmachine/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    iget-object v7, v0, Lio/bidmachine/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    iget-object v8, v0, Lio/bidmachine/media3/common/MediaMetadata;->durationMs:Ljava/lang/Long;

    iget-object v9, v0, Lio/bidmachine/media3/common/MediaMetadata;->artworkData:[B

    .line 1275
    invoke-static {v9}, Ljava/util/Arrays;->hashCode([B)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v0, Lio/bidmachine/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iget-object v13, v0, Lio/bidmachine/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    iget-object v14, v0, Lio/bidmachine/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iget-object v15, v0, Lio/bidmachine/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iget-object v9, v0, Lio/bidmachine/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    iget-object v10, v0, Lio/bidmachine/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    move-object/from16 v16, v1

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    move-object/from16 v18, v1

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    move-object/from16 v19, v1

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    move-object/from16 v20, v1

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    move-object/from16 v21, v1

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    move-object/from16 v22, v1

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    move-object/from16 v23, v1

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    move-object/from16 v24, v1

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    move-object/from16 v25, v1

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    move-object/from16 v26, v1

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    move-object/from16 v27, v1

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    move-object/from16 v28, v1

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    move-object/from16 v29, v1

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    move-object/from16 v30, v1

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    move-object/from16 v31, v1

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    move-object/from16 v32, v1

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    move-object/from16 v33, v1

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_70

    const/4 v1, 0x1

    goto :goto_71

    :cond_70
    const/4 v1, 0x0

    .line 1298
    :goto_71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaMetadata;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v35, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v9

    const/4 v9, 0x0

    move-object/from16 v17, v10

    const/4 v10, 0x0

    filled-new-array/range {v1 .. v35}, [Ljava/lang/Object;

    move-result-object v1

    .line 1264
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

###### Class io.bidmachine.media3.common.MediaMetadata.AnonymousClass1 (io.bidmachine.media3.common.MediaMetadata$1)
.class public synthetic Lio/bidmachine/media3/common/MediaMetadata$1;
.super Ljava/lang/Object;
.source "MediaMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MediaMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.common.MediaMetadata.Builder (io.bidmachine.media3.common.MediaMetadata$Builder)
.class public final Lio/bidmachine/media3/common/MediaMetadata$Builder;
.super Ljava/lang/Object;
.source "MediaMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MediaMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public albumArtist:Ljava/lang/CharSequence;

.field public albumTitle:Ljava/lang/CharSequence;

.field public artist:Ljava/lang/CharSequence;

.field public artworkData:[B

.field public artworkDataType:Ljava/lang/Integer;

.field public artworkUri:Landroid/net/Uri;

.field public compilation:Ljava/lang/CharSequence;

.field public composer:Ljava/lang/CharSequence;

.field public conductor:Ljava/lang/CharSequence;

.field public description:Ljava/lang/CharSequence;

.field public discNumber:Ljava/lang/Integer;

.field public displayTitle:Ljava/lang/CharSequence;

.field public durationMs:Ljava/lang/Long;

.field public extras:Landroid/os/Bundle;

.field public folderType:Ljava/lang/Integer;

.field public genre:Ljava/lang/CharSequence;

.field public isBrowsable:Ljava/lang/Boolean;

.field public isPlayable:Ljava/lang/Boolean;

.field public mediaType:Ljava/lang/Integer;

.field public recordingDay:Ljava/lang/Integer;

.field public recordingMonth:Ljava/lang/Integer;

.field public recordingYear:Ljava/lang/Integer;

.field public releaseDay:Ljava/lang/Integer;

.field public releaseMonth:Ljava/lang/Integer;

.field public releaseYear:Ljava/lang/Integer;

.field public station:Ljava/lang/CharSequence;

.field public subtitle:Ljava/lang/CharSequence;

.field public supportedCommands:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/CharSequence;

.field public totalDiscCount:Ljava/lang/Integer;

.field public totalTrackCount:Ljava/lang/Integer;

.field public trackNumber:Ljava/lang/Integer;

.field public writer:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/MediaMetadata;)V
    .registers 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    .line 99
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    .line 100
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    .line 101
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    .line 102
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    .line 103
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    .line 104
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    .line 105
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->durationMs:Ljava/lang/Long;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->durationMs:Ljava/lang/Long;

    .line 108
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->artworkData:[B

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->artworkData:[B

    .line 109
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    .line 110
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    .line 111
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    .line 112
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    .line 113
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    .line 114
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->isBrowsable:Ljava/lang/Boolean;

    .line 115
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    .line 116
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    .line 117
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    .line 118
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    .line 119
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    .line 120
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    .line 121
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    .line 122
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    .line 123
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    .line 124
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    .line 125
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    .line 126
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    .line 127
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    .line 128
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;

    .line 129
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;

    .line 130
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->mediaType:Ljava/lang/Integer;

    .line 131
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    .line 132
    iget-object p1, p1, Lio/bidmachine/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaMetadata;Lio/bidmachine/media3/common/MediaMetadata$1;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;-><init>(Lio/bidmachine/media3/common/MediaMetadata;)V

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Boolean;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->isBrowsable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic access$1000(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$1100(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Long;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->durationMs:Ljava/lang/Long;

    return-object p0
.end method

.method public static synthetic access$1200(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Lio/bidmachine/media3/common/Rating;
    .registers 1

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic access$1300(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Lio/bidmachine/media3/common/Rating;
    .registers 1

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic access$1400(Lio/bidmachine/media3/common/MediaMetadata$Builder;)[B
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->artworkData:[B

    return-object p0
.end method

.method public static synthetic access$1500(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$1600(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Landroid/net/Uri;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$1700(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$1800(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$1900(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Boolean;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$2000(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$2100(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$2200(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$2300(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$2400(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$2500(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$2600(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$2700(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$2800(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$2900(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->mediaType:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$3000(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$3100(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$3200(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$3300(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$3400(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Lcom/google/common/collect/ImmutableList;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static synthetic access$3500(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Landroid/os/Bundle;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$800(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$900(Lio/bidmachine/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/common/MediaMetadata;
    .registers 3

    .line 624
    new-instance v0, Lio/bidmachine/media3/common/MediaMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/MediaMetadata;-><init>(Lio/bidmachine/media3/common/MediaMetadata$Builder;Lio/bidmachine/media3/common/MediaMetadata$1;)V

    return-object v0
.end method

.method public maybeSetArtworkData([BI)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 5

    .line 251
    iget-object v0, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->artworkData:[B

    if-eqz v0, :cond_15

    const/4 v0, 0x3

    if-eq p2, v0, :cond_15

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    .line 253
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_15

    :cond_14
    return-object p0

    .line 254
    :cond_15
    :goto_15
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->artworkData:[B

    .line 255
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    return-object p0
.end method

.method public populate(Lio/bidmachine/media3/common/MediaMetadata;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 4

    if-nez p1, :cond_4

    goto/16 :goto_f5

    .line 514
    :cond_4
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    .line 515
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 517
    :cond_b
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    .line 518
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 520
    :cond_12
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_19

    .line 521
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 523
    :cond_19
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    if-eqz v0, :cond_20

    .line 524
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setAlbumArtist(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 526
    :cond_20
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_27

    .line 527
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setDisplayTitle(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 529
    :cond_27
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2e

    .line 530
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setSubtitle(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 532
    :cond_2e
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    if-eqz v0, :cond_35

    .line 533
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 535
    :cond_35
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->durationMs:Ljava/lang/Long;

    if-eqz v0, :cond_3c

    .line 536
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setDurationMs(Ljava/lang/Long;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 544
    :cond_3c
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    if-nez v0, :cond_44

    iget-object v1, p1, Lio/bidmachine/media3/common/MediaMetadata;->artworkData:[B

    if-eqz v1, :cond_4e

    .line 545
    :cond_44
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setArtworkUri(Landroid/net/Uri;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 546
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->artworkData:[B

    iget-object v1, p1, Lio/bidmachine/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setArtworkData([BLjava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 548
    :cond_4e
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    if-eqz v0, :cond_55

    .line 549
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setTrackNumber(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 551
    :cond_55
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    if-eqz v0, :cond_5c

    .line 552
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setTotalTrackCount(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 554
    :cond_5c
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    if-eqz v0, :cond_63

    .line 555
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setFolderType(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 557
    :cond_63
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    if-eqz v0, :cond_6a

    .line 558
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setIsBrowsable(Ljava/lang/Boolean;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 560
    :cond_6a
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    if-eqz v0, :cond_71

    .line 561
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 563
    :cond_71
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->year:Ljava/lang/Integer;

    if-eqz v0, :cond_78

    .line 564
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 566
    :cond_78
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    if-eqz v0, :cond_7f

    .line 567
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 569
    :cond_7f
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    if-eqz v0, :cond_86

    .line 570
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setRecordingMonth(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 572
    :cond_86
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    if-eqz v0, :cond_8d

    .line 573
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setRecordingDay(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 575
    :cond_8d
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    if-eqz v0, :cond_94

    .line 576
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setReleaseYear(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 578
    :cond_94
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    if-eqz v0, :cond_9b

    .line 579
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setReleaseMonth(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 581
    :cond_9b
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    if-eqz v0, :cond_a2

    .line 582
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setReleaseDay(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 584
    :cond_a2
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a9

    .line 585
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setWriter(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 587
    :cond_a9
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b0

    .line 588
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setComposer(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 590
    :cond_b0
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b7

    .line 591
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setConductor(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 593
    :cond_b7
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    if-eqz v0, :cond_be

    .line 594
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setDiscNumber(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 596
    :cond_be
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    if-eqz v0, :cond_c5

    .line 597
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setTotalDiscCount(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 599
    :cond_c5
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    if-eqz v0, :cond_cc

    .line 600
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setGenre(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 602
    :cond_cc
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d3

    .line 603
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setCompilation(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 605
    :cond_d3
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    if-eqz v0, :cond_da

    .line 606
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setStation(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 608
    :cond_da
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    if-eqz v0, :cond_e1

    .line 609
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setMediaType(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 611
    :cond_e1
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_e8

    .line 612
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setExtras(Landroid/os/Bundle;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 615
    :cond_e8
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaMetadata;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f5

    .line 616
    iget-object p1, p1, Lio/bidmachine/media3/common/MediaMetadata;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setSupportedCommands(Ljava/util/List;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    :cond_f5
    :goto_f5
    return-object p0
.end method

.method public populateFromMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 4

    const/4 v0, 0x0

    .line 471
    :goto_1
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 472
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Metadata;->get(I)Lio/bidmachine/media3/common/Metadata$Entry;

    move-result-object v1

    .line 473
    invoke-interface {v1, p0}, Lio/bidmachine/media3/common/Metadata$Entry;->populateMediaMetadata(Lio/bidmachine/media3/common/MediaMetadata$Builder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-object p0
.end method

.method public populateFromMetadata(Ljava/util/List;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Metadata;",
            ">;)",
            "Lio/bidmachine/media3/common/MediaMetadata$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 491
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 492
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/Metadata;

    move v3, v0

    .line 493
    :goto_f
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Metadata;->length()I

    move-result v4

    if-ge v3, v4, :cond_1f

    .line 494
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/Metadata;->get(I)Lio/bidmachine/media3/common/Metadata$Entry;

    move-result-object v4

    .line 495
    invoke-interface {v4, p0}, Lio/bidmachine/media3/common/Metadata$Entry;->populateMediaMetadata(Lio/bidmachine/media3/common/MediaMetadata$Builder;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_22
    return-object p0
.end method

.method public setAlbumArtist(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 159
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setAlbumTitle(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 152
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setArtist(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 145
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setArtworkData([BLjava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    .line 236
    :cond_4
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_a
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->artworkData:[B

    .line 237
    iput-object p2, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setArtworkUri(Landroid/net/Uri;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 263
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setCompilation(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 423
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setComposer(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 388
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setConductor(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 395
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 184
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDiscNumber(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 402
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDisplayTitle(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 166
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDurationMs(Ljava/lang/Long;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 6

    if-eqz p1, :cond_f

    .line 199
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 200
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->durationMs:Ljava/lang/Long;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 444
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setFolderType(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGenre(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 416
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setIsBrowsable(Ljava/lang/Boolean;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 298
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->isBrowsable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIsPlayable(Ljava/lang/Boolean;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 305
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setMediaType(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 437
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->mediaType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRecordingDay(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 345
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRecordingMonth(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 334
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRecordingYear(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 322
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    return-object p0
.end method

.method public setReleaseDay(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 374
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    return-object p0
.end method

.method public setReleaseMonth(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 363
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method public setReleaseYear(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 352
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    return-object p0
.end method

.method public setStation(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 430
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 177
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSupportedCommands(Ljava/util/List;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/media3/common/MediaMetadata$Builder;"
        }
    .end annotation

    .line 455
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 138
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTotalDiscCount(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 409
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTotalTrackCount(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 277
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTrackNumber(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 270
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public setWriter(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    .registers 2

    .line 381
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    return-object p0
.end method
