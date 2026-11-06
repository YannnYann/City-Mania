###### Class io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistParser (io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistParser)
.class public final Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;,
        Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser<",
        "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;",
        ">;"
    }
.end annotation


# static fields
.field public static final REGEX_ASSET_LIST_URI:Ljava/util/regex/Pattern;

.field public static final REGEX_ASSET_URI:Ljava/util/regex/Pattern;

.field public static final REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

.field public static final REGEX_ATTR_DURATION:Ljava/util/regex/Pattern;

.field public static final REGEX_ATTR_DURATION_PREFIXED:Ljava/util/regex/Pattern;

.field public static final REGEX_AUDIO:Ljava/util/regex/Pattern;

.field public static final REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

.field public static final REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

.field public static final REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

.field public static final REGEX_BYTERANGE:Ljava/util/regex/Pattern;

.field public static final REGEX_BYTERANGE_LENGTH:Ljava/util/regex/Pattern;

.field public static final REGEX_BYTERANGE_START:Ljava/util/regex/Pattern;

.field public static final REGEX_CAN_BLOCK_RELOAD:Ljava/util/regex/Pattern;

.field public static final REGEX_CAN_SKIP_DATE_RANGES:Ljava/util/regex/Pattern;

.field public static final REGEX_CAN_SKIP_UNTIL:Ljava/util/regex/Pattern;

.field public static final REGEX_CHANNELS:Ljava/util/regex/Pattern;

.field public static final REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

.field public static final REGEX_CLASS:Ljava/util/regex/Pattern;

.field public static final REGEX_CLIENT_DEFINED_ATTRIBUTE_PREFIX:Ljava/util/regex/Pattern;

.field public static final REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

.field public static final REGEX_CODECS:Ljava/util/regex/Pattern;

.field public static final REGEX_CUE:Ljava/util/regex/Pattern;

.field public static final REGEX_DEFAULT:Ljava/util/regex/Pattern;

.field public static final REGEX_END_DATE:Ljava/util/regex/Pattern;

.field public static final REGEX_END_ON_NEXT:Ljava/util/regex/Pattern;

.field public static final REGEX_FORCED:Ljava/util/regex/Pattern;

.field public static final REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

.field public static final REGEX_GAP:Ljava/util/regex/Pattern;

.field public static final REGEX_GROUP_ID:Ljava/util/regex/Pattern;

.field public static final REGEX_HOLD_BACK:Ljava/util/regex/Pattern;

.field public static final REGEX_ID:Ljava/util/regex/Pattern;

.field public static final REGEX_IMPORT:Ljava/util/regex/Pattern;

.field public static final REGEX_INDEPENDENT:Ljava/util/regex/Pattern;

.field public static final REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

.field public static final REGEX_IV:Ljava/util/regex/Pattern;

.field public static final REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

.field public static final REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

.field public static final REGEX_LANGUAGE:Ljava/util/regex/Pattern;

.field public static final REGEX_LAST_MSN:Ljava/util/regex/Pattern;

.field public static final REGEX_LAST_PART:Ljava/util/regex/Pattern;

.field public static final REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

.field public static final REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

.field public static final REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

.field public static final REGEX_METHOD:Ljava/util/regex/Pattern;

.field public static final REGEX_NAME:Ljava/util/regex/Pattern;

.field public static final REGEX_PART_HOLD_BACK:Ljava/util/regex/Pattern;

.field public static final REGEX_PART_TARGET_DURATION:Ljava/util/regex/Pattern;

.field public static final REGEX_PLANNED_DURATION:Ljava/util/regex/Pattern;

.field public static final REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

.field public static final REGEX_PLAYOUT_LIMIT:Ljava/util/regex/Pattern;

.field public static final REGEX_PRECISE:Ljava/util/regex/Pattern;

.field public static final REGEX_PRELOAD_HINT_TYPE:Ljava/util/regex/Pattern;

.field public static final REGEX_RESOLUTION:Ljava/util/regex/Pattern;

.field public static final REGEX_RESTRICT:Ljava/util/regex/Pattern;

.field public static final REGEX_RESUME_OFFSET:Ljava/util/regex/Pattern;

.field public static final REGEX_SKIPPED_SEGMENTS:Ljava/util/regex/Pattern;

.field public static final REGEX_SNAP:Ljava/util/regex/Pattern;

.field public static final REGEX_START_DATE:Ljava/util/regex/Pattern;

.field public static final REGEX_SUBTITLES:Ljava/util/regex/Pattern;

.field public static final REGEX_SUPPLEMENTAL_CODECS:Ljava/util/regex/Pattern;

.field public static final REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

.field public static final REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

.field public static final REGEX_TYPE:Ljava/util/regex/Pattern;

.field public static final REGEX_URI:Ljava/util/regex/Pattern;

.field public static final REGEX_VALUE:Ljava/util/regex/Pattern;

.field public static final REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

.field public static final REGEX_VERSION:Ljava/util/regex/Pattern;

.field public static final REGEX_VIDEO:Ljava/util/regex/Pattern;

.field public static final REGEX_VIDEO_RANGE:Ljava/util/regex/Pattern;


# instance fields
.field public final multivariantPlaylist:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

.field public final previousMediaPlaylist:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 141
    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    .line 142
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 143
    const-string v0, "VIDEO=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO:Ljava/util/regex/Pattern;

    .line 144
    const-string v0, "AUDIO=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    .line 145
    const-string v0, "SUBTITLES=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SUBTITLES:Ljava/util/regex/Pattern;

    .line 146
    const-string v0, "CLOSED-CAPTIONS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

    .line 147
    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 148
    const-string v0, "CHANNELS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHANNELS:Ljava/util/regex/Pattern;

    .line 149
    const-string v0, "VIDEO-RANGE=(SDR|PQ|HLG)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO_RANGE:Ljava/util/regex/Pattern;

    .line 150
    const-string v0, "CODECS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    .line 151
    const-string v0, "SUPPLEMENTAL-CODECS=\"(.+?)\""

    .line 152
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SUPPLEMENTAL_CODECS:Ljava/util/regex/Pattern;

    .line 153
    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    .line 154
    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

    .line 155
    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    .line 156
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 157
    const-string v0, "DURATION=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_DURATION:Ljava/util/regex/Pattern;

    .line 158
    const-string v0, "[:,]DURATION=([\\d\\.]+)\\b"

    .line 159
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_DURATION_PREFIXED:Ljava/util/regex/Pattern;

    .line 160
    const-string v0, "PART-TARGET=([\\d\\.]+)\\b"

    .line 161
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 162
    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    .line 163
    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    .line 164
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

    .line 165
    const-string v0, "CAN-SKIP-UNTIL=([\\d\\.]+)\\b"

    .line 166
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_UNTIL:Ljava/util/regex/Pattern;

    .line 167
    const-string v0, "CAN-SKIP-DATERANGES"

    .line 168
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_DATE_RANGES:Ljava/util/regex/Pattern;

    .line 169
    const-string v0, "SKIPPED-SEGMENTS=(\\d+)\\b"

    .line 170
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SKIPPED_SEGMENTS:Ljava/util/regex/Pattern;

    .line 171
    const-string v0, "[:|,]HOLD-BACK=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 172
    const-string v0, "PART-HOLD-BACK=([\\d\\.]+)\\b"

    .line 173
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 174
    const-string v0, "CAN-BLOCK-RELOAD"

    .line 175
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_BLOCK_RELOAD:Ljava/util/regex/Pattern;

    .line 176
    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    .line 177
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    .line 178
    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    .line 179
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    .line 180
    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    .line 181
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

    .line 182
    const-string v0, "LAST-MSN=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_MSN:Ljava/util/regex/Pattern;

    .line 183
    const-string v0, "LAST-PART=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_PART:Ljava/util/regex/Pattern;

    .line 184
    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

    .line 185
    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    .line 186
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    .line 187
    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 188
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    .line 189
    const-string v0, "BYTERANGE-START=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_START:Ljava/util/regex/Pattern;

    .line 190
    const-string v0, "BYTERANGE-LENGTH=(\\d+)\\b"

    .line 191
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_LENGTH:Ljava/util/regex/Pattern;

    .line 192
    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    .line 193
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    .line 206
    const-string v0, "KEYFORMAT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    .line 207
    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    .line 208
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

    .line 209
    const-string v0, "URI=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 210
    const-string v0, "IV=([^,.*]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    .line 211
    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    .line 212
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    .line 222
    const-string v0, "TYPE=(PART|MAP)"

    .line 223
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRELOAD_HINT_TYPE:Ljava/util/regex/Pattern;

    .line 224
    const-string v0, "LANGUAGE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    .line 225
    const-string v0, "NAME=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 226
    const-string v0, "GROUP-ID=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    .line 227
    const-string v0, "CHARACTERISTICS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

    .line 228
    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    .line 229
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    .line 230
    const-string v0, "AUTOSELECT"

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    .line 231
    const-string v0, "DEFAULT"

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    .line 232
    const-string v0, "FORCED"

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    .line 233
    const-string v0, "INDEPENDENT"

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INDEPENDENT:Ljava/util/regex/Pattern;

    .line 234
    const-string v0, "GAP"

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GAP:Ljava/util/regex/Pattern;

    .line 235
    const-string v0, "PRECISE"

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRECISE:Ljava/util/regex/Pattern;

    .line 236
    const-string v0, "VALUE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 237
    const-string v0, "IMPORT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IMPORT:Ljava/util/regex/Pattern;

    .line 238
    const-string v0, "[:,]ID=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ID:Ljava/util/regex/Pattern;

    .line 239
    const-string v0, "CLASS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLASS:Ljava/util/regex/Pattern;

    .line 240
    const-string v0, "START-DATE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_START_DATE:Ljava/util/regex/Pattern;

    .line 241
    const-string v0, "CUE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CUE:Ljava/util/regex/Pattern;

    .line 242
    const-string v0, "END-DATE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_END_DATE:Ljava/util/regex/Pattern;

    .line 243
    const-string v0, "PLANNED-DURATION=([\\d\\.]+)\\b"

    .line 244
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLANNED_DURATION:Ljava/util/regex/Pattern;

    .line 245
    const-string v0, "END-ON-NEXT"

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_END_ON_NEXT:Ljava/util/regex/Pattern;

    .line 246
    const-string v0, "X-ASSET-URI=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ASSET_URI:Ljava/util/regex/Pattern;

    .line 247
    const-string v0, "X-ASSET-LIST=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ASSET_LIST_URI:Ljava/util/regex/Pattern;

    .line 248
    const-string v0, "X-RESUME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 249
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESUME_OFFSET:Ljava/util/regex/Pattern;

    .line 250
    const-string v0, "X-PLAYOUT-LIMIT=([\\d\\.]+)\\b"

    .line 251
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLAYOUT_LIMIT:Ljava/util/regex/Pattern;

    .line 252
    const-string v0, "X-SNAP=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SNAP:Ljava/util/regex/Pattern;

    .line 253
    const-string v0, "X-RESTRICT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESTRICT:Ljava/util/regex/Pattern;

    .line 254
    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    .line 255
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

    .line 256
    const-string v0, "\\b(X-[A-Z0-9-]+)="

    .line 257
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLIENT_DEFINED_ATTRIBUTE_PREFIX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 269
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->EMPTY:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V
    .registers 3

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->multivariantPlaylist:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 285
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->previousMediaPlaylist:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    return-void
.end method

.method public static checkPlaylistHeader(Ljava/io/BufferedReader;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v1, 0xef

    const/4 v2, 0x0

    if-ne v0, v1, :cond_20

    .line 333
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_1f

    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v1, 0xbf

    if-eq v0, v1, :cond_1a

    goto :goto_1f

    .line 337
    :cond_1a
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    goto :goto_20

    :cond_1f
    :goto_1f
    return v2

    :cond_20
    :goto_20
    const/4 v1, 0x1

    .line 339
    invoke-static {p0, v1, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I

    move-result v0

    move v1, v2

    :goto_26
    const/4 v3, 0x7

    if-ge v1, v3, :cond_39

    .line 342
    const-string v3, "#EXTM3U"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v0, v3, :cond_32

    return v2

    .line 345
    :cond_32
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 347
    :cond_39
    invoke-static {p0, v2, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I

    move-result p0

    .line 348
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->isLinebreak(I)Z

    move-result p0

    return p0
.end method

.method public static compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 2

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "NO"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "YES"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static getPlaylistProtectionSchemes(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)Lio/bidmachine/media3/common/DrmInitData;
    .registers 6

    .line 1291
    array-length v0, p1

    new-array v0, v0, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    const/4 v1, 0x0

    .line 1292
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_13

    .line 1293
    aget-object v2, p1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->copyWithData([B)Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1295
    :cond_13
    new-instance p1, Lio/bidmachine/media3/common/DrmInitData;

    invoke-direct {p1, p0, v0}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V

    return-object p1
.end method

.method public static getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p3, :cond_7

    return-object p3

    .line 1308
    :cond_7
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVariantWithAudioGroup(Ljava/util/ArrayList;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 681
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 682
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 683
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->audioGroupId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return-object v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVariantWithSubtitleGroup(Ljava/util/ArrayList;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 703
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 704
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 705
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->subtitleGroupId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return-object v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVariantWithVideoGroup(Ljava/util/ArrayList;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 692
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 693
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 694
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->videoGroupId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return-object v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isDolbyVisionFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 364
    invoke-static {p1, p2}, Lio/bidmachine/media3/common/MimeTypes;->isDolbyVisionCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    :cond_8
    const/4 p1, 0x1

    if-nez p2, :cond_c

    return p1

    :cond_c
    if-eqz p0, :cond_43

    if-nez p3, :cond_11

    goto :goto_43

    .line 375
    :cond_11
    const-string p2, "PQ"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    const-string p2, "db1p"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_41

    :cond_21
    const-string p2, "SDR"

    .line 376
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_31

    const-string p2, "db2g"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_41

    :cond_31
    const-string p2, "HLG"

    .line 377
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    const-string p0, "db4"

    invoke-virtual {p3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_42

    :cond_41
    return v0

    :cond_42
    return p1

    :cond_43
    :goto_43
    return v0
.end method

.method public static parseClientDefinedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1481
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1482
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 1483
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_25

    move v0, v3

    goto :goto_26

    :cond_25
    const/4 v0, 0x2

    :goto_26
    add-int/2addr v0, v1

    .line 1485
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1486
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\"(.+?)\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1489
    invoke-static {p0, v0, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 1490
    new-instance p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p2

    .line 1492
    :cond_53
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    goto :goto_83

    .line 1500
    :cond_64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=([\\d\\.]+)\\b"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 1501
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    .line 1502
    invoke-static {p0, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;-><init>(Ljava/lang/String;D)V

    return-object v0

    .line 1494
    :cond_83
    :goto_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=(0[xX][A-F0-9]+)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1495
    invoke-static {p0, v0, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 1496
    new-instance p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    invoke-direct {p2, p1, p0, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p2
.end method

.method public static parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1436
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/media3/common/DrmInitData$SchemeData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1353
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

    .line 1354
    const-string v1, "1"

    invoke-static {p0, v0, v1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    const-string v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x2c

    const-string v5, "video/mp4"

    if-eqz v2, :cond_2f

    .line 1356
    sget-object p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 1357
    new-instance p1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    sget-object p2, Lio/bidmachine/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 1360
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {p1, p2, v5, p0}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    .line 1361
    :cond_2f
    const-string v2, "com.widevine"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1362
    new-instance p1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    sget-object p2, Lio/bidmachine/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    const-string v0, "hls"

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {p1, p2, v0, p0}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    .line 1363
    :cond_45
    const-string v2, "com.microsoft.playready"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_71

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_71

    .line 1364
    sget-object p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 1365
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 1366
    sget-object p1, Lio/bidmachine/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-static {p1, p0}, Lio/bidmachine/media3/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object p0

    .line 1367
    new-instance p2, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    invoke-direct {p2, p1, v5, p0}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p2

    :cond_71
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1400
    const-string v0, "SAMPLE-AES-CENC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "SAMPLE-AES-CTR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_14

    .line 1402
    :cond_11
    const-string p0, "cbcs"

    return-object p0

    .line 1401
    :cond_14
    :goto_14
    const-string p0, "cenc"

    return-object p0
.end method

.method public static parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1406
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static parseLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1418
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseMediaPlaylist(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .registers 116
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 724
    iget-boolean v4, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;->hasIndependentSegments:Z

    .line 727
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 728
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 729
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 730
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 732
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 733
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 734
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 751
    new-instance v12, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v20, 0x0

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v15, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v12 .. v20}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;-><init>(JZJJZ)V

    .line 762
    new-instance v13, Ljava/util/TreeMap;

    invoke-direct {v13}, Ljava/util/TreeMap;-><init>()V

    const-wide/16 v17, 0x0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 764
    const-string v3, ""

    move-object/from16 v23, v3

    move/from16 v25, v4

    move-wide/from16 v26, v17

    move-wide/from16 v37, v26

    move-wide/from16 v46, v37

    move-wide/from16 v56, v46

    move-wide/from16 v64, v56

    move-wide/from16 v78, v64

    move-wide/from16 v81, v78

    move-wide/from16 v83, v81

    move-wide/from16 v44, v20

    move-wide/from16 v48, v44

    move-wide/from16 v50, v48

    move-wide/from16 v52, v50

    move-object/from16 v39, v23

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v28, 0x0

    const/16 v36, 0x0

    const-wide/16 v40, -0x1

    const/16 v42, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v60, 0x0

    const/16 v63, 0x0

    const/16 v67, 0x0

    const-wide/16 v76, -0x1

    const/16 v80, 0x0

    const/16 v85, 0x2

    move-wide/from16 v18, v83

    const/16 v17, 0x0

    .line 767
    :cond_91
    :goto_91
    invoke-virtual/range {p2 .. p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_975

    .line 768
    invoke-virtual/range {p2 .. p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v15

    .line 770
    const-string v14, "#EXT"

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a6

    .line 772
    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_a6
    const-string v14, "#EXT-X-PLAYLIST-TYPE"

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_ca

    .line 776
    sget-object v14, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v15, v14, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    .line 777
    const-string v15, "VOD"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_bf

    const/16 v24, 0x1

    goto :goto_91

    .line 779
    :cond_bf
    const-string v15, "EVENT"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_91

    move/from16 v24, v85

    goto :goto_91

    .line 782
    :cond_ca
    const-string v14, "#EXT-X-I-FRAMES-ONLY"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d5

    const/16 v80, 0x1

    goto :goto_91

    .line 784
    :cond_d5
    const-string v14, "#EXT-X-START"

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    const-wide v29, 0x412e848000000000L    # 1000000.0

    if-eqz v14, :cond_fa

    .line 785
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

    invoke-static {v15, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v31

    move-object v14, v3

    mul-double v3, v31, v29

    double-to-long v3, v3

    move-wide/from16 v29, v3

    .line 786
    sget-object v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRECISE:Ljava/util/regex/Pattern;

    const/4 v4, 0x0

    .line 787
    invoke-static {v15, v3, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v3

    move v4, v3

    move-object v3, v14

    move-wide/from16 v44, v29

    goto :goto_91

    :cond_fa
    move-object v14, v3

    .line 788
    const-string v3, "#EXT-X-SERVER-CONTROL"

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_109

    .line 789
    invoke-static {v15}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseServerControl(Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    move-result-object v12

    move-object v3, v14

    goto :goto_91

    .line 790
    :cond_109
    const-string v3, "#EXT-X-PART-INF"

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_123

    .line 791
    sget-object v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_TARGET_DURATION:Ljava/util/regex/Pattern;

    invoke-static {v15, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v31

    move/from16 v88, v4

    mul-double v3, v31, v29

    double-to-long v3, v3

    move-wide/from16 v52, v3

    move-object v3, v14

    :goto_11f
    move/from16 v4, v88

    goto/16 :goto_91

    :cond_123
    move/from16 v88, v4

    .line 793
    const-string v3, "#EXT-X-MAP"

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "@"

    if-eqz v3, :cond_17f

    .line 794
    sget-object v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v15, v3, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v30

    .line 795
    sget-object v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v15, v3, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_153

    .line 797
    invoke-static {v3, v4}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v87, 0x0

    .line 798
    aget-object v4, v3, v87

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v40

    .line 799
    array-length v4, v3

    const/4 v15, 0x1

    if-le v4, v15, :cond_153

    .line 800
    aget-object v3, v3, v15

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    :cond_153
    move-wide/from16 v33, v40

    cmp-long v3, v33, v76

    if-nez v3, :cond_15c

    move-wide/from16 v31, v46

    goto :goto_15e

    :cond_15c
    move-wide/from16 v31, v26

    :goto_15e
    if-eqz v67, :cond_162

    if-eqz v36, :cond_164

    :cond_162
    const/4 v4, 0x0

    goto :goto_16c

    .line 809
    :cond_164
    const-string v0, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lio/bidmachine/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 814
    :goto_16c
    new-instance v29, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v35, v67

    invoke-direct/range {v29 .. v36}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_177

    add-long v31, v31, v33

    :cond_177
    move-wide/from16 v26, v31

    move-object v3, v14

    move-object/from16 v60, v29

    move-wide/from16 v40, v76

    goto :goto_11f

    :cond_17f
    move-object/from16 v89, v10

    move-object/from16 v90, v12

    move-object/from16 v3, v36

    move-object/from16 v10, v67

    const/16 v86, 0x0

    .line 825
    const-string v12, "#EXT-X-TARGETDURATION"

    invoke-virtual {v15, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1ab

    .line 826
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    invoke-static {v15, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v4

    move-object v12, v14

    int-to-long v14, v4

    const-wide/32 v29, 0xf4240

    mul-long v50, v14, v29

    :goto_19e
    move-object/from16 v36, v3

    move-object/from16 v67, v10

    move-object v3, v12

    :goto_1a3
    move/from16 v4, v88

    move-object/from16 v10, v89

    :goto_1a7
    move-object/from16 v12, v90

    goto/16 :goto_91

    :cond_1ab
    move-object v12, v14

    .line 827
    const-string v14, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1c2

    .line 828
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    invoke-static {v15, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v78

    move-object/from16 v36, v3

    move-object/from16 v67, v10

    move-object v3, v12

    move-wide/from16 v18, v78

    goto :goto_1a3

    .line 830
    :cond_1c2
    const-string v14, "#EXT-X-VERSION"

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1d1

    .line 831
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    invoke-static {v15, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v20

    goto :goto_19e

    .line 832
    :cond_1d1
    const-string v14, "#EXT-X-DEFINE"

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_217

    .line 833
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IMPORT:Ljava/util/regex/Pattern;

    invoke-static {v15, v4, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1ef

    .line 835
    iget-object v14, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variableDefinitions:Ljava/util/Map;

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_1fe

    .line 837
    invoke-virtual {v5, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1fe

    .line 842
    :cond_1ef
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 843
    invoke-static {v15, v4, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    sget-object v14, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 844
    invoke-static {v15, v14, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    .line 842
    invoke-virtual {v5, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1fe
    :goto_1fe
    move-object v1, v11

    move-object v4, v12

    move-object/from16 v67, v23

    :goto_202
    move-wide/from16 v33, v37

    move-object/from16 v29, v39

    move-object/from16 v0, v54

    move-object/from16 v66, v60

    move/from16 v14, v63

    move-wide/from16 v11, v78

    move-wide/from16 v30, v81

    move-object/from16 v54, v13

    move-wide/from16 v62, v26

    :goto_214
    const/4 v13, 0x0

    goto/16 :goto_94d

    .line 846
    :cond_217
    const-string v14, "#EXTINF"

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_22f

    .line 847
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    invoke-static {v15, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseTimeSecondsToUs(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v81

    .line 848
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

    move-object/from16 v14, v23

    invoke-static {v15, v4, v14, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_19e

    :cond_22f
    move-object/from16 v14, v23

    .line 849
    const-string v0, "#EXT-X-SKIP"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v31, 0x1

    if-eqz v0, :cond_2e7

    .line 850
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SKIPPED_SEGMENTS:Ljava/util/regex/Pattern;

    invoke-static {v15, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v0

    if-eqz v1, :cond_24b

    .line 851
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_24b

    const/4 v4, 0x1

    goto :goto_24c

    :cond_24b
    const/4 v4, 0x0

    :goto_24c
    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 852
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-object/from16 v23, v11

    move-object/from16 v33, v12

    iget-wide v11, v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long v11, v18, v11

    long-to-int v4, v11

    add-int/2addr v0, v4

    if-ltz v4, :cond_2e1

    .line 854
    iget-object v11, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-gt v0, v11, :cond_2e1

    move-object/from16 v36, v3

    move-object/from16 v67, v10

    move-object/from16 v3, v33

    move-wide/from16 v10, v37

    :goto_271
    if-ge v4, v0, :cond_2cf

    .line 859
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-object v12, v14

    .line 860
    iget-wide v14, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v14, v18, v14

    if-eqz v14, :cond_28d

    .line 864
    iget v14, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    sub-int v14, v14, v55

    iget v15, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeDiscontinuitySequence:I

    add-int/2addr v14, v15

    .line 868
    invoke-virtual {v3, v10, v11, v14}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->copyWith(JI)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v3

    .line 870
    :cond_28d
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    iget-wide v14, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    add-long v64, v10, v14

    .line 873
    iget-wide v10, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeLength:J

    cmp-long v14, v10, v76

    if-eqz v14, :cond_29e

    .line 874
    iget-wide v14, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeOffset:J

    add-long v26, v14, v10

    .line 876
    :cond_29e
    iget v10, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeDiscontinuitySequence:I

    .line 877
    iget-object v11, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->initializationSegment:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 878
    iget-object v14, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    .line 879
    iget-object v15, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    move/from16 v29, v0

    .line 880
    iget-object v0, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->encryptionIV:Ljava/lang/String;

    if-eqz v0, :cond_2b6

    .line 881
    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ba

    .line 882
    :cond_2b6
    iget-object v0, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->encryptionIV:Ljava/lang/String;

    move-object/from16 v36, v0

    :cond_2ba
    add-long v78, v78, v31

    const/16 v22, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move/from16 v63, v10

    move-object/from16 v60, v11

    move-object v3, v14

    move-object/from16 v67, v15

    move/from16 v0, v29

    move-wide/from16 v10, v64

    move-object v14, v12

    goto :goto_271

    :cond_2cf
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v37, v10

    move-object/from16 v11, v23

    move/from16 v4, v88

    move-object/from16 v10, v89

    move-object/from16 v12, v90

    :goto_2dd
    move-object/from16 v23, v14

    goto/16 :goto_91

    .line 856
    :cond_2e1
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;-><init>()V

    throw v0

    :cond_2e7
    move-object/from16 v23, v11

    move-object/from16 v33, v12

    move-object v12, v14

    .line 886
    const-string v0, "#EXT-X-KEY"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35f

    .line 887
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    invoke-static {v15, v0, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 888
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    .line 889
    const-string v3, "identity"

    invoke-static {v15, v1, v3, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 892
    const-string v4, "NONE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_314

    .line 893
    invoke-virtual {v13}, Ljava/util/TreeMap;->clear()V

    move-object/from16 v3, v86

    move-object/from16 v36, v3

    move-object/from16 v67, v36

    goto :goto_351

    .line 896
    :cond_314
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    invoke-static {v15, v4, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 897
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33c

    .line 898
    const-string v1, "AES-128"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_335

    .line 900
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v15, v0, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v67, v0

    move-object/from16 v36, v4

    move-object/from16 v3, v33

    goto :goto_351

    :cond_335
    move-object/from16 v36, v4

    move-object/from16 v3, v33

    move-object/from16 v67, v86

    goto :goto_351

    :cond_33c
    if-nez v2, :cond_342

    .line 907
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 909
    :cond_342
    invoke-static {v15, v1, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    move-result-object v0

    if-eqz v0, :cond_335

    .line 912
    invoke-virtual {v13, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v36, v4

    move-object/from16 v3, v86

    move-object/from16 v67, v3

    :goto_351
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, v23

    :goto_357
    move/from16 v4, v88

    move-object/from16 v10, v89

    :goto_35b
    move-object/from16 v23, v12

    goto/16 :goto_1a7

    .line 916
    :cond_35f
    const-string v0, "#EXT-X-BYTERANGE"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_392

    .line 917
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v15, v0, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 918
    invoke-static {v0, v4}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v87, 0x0

    .line 919
    aget-object v1, v0, v87

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v40

    .line 920
    array-length v1, v0

    const/4 v11, 0x1

    if-le v1, v11, :cond_385

    .line 921
    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide/from16 v26, v0

    :cond_385
    :goto_385
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v36, v3

    move-object/from16 v67, v10

    :goto_38d
    move-object/from16 v11, v23

    move-object/from16 v3, v33

    goto :goto_357

    :cond_392
    const/4 v11, 0x1

    .line 923
    const-string v0, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x3a

    if-eqz v0, :cond_3b5

    .line 925
    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v55

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v36, v3

    move-object/from16 v67, v10

    move/from16 v21, v11

    goto :goto_38d

    .line 926
    :cond_3b5
    const-string v0, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c0

    add-int/lit8 v63, v63, 0x1

    goto :goto_385

    .line 928
    :cond_3c0
    const-string v0, "#EXT-X-PROGRAM-DATE-TIME"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e8

    cmp-long v0, v56, v46

    if-nez v0, :cond_3e0

    .line 931
    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    sub-long v56, v0, v37

    goto :goto_385

    :cond_3e0
    move-object/from16 v67, v12

    :goto_3e2
    move-object/from16 v1, v23

    move-object/from16 v4, v33

    goto/16 :goto_202

    .line 934
    :cond_3e8
    const-string v0, "#EXT-X-GAP"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_404

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v36, v3

    move-object/from16 v67, v10

    move-object/from16 v11, v23

    move-object/from16 v3, v33

    move/from16 v4, v88

    move-object/from16 v10, v89

    const/16 v42, 0x1

    goto/16 :goto_35b

    .line 936
    :cond_404
    const-string v0, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_420

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v36, v3

    move-object/from16 v67, v10

    move-object/from16 v11, v23

    move-object/from16 v3, v33

    move/from16 v4, v88

    move-object/from16 v10, v89

    const/16 v25, 0x1

    goto/16 :goto_35b

    .line 938
    :cond_420
    const-string v0, "#EXT-X-ENDLIST"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v36, v3

    move-object/from16 v67, v10

    move-object/from16 v11, v23

    move-object/from16 v3, v33

    move/from16 v4, v88

    move-object/from16 v10, v89

    const/16 v17, 0x1

    goto/16 :goto_35b

    .line 940
    :cond_43c
    const-string v0, "#EXT-X-RENDITION-REPORT"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_470

    .line 941
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_MSN:Ljava/util/regex/Pattern;

    move-object v14, v12

    move-wide/from16 v11, v76

    invoke-static {v15, v0, v11, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v0

    .line 942
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_PART:Ljava/util/regex/Pattern;

    const/4 v11, -0x1

    invoke-static {v15, v4, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;I)I

    move-result v4

    .line 943
    sget-object v11, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v15, v11, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, p3

    .line 944
    invoke-static {v12, v11}, Lio/bidmachine/media3/common/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 945
    new-instance v15, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    invoke-direct {v15, v11, v0, v1, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;-><init>(Landroid/net/Uri;JI)V

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v67, v14

    goto/16 :goto_3e2

    :cond_470
    move-object v14, v12

    move-object/from16 v12, p3

    .line 946
    const-string v0, "#EXT-X-PRELOAD-HINT"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_527

    move-object/from16 v0, v54

    if-eqz v0, :cond_498

    :goto_47f
    move-object/from16 v54, v13

    move-object/from16 v67, v14

    move-object/from16 v1, v23

    move-object/from16 v4, v33

    move-wide/from16 v33, v37

    move-object/from16 v29, v39

    move-object/from16 v66, v60

    move/from16 v14, v63

    move-wide/from16 v11, v78

    move-wide/from16 v30, v81

    const/4 v13, 0x0

    move-wide/from16 v62, v26

    goto/16 :goto_94d

    .line 950
    :cond_498
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRELOAD_HINT_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v15, v1, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 951
    const-string v4, "PART"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a7

    goto :goto_47f

    .line 954
    :cond_4a7
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v15, v1, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v59

    .line 955
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_START:Ljava/util/regex/Pattern;

    const-wide/16 v11, -0x1

    .line 956
    invoke-static {v15, v1, v11, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v29

    .line 957
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_LENGTH:Ljava/util/regex/Pattern;

    .line 958
    invoke-static {v15, v1, v11, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v71

    move-wide/from16 v11, v78

    .line 961
    invoke-static {v11, v12, v10, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    if-nez v33, :cond_4e8

    .line 963
    invoke-virtual {v13}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e8

    .line 964
    invoke-virtual {v13}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v4, 0x0

    new-array v15, v4, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    invoke-interface {v1, v15}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 965
    new-instance v4, Lio/bidmachine/media3/common/DrmInitData;

    invoke-direct {v4, v2, v1}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V

    if-nez v28, :cond_4e3

    .line 967
    invoke-static {v2, v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getPlaylistProtectionSchemes(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)Lio/bidmachine/media3/common/DrmInitData;

    move-result-object v1

    move-object/from16 v28, v1

    :cond_4e3
    move-object/from16 v66, v4

    :goto_4e5
    const-wide/16 v76, -0x1

    goto :goto_4eb

    :cond_4e8
    move-object/from16 v66, v33

    goto :goto_4e5

    :goto_4eb
    cmp-long v1, v29, v76

    if-eqz v1, :cond_4f7

    cmp-long v4, v71, v76

    if-eqz v4, :cond_4f4

    goto :goto_4f7

    :cond_4f4
    move-object/from16 v54, v0

    goto :goto_50f

    .line 972
    :cond_4f7
    :goto_4f7
    new-instance v58, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    if-eqz v1, :cond_4fe

    move-wide/from16 v69, v29

    goto :goto_500

    :cond_4fe
    move-wide/from16 v69, v46

    :goto_500
    const/16 v74, 0x0

    const/16 v75, 0x1

    const-wide/16 v61, 0x0

    const/16 v73, 0x0

    move-object/from16 v67, v10

    .line 982
    invoke-direct/range {v58 .. v75}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;-><init>(Ljava/lang/String;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;JIJLio/bidmachine/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    move-object/from16 v54, v58

    :goto_50f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v36, v3

    move-object/from16 v67, v10

    move-wide/from16 v78, v11

    move-object/from16 v11, v23

    move-object/from16 v3, v66

    move/from16 v4, v88

    move-object/from16 v10, v89

    move-object/from16 v12, v90

    const-wide/16 v76, -0x1

    goto/16 :goto_2dd

    :cond_527
    move-object/from16 v0, v54

    move-wide/from16 v11, v78

    .line 988
    const-string v1, "#EXT-X-PART"

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5fd

    .line 991
    invoke-static {v11, v12, v10, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 993
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v15, v1, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v59

    .line 994
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_DURATION:Ljava/util/regex/Pattern;

    .line 995
    invoke-static {v15, v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v31

    move-object v1, v13

    move-object/from16 v34, v14

    mul-double v13, v31, v29

    double-to-long v13, v13

    move-object/from16 v54, v1

    .line 996
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INDEPENDENT:Ljava/util/regex/Pattern;

    move-object/from16 v35, v10

    const/4 v10, 0x0

    .line 997
    invoke-static {v15, v1, v10}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    if-eqz v25, :cond_55f

    .line 999
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_55f

    const/16 v29, 0x1

    goto :goto_561

    :cond_55f
    move/from16 v29, v10

    :goto_561
    or-int v74, v1, v29

    .line 1000
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GAP:Ljava/util/regex/Pattern;

    invoke-static {v15, v1, v10}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v73

    .line 1002
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v15, v1, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_58a

    .line 1005
    invoke-static {v1, v4}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1006
    aget-object v4, v1, v10

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    .line 1007
    array-length v4, v1

    const/4 v15, 0x1

    if-le v4, v15, :cond_585

    .line 1008
    aget-object v1, v1, v15

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v83

    :cond_585
    move-wide/from16 v71, v29

    :goto_587
    const-wide/16 v76, -0x1

    goto :goto_58d

    :cond_58a
    const-wide/16 v71, -0x1

    goto :goto_587

    :goto_58d
    cmp-long v1, v71, v76

    if-nez v1, :cond_594

    move-wide/from16 v69, v46

    goto :goto_596

    :cond_594
    move-wide/from16 v69, v83

    :goto_596
    if-nez v33, :cond_5bb

    .line 1014
    invoke-virtual/range {v54 .. v54}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5bb

    .line 1015
    invoke-virtual/range {v54 .. v54}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    const/4 v10, 0x0

    new-array v15, v10, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    invoke-interface {v4, v15}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 1016
    new-instance v10, Lio/bidmachine/media3/common/DrmInitData;

    invoke-direct {v10, v2, v4}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V

    if-nez v28, :cond_5b8

    .line 1018
    invoke-static {v2, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getPlaylistProtectionSchemes(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)Lio/bidmachine/media3/common/DrmInitData;

    move-result-object v4

    move-object/from16 v28, v4

    :cond_5b8
    move-object/from16 v66, v10

    goto :goto_5bd

    :cond_5bb
    move-object/from16 v66, v33

    .line 1021
    :goto_5bd
    new-instance v58, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    const/16 v75, 0x0

    move-wide/from16 v61, v13

    move-object/from16 v67, v35

    invoke-direct/range {v58 .. v75}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;-><init>(Ljava/lang/String;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;JIJLio/bidmachine/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    move-object/from16 v13, v58

    move-object/from16 v4, v60

    move/from16 v14, v63

    move-object/from16 v10, v67

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v64, v64, v61

    if-eqz v1, :cond_5d9

    add-long v69, v69, v71

    :cond_5d9
    move-wide/from16 v83, v69

    move-object/from16 v1, p1

    move-object/from16 v36, v3

    move-object/from16 v60, v4

    move-object/from16 v67, v10

    move-wide/from16 v78, v11

    move/from16 v63, v14

    move-object/from16 v11, v23

    move-object/from16 v23, v34

    move-object/from16 v13, v54

    move-object/from16 v3, v66

    move/from16 v4, v88

    move-object/from16 v10, v89

    move-object/from16 v12, v90

    const-wide/16 v76, -0x1

    move-object/from16 v54, v0

    :goto_5f9
    move-object/from16 v0, p0

    goto/16 :goto_91

    :cond_5fd
    move-object/from16 v54, v13

    move-object/from16 v34, v14

    move-object/from16 v4, v60

    move/from16 v14, v63

    .line 1040
    const-string v1, "#EXT-X-DATERANGE"

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_872

    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLASS:Ljava/util/regex/Pattern;

    move-object/from16 v13, v34

    .line 1041
    invoke-static {v15, v1, v13, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v66, v4

    const-string v4, "com.apple.hls.interstitial"

    .line 1042
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_869

    .line 1043
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ID:Ljava/util/regex/Pattern;

    invoke-static {v15, v1, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v92

    .line 1045
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ASSET_URI:Ljava/util/regex/Pattern;

    invoke-static {v15, v1, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_634

    .line 1047
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v93, v4

    goto :goto_636

    :cond_634
    move-object/from16 v93, v86

    .line 1050
    :goto_636
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ASSET_LIST_URI:Ljava/util/regex/Pattern;

    .line 1051
    invoke-static {v15, v1, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_645

    .line 1053
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v94, v4

    goto :goto_647

    :cond_645
    move-object/from16 v94, v86

    .line 1055
    :goto_647
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_START_DATE:Ljava/util/regex/Pattern;

    .line 1056
    invoke-static {v15, v1, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v95

    .line 1059
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_END_DATE:Ljava/util/regex/Pattern;

    .line 1060
    invoke-static {v15, v1, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_668

    .line 1062
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v31

    move-wide/from16 v97, v31

    goto :goto_66a

    :cond_668
    move-wide/from16 v97, v48

    .line 1064
    :goto_66a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CUE:Ljava/util/regex/Pattern;

    invoke-static {v15, v4, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v43, v8

    .line 1066
    const-string v8, ","

    if-eqz v4, :cond_6d3

    .line 1067
    invoke-static {v4, v8}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v67, v13

    .line 1068
    array-length v13, v4

    move-object/from16 v31, v4

    const/4 v4, 0x0

    :goto_685
    if-ge v4, v13, :cond_6d5

    aget-object v32, v31, v4

    move/from16 v34, v4

    .line 1069
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1070
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v32

    sparse-switch v32, :sswitch_data_a0e

    move/from16 v32, v13

    :goto_69b
    const/4 v13, -0x1

    goto :goto_6c4

    :sswitch_69d
    move/from16 v32, v13

    const-string v13, "POST"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6a8

    goto :goto_6c2

    :cond_6a8
    move/from16 v13, v85

    goto :goto_6c4

    :sswitch_6ab
    move/from16 v32, v13

    const-string v13, "ONCE"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6b6

    goto :goto_6c2

    :cond_6b6
    const/4 v13, 0x1

    goto :goto_6c4

    :sswitch_6b8
    move/from16 v32, v13

    const-string v13, "PRE"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6c3

    :goto_6c2
    goto :goto_69b

    :cond_6c3
    const/4 v13, 0x0

    :goto_6c4
    packed-switch v13, :pswitch_data_a1c

    :goto_6c7
    const/16 v22, 0x1

    goto :goto_6ce

    .line 1074
    :pswitch_6ca
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6c7

    :goto_6ce
    add-int/lit8 v4, v34, 0x1

    move/from16 v13, v32

    goto :goto_685

    :cond_6d3
    move-object/from16 v67, v13

    .line 1081
    :cond_6d5
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_DURATION_PREFIXED:Ljava/util/regex/Pattern;

    move/from16 v34, v14

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-static {v15, v4, v13, v14}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v31

    const-wide/16 v35, 0x0

    cmpl-double v4, v31, v35

    if-ltz v4, :cond_6eb

    mul-double v13, v31, v29

    double-to-long v13, v13

    move-wide/from16 v99, v13

    goto :goto_6ed

    :cond_6eb
    move-wide/from16 v99, v48

    .line 1086
    :goto_6ed
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLANNED_DURATION:Ljava/util/regex/Pattern;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-static {v15, v4, v13, v14}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v31

    cmpl-double v4, v31, v35

    if-ltz v4, :cond_6ff

    mul-double v13, v31, v29

    double-to-long v13, v13

    move-wide/from16 v101, v13

    goto :goto_701

    :cond_6ff
    move-wide/from16 v101, v48

    .line 1091
    :goto_701
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_END_ON_NEXT:Ljava/util/regex/Pattern;

    const/4 v13, 0x0

    invoke-static {v15, v4, v13}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v104

    .line 1092
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESUME_OFFSET:Ljava/util/regex/Pattern;

    const-wide/16 v13, 0x1

    .line 1093
    invoke-static {v15, v4, v13, v14}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v31

    cmpl-double v4, v31, v13

    if-eqz v4, :cond_71a

    mul-double v13, v31, v29

    double-to-long v13, v13

    move-wide/from16 v105, v13

    goto :goto_71c

    :cond_71a
    move-wide/from16 v105, v48

    .line 1098
    :goto_71c
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLAYOUT_LIMIT:Ljava/util/regex/Pattern;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-static {v15, v4, v13, v14}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v13

    cmpl-double v4, v13, v35

    if-ltz v4, :cond_72e

    mul-double v13, v13, v29

    double-to-long v13, v13

    move-wide/from16 v107, v13

    goto :goto_730

    :cond_72e
    move-wide/from16 v107, v48

    .line 1103
    :goto_730
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    sget-object v13, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SNAP:Ljava/util/regex/Pattern;

    invoke-static {v15, v13, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_770

    .line 1106
    invoke-static {v13, v8}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1107
    array-length v14, v13

    move-object/from16 v103, v1

    const/4 v1, 0x0

    :goto_745
    if-ge v1, v14, :cond_772

    aget-object v29, v13, v1

    move/from16 v30, v1

    .line 1108
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1109
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v29, v13

    const-string v13, "IN"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_767

    const-string v13, "OUT"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_767

    :goto_764
    const/16 v22, 0x1

    goto :goto_76b

    .line 1112
    :cond_767
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_764

    :goto_76b
    add-int/lit8 v1, v30, 0x1

    move-object/from16 v13, v29

    goto :goto_745

    :cond_770
    move-object/from16 v103, v1

    .line 1119
    :cond_772
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1120
    sget-object v13, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESTRICT:Ljava/util/regex/Pattern;

    .line 1121
    invoke-static {v15, v13, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7b2

    .line 1123
    invoke-static {v13, v8}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1124
    array-length v13, v8

    const/4 v14, 0x0

    :goto_785
    if-ge v14, v13, :cond_7b2

    aget-object v29, v8, v14

    move-object/from16 v109, v4

    .line 1125
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1126
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v29, v8

    const-string v8, "JUMP"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7a7

    const-string v8, "SKIP"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7a7

    :goto_7a4
    const/16 v22, 0x1

    goto :goto_7ab

    .line 1129
    :cond_7a7
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7a4

    :goto_7ab
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v29

    move-object/from16 v4, v109

    goto :goto_785

    :cond_7b2
    move-object/from16 v109, v4

    .line 1137
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v4}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/16 v8, 0x11

    .line 1139
    invoke-virtual {v15, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1140
    sget-object v13, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLIENT_DEFINED_ATTRIBUTE_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 1141
    :goto_7c5
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_83c

    .line 1142
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    .line 1143
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_a26

    :goto_7d9
    const/4 v15, -0x1

    goto :goto_81d

    :sswitch_7db
    const-string v15, "X-ASSET-URI="

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7e4

    goto :goto_7d9

    :cond_7e4
    const/4 v15, 0x5

    goto :goto_81d

    :sswitch_7e6
    const-string v15, "X-RESUME-OFFSET="

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7ef

    goto :goto_7d9

    :cond_7ef
    const/4 v15, 0x4

    goto :goto_81d

    :sswitch_7f1
    const-string v15, "X-RESTRICT="

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7fa

    goto :goto_7d9

    :cond_7fa
    const/4 v15, 0x3

    goto :goto_81d

    :sswitch_7fc
    const-string v15, "X-ASSET-LIST="

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_805

    goto :goto_7d9

    :cond_805
    move/from16 v15, v85

    goto :goto_81d

    :sswitch_808
    const-string v15, "X-PLAYOUT-LIMIT="

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_811

    goto :goto_7d9

    :cond_811
    const/4 v15, 0x1

    goto :goto_81d

    :sswitch_813
    const-string v15, "X-SNAP="

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_81c

    goto :goto_7d9

    :cond_81c
    const/4 v15, 0x0

    :goto_81d
    packed-switch v15, :pswitch_data_a40

    .line 1156
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v22, 0x1

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v110, v1

    const/4 v1, 0x0

    invoke-virtual {v14, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1154
    invoke-static {v8, v14, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseClientDefinedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    move-result-object v1

    .line 1153
    invoke-virtual {v4, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_839

    :pswitch_837
    move-object/from16 v110, v1

    :goto_839
    move-object/from16 v1, v110

    goto :goto_7c5

    :cond_83c
    move-object/from16 v110, v1

    if-nez v94, :cond_842

    if-nez v93, :cond_846

    :cond_842
    if-eqz v94, :cond_857

    if-nez v93, :cond_857

    .line 1163
    :cond_846
    new-instance v91, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;

    .line 1178
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v111

    invoke-direct/range {v91 .. v111}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JJJJLjava/util/List;ZJJLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v1, v23

    move-object/from16 v4, v91

    .line 1163
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_859

    :cond_857
    move-object/from16 v1, v23

    :cond_859
    :goto_859
    move-wide/from16 v62, v26

    move-object/from16 v4, v33

    move/from16 v14, v34

    move-wide/from16 v33, v37

    move-object/from16 v29, v39

    move-object/from16 v8, v43

    move-wide/from16 v30, v81

    goto/16 :goto_214

    :cond_869
    move-object/from16 v67, v13

    move-object/from16 v43, v8

    move/from16 v34, v14

    move-object/from16 v1, v23

    goto :goto_87c

    :cond_872
    move-object/from16 v66, v4

    move-object/from16 v67, v34

    move-object/from16 v43, v8

    move-object/from16 v1, v23

    move/from16 v34, v14

    .line 1180
    :goto_87c
    const-string v4, "#"

    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_859

    move-object/from16 v4, v33

    move/from16 v14, v34

    move-wide/from16 v33, v37

    .line 1183
    invoke-static {v11, v12, v10, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    add-long v78, v11, v31

    .line 1186
    invoke-static {v15, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 1187
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    const-wide/16 v76, -0x1

    cmp-long v12, v40, v76

    if-nez v12, :cond_8a5

    move-object/from16 v60, v11

    move-wide/from16 v26, v46

    goto :goto_8c8

    :cond_8a5
    if-eqz v80, :cond_8c2

    if-nez v66, :cond_8c2

    if-nez v11, :cond_8c2

    .line 1197
    new-instance v58, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-wide/16 v60, 0x0

    move-object/from16 v59, v8

    move-wide/from16 v62, v26

    invoke-direct/range {v58 .. v65}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v11, v58

    .line 1204
    invoke-virtual {v6, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v60, v11

    goto :goto_8c8

    :cond_8c2
    move-wide/from16 v62, v26

    move-object/from16 v60, v11

    move-wide/from16 v26, v62

    :goto_8c8
    if-nez v4, :cond_8f4

    .line 1207
    invoke-virtual/range {v54 .. v54}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8f4

    .line 1208
    invoke-virtual/range {v54 .. v54}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    const/4 v13, 0x0

    new-array v11, v13, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    invoke-interface {v4, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 1209
    new-instance v11, Lio/bidmachine/media3/common/DrmInitData;

    invoke-direct {v11, v2, v4}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V

    if-nez v28, :cond_8ef

    .line 1211
    invoke-static {v2, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getPlaylistProtectionSchemes(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)Lio/bidmachine/media3/common/DrmInitData;

    move-result-object v4

    move-object/from16 v35, v11

    :goto_8ea
    move-object/from16 v29, v39

    move-wide/from16 v38, v26

    goto :goto_8f8

    :cond_8ef
    move-object/from16 v35, v11

    :goto_8f1
    move-object/from16 v4, v28

    goto :goto_8ea

    :cond_8f4
    const/4 v13, 0x0

    move-object/from16 v35, v4

    goto :goto_8f1

    .line 1215
    :goto_8f8
    new-instance v26, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    if-eqz v66, :cond_907

    move-object/from16 v28, v66

    :goto_8fe
    move-object/from16 v27, v8

    move-object/from16 v36, v10

    move/from16 v32, v14

    move-wide/from16 v30, v81

    goto :goto_90a

    :cond_907
    move-object/from16 v28, v60

    goto :goto_8fe

    .line 1218
    :goto_90a
    invoke-direct/range {v26 .. v43}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLio/bidmachine/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    move-object/from16 v8, v26

    move/from16 v14, v32

    move-object/from16 v10, v36

    .line 1215
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v64, v33, v30

    .line 1234
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v12, :cond_922

    add-long v26, v38, v40

    goto :goto_924

    :cond_922
    move-wide/from16 v26, v38

    :goto_924
    move-object v11, v1

    move-object/from16 v36, v3

    move-object/from16 v28, v4

    move/from16 v42, v13

    move/from16 v63, v14

    move-object/from16 v3, v35

    move-wide/from16 v81, v46

    move-object/from16 v13, v54

    move-wide/from16 v37, v64

    move-object/from16 v60, v66

    move-object/from16 v23, v67

    move-object/from16 v39, v23

    move/from16 v4, v88

    move-object/from16 v12, v90

    const-wide/16 v40, -0x1

    const-wide/16 v76, -0x1

    move-object/from16 v1, p1

    move-object/from16 v54, v0

    move-object/from16 v67, v10

    move-object/from16 v10, v89

    goto/16 :goto_5f9

    :goto_94d
    move-object/from16 v36, v3

    move-object v3, v4

    move-wide/from16 v78, v11

    move-object/from16 v39, v29

    move-wide/from16 v81, v30

    move-wide/from16 v37, v33

    move-object/from16 v13, v54

    move-wide/from16 v26, v62

    move-object/from16 v60, v66

    move-object/from16 v23, v67

    move/from16 v4, v88

    move-object/from16 v12, v90

    const-wide/16 v76, -0x1

    move-object/from16 v54, v0

    move-object v11, v1

    move-object/from16 v67, v10

    move/from16 v63, v14

    move-object/from16 v10, v89

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_91

    :cond_975
    move/from16 v88, v4

    move-object/from16 v89, v10

    move-object v1, v11

    move-object/from16 v90, v12

    move-object/from16 v0, v54

    const/4 v13, 0x0

    .line 1243
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v4, v13

    .line 1244
    :goto_985
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_9d7

    .line 1245
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    .line 1246
    iget-wide v5, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->lastMediaSequence:J

    const-wide/16 v76, -0x1

    cmp-long v10, v5, v76

    if-nez v10, :cond_9a6

    .line 1248
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v5, v5

    add-long v5, v18, v5

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v5, v10

    .line 1250
    :cond_9a6
    iget v10, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->lastPartIndex:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_9c8

    cmp-long v12, v52, v48

    if-eqz v12, :cond_9c8

    .line 1253
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9be

    invoke-static {v7}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v10, v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    goto :goto_9bf

    :cond_9be
    move-object v10, v8

    .line 1254
    :goto_9bf
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/16 v22, 0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_9ca

    :cond_9c8
    const/16 v22, 0x1

    .line 1256
    :goto_9ca
    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->playlistUri:Landroid/net/Uri;

    new-instance v12, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    invoke-direct {v12, v3, v5, v6, v10}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;-><init>(Landroid/net/Uri;JI)V

    invoke-interface {v2, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_985

    :cond_9d7
    const/16 v22, 0x1

    if-eqz v0, :cond_9de

    .line 1262
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9de
    move-object/from16 v29, v7

    .line 1265
    new-instance v7, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    cmp-long v0, v56, v46

    if-eqz v0, :cond_a07

    move/from16 v27, v22

    :goto_9e8
    move-object/from16 v9, p3

    move-object/from16 v33, v1

    move-object/from16 v32, v2

    move-object/from16 v30, v8

    move/from16 v26, v17

    move/from16 v16, v21

    move/from16 v8, v24

    move-wide/from16 v11, v44

    move-wide/from16 v21, v50

    move-wide/from16 v23, v52

    move/from16 v17, v55

    move-wide/from16 v14, v56

    move/from16 v13, v88

    move-object/from16 v10, v89

    move-object/from16 v31, v90

    goto :goto_a0a

    :cond_a07
    move/from16 v27, v13

    goto :goto_9e8

    :goto_a0a
    invoke-direct/range {v7 .. v33}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLio/bidmachine/media3/common/DrmInitData;Ljava/util/List;Ljava/util/List;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;Ljava/util/Map;Ljava/util/List;)V

    return-object v7

    :sswitch_data_a0e
    .sparse-switch
        0x13683 -> :sswitch_6b8
        0x251681 -> :sswitch_6ab
        0x2590a0 -> :sswitch_69d
    .end sparse-switch

    :pswitch_data_a1c
    .packed-switch 0x0
        :pswitch_6ca
        :pswitch_6ca
        :pswitch_6ca
    .end packed-switch

    :sswitch_data_a26
    .sparse-switch
        -0x7f5b7c02 -> :sswitch_813
        -0x8e0f436 -> :sswitch_808
        0x17ad642d -> :sswitch_7fc
        0x57c501cc -> :sswitch_7f1
        0x6837ce7f -> :sswitch_7e6
        0x6c2295e3 -> :sswitch_7db
    .end sparse-switch

    :pswitch_data_a40
    .packed-switch 0x0
        :pswitch_837
        :pswitch_837
        :pswitch_837
        :pswitch_837
        :pswitch_837
        :pswitch_837
    .end packed-switch
.end method

.method public static parseMultivariantPlaylist(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    .line 385
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 386
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 387
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 388
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 389
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 390
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 391
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 392
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 393
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 394
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v10

    const/4 v10, 0x0

    const/16 v16, 0x0

    .line 401
    :goto_39
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v18

    const/16 v19, 0x0

    const-string v15, "application/x-mpegURL"

    const-string v0, "/"

    if-eqz v18, :cond_24c

    .line 402
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v3

    .line 404
    const-string v4, "#EXT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 406
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_54
    const-string v4, "#EXT-X-I-FRAME-STREAM-INF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 410
    const-string v2, "#EXT-X-DEFINE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 411
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 412
    invoke-static {v3, v0, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 413
    invoke-static {v3, v2, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 411
    invoke-virtual {v11, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cd

    .line 414
    :cond_72
    const-string v2, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    move-object/from16 v34, v7

    move-object/from16 v33, v8

    move-object/from16 v32, v9

    move-object/from16 v35, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    const/4 v10, 0x1

    goto/16 :goto_236

    .line 416
    :cond_89
    const-string v2, "#EXT-X-MEDIA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 419
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    .line 420
    :cond_95
    const-string v2, "#EXT-X-SESSION-KEY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 421
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    const-string v2, "identity"

    .line 422
    invoke-static {v3, v0, v2, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {v3, v0, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    move-result-object v0

    if-eqz v0, :cond_cd

    .line 425
    sget-object v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    invoke-static {v3, v2, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 427
    new-instance v3, Lio/bidmachine/media3/common/DrmInitData;

    filled-new-array {v0}, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    .line 429
    :cond_c2
    const-string v2, "#EXT-X-STREAM-INF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_db

    if-eqz v4, :cond_cd

    goto :goto_db

    :cond_cd
    :goto_cd
    move-object/from16 v34, v7

    move-object/from16 v33, v8

    move-object/from16 v32, v9

    move-object/from16 v35, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    goto/16 :goto_236

    .line 430
    :cond_db
    :goto_db
    const-string v2, "CLOSED-CAPTIONS=NONE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    or-int v16, v16, v2

    if-eqz v4, :cond_ea

    const/16 v2, 0x4000

    :goto_e7
    move/from16 v21, v4

    goto :goto_ed

    :cond_ea
    move/from16 v2, v19

    goto :goto_e7

    .line 432
    :goto_ed
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    invoke-static {v3, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v4

    move/from16 v29, v10

    .line 433
    sget-object v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

    move-object/from16 v30, v13

    const/4 v13, -0x1

    invoke-static {v3, v10, v13}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;I)I

    move-result v10

    .line 434
    sget-object v13, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO_RANGE:Ljava/util/regex/Pattern;

    invoke-static {v3, v13, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v31, v14

    .line 435
    sget-object v14, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    invoke-static {v3, v14, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v32, v9

    .line 436
    sget-object v9, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SUPPLEMENTAL_CODECS:Ljava/util/regex/Pattern;

    .line 437
    invoke-static {v3, v9, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v33, v8

    .line 440
    const-string v8, ","

    if-eqz v9, :cond_141

    .line 441
    invoke-static {v9, v8}, Lio/bidmachine/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 443
    aget-object v9, v9, v19

    invoke-static {v9, v0}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 444
    aget-object v9, v0, v19

    move-object/from16 v22, v9

    .line 445
    array-length v9, v0

    move-object/from16 v23, v0

    const/4 v0, 0x1

    if-le v9, v0, :cond_138

    .line 446
    aget-object v9, v23, v0

    move-object/from16 v34, v7

    move-object/from16 v35, v12

    move-object/from16 v0, v22

    const/4 v7, 0x2

    goto :goto_147

    :cond_138
    move-object/from16 v34, v7

    move-object/from16 v35, v12

    move-object/from16 v0, v22

    :goto_13e
    const/4 v7, 0x2

    const/4 v9, 0x0

    goto :goto_147

    :cond_141
    move-object/from16 v34, v7

    move-object/from16 v35, v12

    const/4 v0, 0x0

    goto :goto_13e

    .line 449
    :goto_147
    invoke-static {v14, v7}, Lio/bidmachine/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 450
    invoke-static {v13, v12, v0, v9}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->isDolbyVisionFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16e

    if-eqz v0, :cond_154

    goto :goto_155

    :cond_154
    move-object v0, v12

    .line 453
    :goto_155
    invoke-static {v14, v7}, Lio/bidmachine/media3/common/util/Util;->getCodecsWithoutType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_16d

    .line 454
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_16d
    move-object v14, v0

    .line 457
    :cond_16e
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    .line 458
    invoke-static {v3, v0, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18e

    .line 462
    const-string v7, "x"

    invoke-static {v0, v7}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 463
    aget-object v7, v0, v19

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v20, 0x1

    .line 464
    aget-object v0, v0, v20

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v7, :cond_18e

    if-gtz v0, :cond_190

    :cond_18e
    const/4 v0, -0x1

    const/4 v7, -0x1

    .line 475
    :cond_190
    sget-object v8, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

    .line 476
    invoke-static {v3, v8, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_19d

    .line 478
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    goto :goto_19f

    :cond_19d
    const/high16 v8, -0x40800000    # -1.0f

    .line 480
    :goto_19f
    sget-object v9, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO:Ljava/util/regex/Pattern;

    invoke-static {v3, v9, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v25

    .line 481
    sget-object v9, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    invoke-static {v3, v9, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v26

    .line 482
    sget-object v9, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SUBTITLES:Ljava/util/regex/Pattern;

    .line 483
    invoke-static {v3, v9, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v27

    .line 484
    sget-object v9, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

    .line 485
    invoke-static {v3, v9, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v28

    if-eqz v21, :cond_1c6

    .line 488
    sget-object v9, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 489
    invoke-static {v3, v9, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/bidmachine/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_1c3
    move-object/from16 v23, v3

    goto :goto_1d9

    .line 490
    :cond_1c6
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_244

    .line 495
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 496
    invoke-static {v1, v3}, Lio/bidmachine/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1c3

    .line 499
    :goto_1d9
    new-instance v3, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v3}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 501
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v3, v9}, Lio/bidmachine/media3/common/Format$Builder;->setId(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    .line 502
    invoke-virtual {v3, v15}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    .line 503
    invoke-virtual {v3, v14}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    .line 504
    invoke-virtual {v3, v10}, Lio/bidmachine/media3/common/Format$Builder;->setAverageBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    .line 505
    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/Format$Builder;->setPeakBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    .line 506
    invoke-virtual {v3, v7}, Lio/bidmachine/media3/common/Format$Builder;->setWidth(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    .line 507
    invoke-virtual {v3, v0}, Lio/bidmachine/media3/common/Format$Builder;->setHeight(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 508
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/Format$Builder;->setFrameRate(F)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 509
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/Format$Builder;->setRoleFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v24

    .line 511
    new-instance v22, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    invoke-direct/range {v22 .. v28}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;-><init>(Landroid/net/Uri;Lio/bidmachine/media3/common/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v3, v23

    .line 514
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_226

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 518
    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_226
    new-instance v22, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;

    move/from16 v24, v4

    move/from16 v23, v10

    invoke-direct/range {v22 .. v28}, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v29

    :goto_236
    move-object/from16 v13, v30

    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move-object/from16 v8, v33

    move-object/from16 v7, v34

    move-object/from16 v12, v35

    goto/16 :goto_39

    .line 491
    :cond_244
    const-string v0, "#EXT-X-STREAM-INF must be followed by another line"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_24c
    move-object/from16 v34, v7

    move-object/from16 v33, v8

    move-object/from16 v32, v9

    move/from16 v29, v10

    move-object/from16 v35, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    .line 532
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 533
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move/from16 v4, v19

    .line 534
    :goto_266
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_2bf

    .line 535
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 536
    iget-object v8, v7, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2bb

    .line 537
    iget-object v8, v7, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Lio/bidmachine/media3/common/Format;

    iget-object v8, v8, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    if-nez v8, :cond_282

    const/4 v8, 0x1

    goto :goto_284

    :cond_282
    move/from16 v8, v19

    :goto_284
    invoke-static {v8}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 538
    new-instance v8, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;

    iget-object v9, v7, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    .line 542
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-static {v9}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v10, 0x0

    invoke-direct {v8, v10, v10, v9}, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 543
    new-instance v9, Lio/bidmachine/media3/common/Metadata;

    const/4 v12, 0x1

    new-array v13, v12, [Lio/bidmachine/media3/common/Metadata$Entry;

    aput-object v8, v13, v19

    invoke-direct {v9, v13}, Lio/bidmachine/media3/common/Metadata;-><init>([Lio/bidmachine/media3/common/Metadata$Entry;)V

    .line 544
    iget-object v8, v7, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v8}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v8

    invoke-virtual {v8, v9}, Lio/bidmachine/media3/common/Format$Builder;->setMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v8

    .line 545
    invoke-virtual {v7, v8}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->copyWithFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2bd

    :cond_2bb
    const/4 v10, 0x0

    const/4 v12, 0x1

    :goto_2bd
    add-int/2addr v4, v12

    goto :goto_266

    :cond_2bf
    const/4 v10, 0x0

    move-object v2, v10

    move-object v8, v2

    move/from16 v4, v19

    .line 549
    :goto_2c4
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4d7

    move-object/from16 v5, v35

    .line 550
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 551
    sget-object v9, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    invoke-static {v7, v9, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 552
    sget-object v12, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    invoke-static {v7, v12, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 553
    new-instance v13, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v13}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 555
    invoke-virtual {v13, v10}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v10

    .line 556
    invoke-virtual {v10, v12}, Lio/bidmachine/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v10

    .line 557
    invoke-virtual {v10, v15}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v10

    .line 558
    invoke-static {v7}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseSelectionFlags(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v10, v13}, Lio/bidmachine/media3/common/Format$Builder;->setSelectionFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v10

    .line 559
    invoke-static {v7, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseRoleFlags(Ljava/lang/String;Ljava/util/Map;)I

    move-result v13

    invoke-virtual {v10, v13}, Lio/bidmachine/media3/common/Format$Builder;->setRoleFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v10

    sget-object v13, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    .line 560
    invoke-static {v7, v13, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v10

    .line 562
    sget-object v13, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v7, v13, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_327

    const/4 v13, 0x0

    goto :goto_32b

    .line 563
    :cond_327
    invoke-static {v1, v13}, Lio/bidmachine/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 564
    :goto_32b
    new-instance v14, Lio/bidmachine/media3/common/Metadata;

    new-instance v1, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;

    move-object/from16 p0, v2

    .line 565
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v1, v9, v12, v2}, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v21, v1

    const/4 v2, 0x1

    new-array v1, v2, [Lio/bidmachine/media3/common/Metadata$Entry;

    aput-object v21, v1, v19

    invoke-direct {v14, v1}, Lio/bidmachine/media3/common/Metadata;-><init>([Lio/bidmachine/media3/common/Metadata$Entry;)V

    .line 566
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v7, v1, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_4fa

    :goto_350
    const/4 v1, -0x1

    goto :goto_37e

    :sswitch_352
    const-string v2, "VIDEO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35b

    goto :goto_350

    :cond_35b
    const/4 v1, 0x3

    goto :goto_37e

    :sswitch_35d
    const-string v2, "AUDIO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_366

    goto :goto_350

    :cond_366
    const/4 v1, 0x2

    goto :goto_37e

    :sswitch_368
    const-string v2, "CLOSED-CAPTIONS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_371

    goto :goto_350

    :cond_371
    const/4 v1, 0x1

    goto :goto_37e

    :sswitch_373
    const-string v2, "SUBTITLES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37c

    goto :goto_350

    :cond_37c
    move/from16 v1, v19

    :goto_37e
    packed-switch v1, :pswitch_data_50c

    :goto_381
    move-object/from16 v9, v32

    move-object/from16 v2, v33

    :goto_385
    const/4 v7, 0x3

    goto/16 :goto_4c5

    .line 568
    :pswitch_388
    invoke-static {v6, v9}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getVariantWithVideoGroup(Ljava/util/ArrayList;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object v1

    if-eqz v1, :cond_3b4

    .line 570
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Lio/bidmachine/media3/common/Format;

    .line 572
    iget-object v2, v1, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v2, v7}, Lio/bidmachine/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 574
    invoke-virtual {v10, v2}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v7

    .line 575
    invoke-static {v2}, Lio/bidmachine/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    iget v7, v1, Lio/bidmachine/media3/common/Format;->width:I

    .line 576
    invoke-virtual {v2, v7}, Lio/bidmachine/media3/common/Format$Builder;->setWidth(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    iget v7, v1, Lio/bidmachine/media3/common/Format;->height:I

    .line 577
    invoke-virtual {v2, v7}, Lio/bidmachine/media3/common/Format$Builder;->setHeight(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    iget v1, v1, Lio/bidmachine/media3/common/Format;->frameRate:F

    .line 578
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/Format$Builder;->setFrameRate(F)Lio/bidmachine/media3/common/Format$Builder;

    :cond_3b4
    if-nez v13, :cond_3b7

    goto :goto_381

    .line 583
    :cond_3b7
    invoke-virtual {v10, v14}, Lio/bidmachine/media3/common/Format$Builder;->setMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format$Builder;

    .line 584
    new-instance v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    invoke-virtual {v10}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v2

    invoke-direct {v1, v13, v2, v9, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Lio/bidmachine/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v34

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_381

    :pswitch_3c9
    move-object/from16 v2, v34

    .line 589
    invoke-static {v6, v9}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getVariantWithAudioGroup(Ljava/util/ArrayList;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object v1

    if-eqz v1, :cond_3e6

    move-object/from16 v34, v2

    .line 592
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Lio/bidmachine/media3/common/Format;

    iget-object v2, v2, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    move-object/from16 v21, v1

    const/4 v1, 0x1

    invoke-static {v2, v1}, Lio/bidmachine/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 593
    invoke-virtual {v10, v2}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    .line 594
    invoke-static {v2}, Lio/bidmachine/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3eb

    :cond_3e6
    move-object/from16 v21, v1

    move-object/from16 v34, v2

    const/4 v1, 0x0

    .line 597
    :goto_3eb
    sget-object v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHANNELS:Ljava/util/regex/Pattern;

    .line 598
    invoke-static {v7, v2, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_417

    .line 600
    invoke-static {v2, v0}, Lio/bidmachine/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v19

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 601
    invoke-virtual {v10, v7}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    .line 602
    const-string v7, "audio/eac3"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_417

    const-string v7, "/JOC"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_417

    .line 604
    const-string v1, "ec+3"

    invoke-virtual {v10, v1}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    const-string v1, "audio/eac3-joc"

    .line 607
    :cond_417
    invoke-virtual {v10, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    if-eqz v13, :cond_431

    .line 609
    invoke-virtual {v10, v14}, Lio/bidmachine/media3/common/Format$Builder;->setMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format$Builder;

    .line 610
    new-instance v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    invoke-virtual {v10}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v2

    invoke-direct {v1, v13, v2, v9, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Lio/bidmachine/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v33

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42d
    move-object/from16 v9, v32

    goto/16 :goto_385

    :cond_431
    move-object/from16 v2, v33

    if-eqz v21, :cond_42d

    .line 613
    invoke-virtual {v10}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v1

    move-object/from16 v12, p0

    move-object v8, v1

    :goto_43c
    move-object/from16 v9, v32

    const/4 v7, 0x3

    :goto_43f
    const/16 v20, 0x1

    goto/16 :goto_4c9

    :pswitch_443
    move-object/from16 v2, v33

    .line 636
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    invoke-static {v7, v1, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 638
    const-string v7, "CC"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_45f

    const/4 v7, 0x2

    .line 640
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v9, "application/cea-608"

    goto :goto_46b

    :cond_45f
    const/4 v7, 0x2

    const/4 v9, 0x7

    .line 643
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v9, "application/cea-708"

    :goto_46b
    if-nez p0, :cond_473

    .line 646
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    goto :goto_475

    :cond_473
    move-object/from16 v12, p0

    .line 649
    :goto_475
    invoke-virtual {v10, v9}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v9

    .line 650
    invoke-virtual {v9, v1}, Lio/bidmachine/media3/common/Format$Builder;->setAccessibilityChannel(I)Lio/bidmachine/media3/common/Format$Builder;

    .line 651
    invoke-virtual {v10}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43c

    :pswitch_484
    move-object/from16 v2, v33

    const/4 v7, 0x2

    .line 618
    invoke-static {v6, v9}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getVariantWithSubtitleGroup(Ljava/util/ArrayList;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object v1

    if-eqz v1, :cond_49e

    .line 621
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Lio/bidmachine/media3/common/Format;

    iget-object v1, v1, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {v1, v7}, Lio/bidmachine/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-virtual {v10, v1}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    .line 623
    invoke-static {v1}, Lio/bidmachine/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4a0

    :cond_49e
    const/4 v7, 0x3

    const/4 v1, 0x0

    :goto_4a0
    if-nez v1, :cond_4a4

    .line 626
    const-string v1, "text/vtt"

    .line 628
    :cond_4a4
    invoke-virtual {v10, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Lio/bidmachine/media3/common/Format$Builder;->setMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format$Builder;

    if-eqz v13, :cond_4bc

    .line 630
    new-instance v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    invoke-virtual {v10}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v10

    invoke-direct {v1, v13, v10, v9, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Lio/bidmachine/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v32

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c5

    :cond_4bc
    move-object/from16 v9, v32

    .line 632
    const-string v1, "HlsPlaylistParser"

    const-string v10, "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping"

    invoke-static {v1, v10}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4c5
    move-object/from16 v12, p0

    goto/16 :goto_43f

    :goto_4c9
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move-object/from16 v33, v2

    move-object/from16 v35, v5

    move-object/from16 v32, v9

    move-object v2, v12

    const/4 v10, 0x0

    goto/16 :goto_2c4

    :cond_4d7
    move-object/from16 p0, v2

    move-object/from16 v9, v32

    move-object/from16 v2, v33

    if-eqz v16, :cond_4e2

    .line 661
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_4e4

    :cond_4e2
    move-object/from16 v0, p0

    .line 664
    :goto_4e4
    new-instance v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    move-object v5, v2

    move-object v6, v9

    move-object/from16 v7, v17

    move/from16 v10, v29

    move-object/from16 v12, v30

    move-object/from16 v2, v31

    move-object/from16 v4, v34

    move-object v9, v0

    move-object v0, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lio/bidmachine/media3/common/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v0

    :sswitch_data_4fa
    .sparse-switch
        -0x392db8c5 -> :sswitch_373
        -0x13dc6572 -> :sswitch_368
        0x3bba3b6 -> :sswitch_35d
        0x4de1c5b -> :sswitch_352
    .end sparse-switch

    :pswitch_data_50c
    .packed-switch 0x0
        :pswitch_484
        :pswitch_443
        :pswitch_3c9
        :pswitch_388
    .end packed-switch
.end method

.method public static parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .registers 3

    .line 1526
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1527
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    .line 1528
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "YES"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_16
    return p2
.end method

.method public static parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D
    .registers 4

    .line 1470
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1471
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    .line 1472
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    :cond_1a
    return-wide p2
.end method

.method public static parseOptionalIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;I)I
    .registers 3

    .line 1410
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1411
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    .line 1412
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1a
    return p2
.end method

.method public static parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J
    .registers 4

    .line 1422
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1423
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    .line 1424
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_1a
    return-wide p2
.end method

.method public static parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1462
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1463
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    .line 1464
    :cond_16
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_24

    if-nez p2, :cond_1f

    goto :goto_24

    .line 1466
    :cond_1f
    invoke-static {p2, p3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    :goto_24
    return-object p2
.end method

.method public static parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1454
    invoke-static {p0, p1, v0, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseRoleFlags(Ljava/lang/String;Ljava/util/Map;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1327
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

    .line 1328
    invoke-static {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 1329
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    return v0

    .line 1332
    :cond_e
    const-string p1, ","

    invoke-static {p0, p1}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1334
    const-string p1, "public.accessibility.describes-video"

    invoke-static {p0, p1}, Lio/bidmachine/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/16 v0, 0x200

    .line 1337
    :cond_1e
    const-string p1, "public.accessibility.transcribes-spoken-dialog"

    invoke-static {p0, p1}, Lio/bidmachine/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    or-int/lit16 v0, v0, 0x1000

    .line 1340
    :cond_28
    const-string p1, "public.accessibility.describes-music-and-sound"

    invoke-static {p0, p1}, Lio/bidmachine/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    or-int/lit16 v0, v0, 0x400

    .line 1343
    :cond_32
    const-string p1, "public.easy-to-read"

    invoke-static {p0, p1}, Lio/bidmachine/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    or-int/lit16 p0, v0, 0x2000

    return p0

    :cond_3d
    return v0
.end method

.method public static parseSelectionFlags(Ljava/lang/String;)I
    .registers 4

    .line 1313
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v0

    .line 1316
    sget-object v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v2

    if-eqz v2, :cond_11

    or-int/lit8 v0, v0, 0x2

    .line 1319
    :cond_11
    sget-object v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result p0

    if-eqz p0, :cond_1c

    or-int/lit8 p0, v0, 0x4

    return p0

    :cond_1c
    return v0
.end method

.method public static parseServerControl(Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;
    .registers 20

    move-object/from16 v0, p0

    .line 1373
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_UNTIL:Ljava/util/regex/Pattern;

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    .line 1374
    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v4

    cmpl-double v1, v4, v2

    const-wide v6, 0x412e848000000000L    # 1000000.0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_1a

    move-wide v11, v8

    goto :goto_1d

    :cond_1a
    mul-double/2addr v4, v6

    double-to-long v4, v4

    move-wide v11, v4

    .line 1379
    :goto_1d
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_DATE_RANGES:Ljava/util/regex/Pattern;

    const/4 v4, 0x0

    .line 1380
    invoke-static {v0, v1, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v13

    .line 1381
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 1382
    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v14

    cmpl-double v1, v14, v2

    if-nez v1, :cond_30

    move-wide v14, v8

    goto :goto_32

    :cond_30
    mul-double/2addr v14, v6

    double-to-long v14, v14

    .line 1387
    :goto_32
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_HOLD_BACK:Ljava/util/regex/Pattern;

    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v16

    cmpl-double v1, v16, v2

    if-nez v1, :cond_3f

    :goto_3c
    move-wide/from16 v16, v8

    goto :goto_43

    :cond_3f
    mul-double v1, v16, v6

    double-to-long v8, v1

    goto :goto_3c

    .line 1392
    :goto_43
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_BLOCK_RELOAD:Ljava/util/regex/Pattern;

    .line 1393
    invoke-static {v0, v1, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v18

    .line 1395
    new-instance v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    invoke-direct/range {v10 .. v18}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;-><init>(JZJJZ)V

    return-object v10
.end method

.method public static parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1442
    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    return-object p2

    .line 1446
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t match "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 1446
    invoke-static {p0, p1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static parseTimeSecondsToUs(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1430
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 1431
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1432
    new-instance p0, Ljava/math/BigDecimal;

    const-wide/32 v0, 0xf4240

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1508
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1510
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1511
    :cond_b
    :goto_b
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    .line 1512
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1513
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1515
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1514
    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_b

    .line 1520
    :cond_2a
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1521
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_16

    .line 353
    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_16

    if-nez p1, :cond_11

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Util;->isLinebreak(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 354
    :cond_11
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result p2

    goto :goto_0

    :cond_16
    return p2
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 291
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 294
    :try_start_f
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->checkPlaylistHeader(Ljava/io/BufferedReader;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_ac

    .line 298
    :goto_16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a2

    .line 299
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_16

    .line 302
    :cond_27
    const-string v3, "#EXT-X-STREAM-INF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 303
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v1, p2, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseMultivariantPlaylist(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    move-result-object p1
    :try_end_3f
    .catchall {:try_start_f .. :try_end_3f} :catchall_43

    .line 324
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :catchall_43
    move-exception p1

    goto :goto_b3

    .line 305
    :cond_45
    :try_start_45
    const-string v3, "#EXT-X-TARGETDURATION"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string v3, "#EXT-X-MEDIA-SEQUENCE"

    .line 306
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string v3, "#EXTINF"

    .line 307
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string v3, "#EXT-X-KEY"

    .line 308
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string v3, "#EXT-X-BYTERANGE"

    .line 309
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string v3, "#EXT-X-DISCONTINUITY"

    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string v3, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 311
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string v3, "#EXT-X-ENDLIST"

    .line 312
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    goto :goto_8a

    .line 320
    :cond_86
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 313
    :cond_8a
    :goto_8a
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->multivariantPlaylist:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->previousMediaPlaylist:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    new-instance v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v3, p2, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 318
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-static {v1, v2, v3, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseMediaPlaylist(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object p1
    :try_end_9e
    .catchall {:try_start_45 .. :try_end_9e} :catchall_43

    .line 324
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :cond_a2
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 326
    const-string p1, "Failed to parse the playlist, could not identify any tags."

    invoke-static {p1, v2}, Lio/bidmachine/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 295
    :cond_ac
    :try_start_ac
    const-string p1, "Input does not start with the #EXTM3U header."

    invoke-static {p1, v2}, Lio/bidmachine/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
    :try_end_b3
    .catchall {:try_start_ac .. :try_end_b3} :catchall_43

    .line 324
    :goto_b3
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 325
    throw p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistParser.DeltaUpdateException (io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistParser$DeltaUpdateException)
.class public final Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;
.super Ljava/io/IOException;
.source "HlsPlaylistParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeltaUpdateException"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistParser.LineIterator (io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistParser$LineIterator)
.class public Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineIterator"
.end annotation


# instance fields
.field public final extraLines:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public next:Ljava/lang/String;

.field public final reader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/BufferedReader;",
            ")V"
        }
    .end annotation

    .line 1544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1545
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->extraLines:Ljava/util/Queue;

    .line 1546
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->reader:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1551
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 1554
    :cond_6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->extraLines:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1555
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->extraLines:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    return v1

    .line 1558
    :cond_1f
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 1559
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    .line 1560
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1569
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1570
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1571
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    return-object v0

    .line 1574
    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
