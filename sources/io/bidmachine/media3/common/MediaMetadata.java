package io.bidmachine.media3.common;

import android.net.Uri;
import android.os.Bundle;
import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.Util;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class MediaMetadata {
    public final CharSequence albumArtist;
    public final CharSequence albumTitle;
    public final CharSequence artist;
    public final byte[] artworkData;
    public final Integer artworkDataType;
    public final Uri artworkUri;
    public final CharSequence compilation;
    public final CharSequence composer;
    public final CharSequence conductor;
    public final CharSequence description;
    public final Integer discNumber;
    public final CharSequence displayTitle;
    public final Long durationMs;
    public final Bundle extras;

    @Deprecated
    public final Integer folderType;
    public final CharSequence genre;
    public final Boolean isBrowsable;
    public final Boolean isPlayable;
    public final Integer mediaType;
    public final Integer recordingDay;
    public final Integer recordingMonth;
    public final Integer recordingYear;
    public final Integer releaseDay;
    public final Integer releaseMonth;
    public final Integer releaseYear;
    public final CharSequence station;
    public final CharSequence subtitle;
    public final ImmutableList<String> supportedCommands;
    public final CharSequence title;
    public final Integer totalDiscCount;
    public final Integer totalTrackCount;
    public final Integer trackNumber;
    public final CharSequence writer;

    @Deprecated
    public final Integer year;
    public static final MediaMetadata EMPTY = new Builder().build();
    public static final String FIELD_TITLE = Util.intToStringMaxRadix(0);
    public static final String FIELD_ARTIST = Util.intToStringMaxRadix(1);
    public static final String FIELD_ALBUM_TITLE = Util.intToStringMaxRadix(2);
    public static final String FIELD_ALBUM_ARTIST = Util.intToStringMaxRadix(3);
    public static final String FIELD_DISPLAY_TITLE = Util.intToStringMaxRadix(4);
    public static final String FIELD_SUBTITLE = Util.intToStringMaxRadix(5);
    public static final String FIELD_DESCRIPTION = Util.intToStringMaxRadix(6);
    public static final String FIELD_USER_RATING = Util.intToStringMaxRadix(8);
    public static final String FIELD_OVERALL_RATING = Util.intToStringMaxRadix(9);
    public static final String FIELD_ARTWORK_DATA = Util.intToStringMaxRadix(10);
    public static final String FIELD_ARTWORK_URI = Util.intToStringMaxRadix(11);
    public static final String FIELD_TRACK_NUMBER = Util.intToStringMaxRadix(12);
    public static final String FIELD_TOTAL_TRACK_COUNT = Util.intToStringMaxRadix(13);
    public static final String FIELD_FOLDER_TYPE = Util.intToStringMaxRadix(14);
    public static final String FIELD_IS_PLAYABLE = Util.intToStringMaxRadix(15);
    public static final String FIELD_RECORDING_YEAR = Util.intToStringMaxRadix(16);
    public static final String FIELD_RECORDING_MONTH = Util.intToStringMaxRadix(17);
    public static final String FIELD_RECORDING_DAY = Util.intToStringMaxRadix(18);
    public static final String FIELD_RELEASE_YEAR = Util.intToStringMaxRadix(19);
    public static final String FIELD_RELEASE_MONTH = Util.intToStringMaxRadix(20);
    public static final String FIELD_RELEASE_DAY = Util.intToStringMaxRadix(21);
    public static final String FIELD_WRITER = Util.intToStringMaxRadix(22);
    public static final String FIELD_COMPOSER = Util.intToStringMaxRadix(23);
    public static final String FIELD_CONDUCTOR = Util.intToStringMaxRadix(24);
    public static final String FIELD_DISC_NUMBER = Util.intToStringMaxRadix(25);
    public static final String FIELD_TOTAL_DISC_COUNT = Util.intToStringMaxRadix(26);
    public static final String FIELD_GENRE = Util.intToStringMaxRadix(27);
    public static final String FIELD_COMPILATION = Util.intToStringMaxRadix(28);
    public static final String FIELD_ARTWORK_DATA_TYPE = Util.intToStringMaxRadix(29);
    public static final String FIELD_STATION = Util.intToStringMaxRadix(30);
    public static final String FIELD_MEDIA_TYPE = Util.intToStringMaxRadix(31);
    public static final String FIELD_IS_BROWSABLE = Util.intToStringMaxRadix(32);
    public static final String FIELD_DURATION_MS = Util.intToStringMaxRadix(33);
    public static final String FIELD_SUPPORTED_COMMANDS = Util.intToStringMaxRadix(34);
    public static final String FIELD_EXTRAS = Util.intToStringMaxRadix(1000);

    public static int getFolderTypeFromMediaType(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
                return 1;
            case 20:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            default:
                return 0;
            case 21:
                return 2;
            case 22:
                return 3;
            case 23:
                return 4;
            case 24:
                return 5;
            case 25:
                return 6;
        }
    }

    public static int getMediaTypeFromFolderType(int i) {
        switch (i) {
            case 1:
                return 0;
            case 2:
                return 21;
            case 3:
                return 22;
            case 4:
                return 23;
            case 5:
                return 24;
            case 6:
                return 25;
            default:
                return 20;
        }
    }

    public static final class Builder {
        public CharSequence albumArtist;
        public CharSequence albumTitle;
        public CharSequence artist;
        public byte[] artworkData;
        public Integer artworkDataType;
        public Uri artworkUri;
        public CharSequence compilation;
        public CharSequence composer;
        public CharSequence conductor;
        public CharSequence description;
        public Integer discNumber;
        public CharSequence displayTitle;
        public Long durationMs;
        public Bundle extras;
        public Integer folderType;
        public CharSequence genre;
        public Boolean isBrowsable;
        public Boolean isPlayable;
        public Integer mediaType;
        public Integer recordingDay;
        public Integer recordingMonth;
        public Integer recordingYear;
        public Integer releaseDay;
        public Integer releaseMonth;
        public Integer releaseYear;
        public CharSequence station;
        public CharSequence subtitle;
        public ImmutableList<String> supportedCommands;
        public CharSequence title;
        public Integer totalDiscCount;
        public Integer totalTrackCount;
        public Integer trackNumber;
        public CharSequence writer;

        public static /* synthetic */ Rating access$1200(Builder builder) {
            builder.getClass();
            return null;
        }

        public static /* synthetic */ Rating access$1300(Builder builder) {
            builder.getClass();
            return null;
        }

        public Builder() {
            this.supportedCommands = ImmutableList.of();
        }

        public Builder(MediaMetadata mediaMetadata) {
            this.title = mediaMetadata.title;
            this.artist = mediaMetadata.artist;
            this.albumTitle = mediaMetadata.albumTitle;
            this.albumArtist = mediaMetadata.albumArtist;
            this.displayTitle = mediaMetadata.displayTitle;
            this.subtitle = mediaMetadata.subtitle;
            this.description = mediaMetadata.description;
            this.durationMs = mediaMetadata.durationMs;
            this.artworkData = mediaMetadata.artworkData;
            this.artworkDataType = mediaMetadata.artworkDataType;
            this.artworkUri = mediaMetadata.artworkUri;
            this.trackNumber = mediaMetadata.trackNumber;
            this.totalTrackCount = mediaMetadata.totalTrackCount;
            this.folderType = mediaMetadata.folderType;
            this.isBrowsable = mediaMetadata.isBrowsable;
            this.isPlayable = mediaMetadata.isPlayable;
            this.recordingYear = mediaMetadata.recordingYear;
            this.recordingMonth = mediaMetadata.recordingMonth;
            this.recordingDay = mediaMetadata.recordingDay;
            this.releaseYear = mediaMetadata.releaseYear;
            this.releaseMonth = mediaMetadata.releaseMonth;
            this.releaseDay = mediaMetadata.releaseDay;
            this.writer = mediaMetadata.writer;
            this.composer = mediaMetadata.composer;
            this.conductor = mediaMetadata.conductor;
            this.discNumber = mediaMetadata.discNumber;
            this.totalDiscCount = mediaMetadata.totalDiscCount;
            this.genre = mediaMetadata.genre;
            this.compilation = mediaMetadata.compilation;
            this.station = mediaMetadata.station;
            this.mediaType = mediaMetadata.mediaType;
            this.supportedCommands = mediaMetadata.supportedCommands;
            this.extras = mediaMetadata.extras;
        }

        public Builder setTitle(CharSequence charSequence) {
            this.title = charSequence;
            return this;
        }

        public Builder setArtist(CharSequence charSequence) {
            this.artist = charSequence;
            return this;
        }

        public Builder setAlbumTitle(CharSequence charSequence) {
            this.albumTitle = charSequence;
            return this;
        }

        public Builder setAlbumArtist(CharSequence charSequence) {
            this.albumArtist = charSequence;
            return this;
        }

        public Builder setDisplayTitle(CharSequence charSequence) {
            this.displayTitle = charSequence;
            return this;
        }

        public Builder setSubtitle(CharSequence charSequence) {
            this.subtitle = charSequence;
            return this;
        }

        public Builder setDescription(CharSequence charSequence) {
            this.description = charSequence;
            return this;
        }

        public Builder setDurationMs(Long l) {
            Assertions.checkArgument(l == null || l.longValue() >= 0);
            this.durationMs = l;
            return this;
        }

        public Builder setArtworkData(byte[] bArr, Integer num) {
            this.artworkData = bArr == null ? null : (byte[]) bArr.clone();
            this.artworkDataType = num;
            return this;
        }

        public Builder maybeSetArtworkData(byte[] bArr, int i) {
            if (this.artworkData != null && i != 3 && Objects.equals(this.artworkDataType, 3)) {
                return this;
            }
            this.artworkData = (byte[]) bArr.clone();
            this.artworkDataType = Integer.valueOf(i);
            return this;
        }

        public Builder setArtworkUri(Uri uri) {
            this.artworkUri = uri;
            return this;
        }

        public Builder setTrackNumber(Integer num) {
            this.trackNumber = num;
            return this;
        }

        public Builder setTotalTrackCount(Integer num) {
            this.totalTrackCount = num;
            return this;
        }

        @Deprecated
        public Builder setFolderType(Integer num) {
            this.folderType = num;
            return this;
        }

        public Builder setIsBrowsable(Boolean bool) {
            this.isBrowsable = bool;
            return this;
        }

        public Builder setIsPlayable(Boolean bool) {
            this.isPlayable = bool;
            return this;
        }

        public Builder setRecordingYear(Integer num) {
            this.recordingYear = num;
            return this;
        }

        public Builder setRecordingMonth(Integer num) {
            this.recordingMonth = num;
            return this;
        }

        public Builder setRecordingDay(Integer num) {
            this.recordingDay = num;
            return this;
        }

        public Builder setReleaseYear(Integer num) {
            this.releaseYear = num;
            return this;
        }

        public Builder setReleaseMonth(Integer num) {
            this.releaseMonth = num;
            return this;
        }

        public Builder setReleaseDay(Integer num) {
            this.releaseDay = num;
            return this;
        }

        public Builder setWriter(CharSequence charSequence) {
            this.writer = charSequence;
            return this;
        }

        public Builder setComposer(CharSequence charSequence) {
            this.composer = charSequence;
            return this;
        }

        public Builder setConductor(CharSequence charSequence) {
            this.conductor = charSequence;
            return this;
        }

        public Builder setDiscNumber(Integer num) {
            this.discNumber = num;
            return this;
        }

        public Builder setTotalDiscCount(Integer num) {
            this.totalDiscCount = num;
            return this;
        }

        public Builder setGenre(CharSequence charSequence) {
            this.genre = charSequence;
            return this;
        }

        public Builder setCompilation(CharSequence charSequence) {
            this.compilation = charSequence;
            return this;
        }

        public Builder setStation(CharSequence charSequence) {
            this.station = charSequence;
            return this;
        }

        public Builder setMediaType(Integer num) {
            this.mediaType = num;
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.extras = bundle;
            return this;
        }

        public Builder setSupportedCommands(List<String> list) {
            this.supportedCommands = ImmutableList.copyOf((Collection) list);
            return this;
        }

        public Builder populateFromMetadata(Metadata metadata) {
            for (int i = 0; i < metadata.length(); i++) {
                metadata.get(i).populateMediaMetadata(this);
            }
            return this;
        }

        public Builder populateFromMetadata(List<Metadata> list) {
            for (int i = 0; i < list.size(); i++) {
                Metadata metadata = list.get(i);
                for (int i2 = 0; i2 < metadata.length(); i2++) {
                    metadata.get(i2).populateMediaMetadata(this);
                }
            }
            return this;
        }

        public Builder populate(MediaMetadata mediaMetadata) {
            if (mediaMetadata != null) {
                CharSequence charSequence = mediaMetadata.title;
                if (charSequence != null) {
                    setTitle(charSequence);
                }
                CharSequence charSequence2 = mediaMetadata.artist;
                if (charSequence2 != null) {
                    setArtist(charSequence2);
                }
                CharSequence charSequence3 = mediaMetadata.albumTitle;
                if (charSequence3 != null) {
                    setAlbumTitle(charSequence3);
                }
                CharSequence charSequence4 = mediaMetadata.albumArtist;
                if (charSequence4 != null) {
                    setAlbumArtist(charSequence4);
                }
                CharSequence charSequence5 = mediaMetadata.displayTitle;
                if (charSequence5 != null) {
                    setDisplayTitle(charSequence5);
                }
                CharSequence charSequence6 = mediaMetadata.subtitle;
                if (charSequence6 != null) {
                    setSubtitle(charSequence6);
                }
                CharSequence charSequence7 = mediaMetadata.description;
                if (charSequence7 != null) {
                    setDescription(charSequence7);
                }
                Long l = mediaMetadata.durationMs;
                if (l != null) {
                    setDurationMs(l);
                }
                Uri uri = mediaMetadata.artworkUri;
                if (uri != null || mediaMetadata.artworkData != null) {
                    setArtworkUri(uri);
                    setArtworkData(mediaMetadata.artworkData, mediaMetadata.artworkDataType);
                }
                Integer num = mediaMetadata.trackNumber;
                if (num != null) {
                    setTrackNumber(num);
                }
                Integer num2 = mediaMetadata.totalTrackCount;
                if (num2 != null) {
                    setTotalTrackCount(num2);
                }
                Integer num3 = mediaMetadata.folderType;
                if (num3 != null) {
                    setFolderType(num3);
                }
                Boolean bool = mediaMetadata.isBrowsable;
                if (bool != null) {
                    setIsBrowsable(bool);
                }
                Boolean bool2 = mediaMetadata.isPlayable;
                if (bool2 != null) {
                    setIsPlayable(bool2);
                }
                Integer num4 = mediaMetadata.year;
                if (num4 != null) {
                    setRecordingYear(num4);
                }
                Integer num5 = mediaMetadata.recordingYear;
                if (num5 != null) {
                    setRecordingYear(num5);
                }
                Integer num6 = mediaMetadata.recordingMonth;
                if (num6 != null) {
                    setRecordingMonth(num6);
                }
                Integer num7 = mediaMetadata.recordingDay;
                if (num7 != null) {
                    setRecordingDay(num7);
                }
                Integer num8 = mediaMetadata.releaseYear;
                if (num8 != null) {
                    setReleaseYear(num8);
                }
                Integer num9 = mediaMetadata.releaseMonth;
                if (num9 != null) {
                    setReleaseMonth(num9);
                }
                Integer num10 = mediaMetadata.releaseDay;
                if (num10 != null) {
                    setReleaseDay(num10);
                }
                CharSequence charSequence8 = mediaMetadata.writer;
                if (charSequence8 != null) {
                    setWriter(charSequence8);
                }
                CharSequence charSequence9 = mediaMetadata.composer;
                if (charSequence9 != null) {
                    setComposer(charSequence9);
                }
                CharSequence charSequence10 = mediaMetadata.conductor;
                if (charSequence10 != null) {
                    setConductor(charSequence10);
                }
                Integer num11 = mediaMetadata.discNumber;
                if (num11 != null) {
                    setDiscNumber(num11);
                }
                Integer num12 = mediaMetadata.totalDiscCount;
                if (num12 != null) {
                    setTotalDiscCount(num12);
                }
                CharSequence charSequence11 = mediaMetadata.genre;
                if (charSequence11 != null) {
                    setGenre(charSequence11);
                }
                CharSequence charSequence12 = mediaMetadata.compilation;
                if (charSequence12 != null) {
                    setCompilation(charSequence12);
                }
                CharSequence charSequence13 = mediaMetadata.station;
                if (charSequence13 != null) {
                    setStation(charSequence13);
                }
                Integer num13 = mediaMetadata.mediaType;
                if (num13 != null) {
                    setMediaType(num13);
                }
                Bundle bundle = mediaMetadata.extras;
                if (bundle != null) {
                    setExtras(bundle);
                }
                if (!mediaMetadata.supportedCommands.isEmpty()) {
                    setSupportedCommands(mediaMetadata.supportedCommands);
                }
            }
            return this;
        }

        public MediaMetadata build() {
            return new MediaMetadata(this);
        }
    }

    public MediaMetadata(Builder builder) {
        Boolean boolValueOf = builder.isBrowsable;
        Integer numValueOf = builder.folderType;
        Integer numValueOf2 = builder.mediaType;
        if (boolValueOf != null) {
            if (!boolValueOf.booleanValue()) {
                numValueOf = -1;
            } else if (numValueOf == null || numValueOf.intValue() == -1) {
                numValueOf = Integer.valueOf(numValueOf2 != null ? getFolderTypeFromMediaType(numValueOf2.intValue()) : 0);
            }
        } else if (numValueOf != null) {
            boolean z = numValueOf.intValue() != -1;
            boolValueOf = Boolean.valueOf(z);
            if (z && numValueOf2 == null) {
                numValueOf2 = Integer.valueOf(getMediaTypeFromFolderType(numValueOf.intValue()));
            }
        }
        this.title = builder.title;
        this.artist = builder.artist;
        this.albumTitle = builder.albumTitle;
        this.albumArtist = builder.albumArtist;
        this.displayTitle = builder.displayTitle;
        this.subtitle = builder.subtitle;
        this.description = builder.description;
        this.durationMs = builder.durationMs;
        Builder.access$1200(builder);
        Builder.access$1300(builder);
        this.artworkData = builder.artworkData;
        this.artworkDataType = builder.artworkDataType;
        this.artworkUri = builder.artworkUri;
        this.trackNumber = builder.trackNumber;
        this.totalTrackCount = builder.totalTrackCount;
        this.folderType = numValueOf;
        this.isBrowsable = boolValueOf;
        this.isPlayable = builder.isPlayable;
        this.year = builder.recordingYear;
        this.recordingYear = builder.recordingYear;
        this.recordingMonth = builder.recordingMonth;
        this.recordingDay = builder.recordingDay;
        this.releaseYear = builder.releaseYear;
        this.releaseMonth = builder.releaseMonth;
        this.releaseDay = builder.releaseDay;
        this.writer = builder.writer;
        this.composer = builder.composer;
        this.conductor = builder.conductor;
        this.discNumber = builder.discNumber;
        this.totalDiscCount = builder.totalDiscCount;
        this.genre = builder.genre;
        this.compilation = builder.compilation;
        this.station = builder.station;
        this.mediaType = numValueOf2;
        this.supportedCommands = builder.supportedCommands;
        this.extras = builder.extras;
    }

    public Builder buildUpon() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && MediaMetadata.class == obj.getClass()) {
            MediaMetadata mediaMetadata = (MediaMetadata) obj;
            if (Objects.equals(this.title, mediaMetadata.title) && Objects.equals(this.artist, mediaMetadata.artist) && Objects.equals(this.albumTitle, mediaMetadata.albumTitle) && Objects.equals(this.albumArtist, mediaMetadata.albumArtist) && Objects.equals(this.displayTitle, mediaMetadata.displayTitle) && Objects.equals(this.subtitle, mediaMetadata.subtitle) && Objects.equals(this.description, mediaMetadata.description) && Objects.equals(this.durationMs, mediaMetadata.durationMs) && Arrays.equals(this.artworkData, mediaMetadata.artworkData) && Objects.equals(this.artworkDataType, mediaMetadata.artworkDataType) && Objects.equals(this.artworkUri, mediaMetadata.artworkUri) && Objects.equals(this.trackNumber, mediaMetadata.trackNumber) && Objects.equals(this.totalTrackCount, mediaMetadata.totalTrackCount) && Objects.equals(this.folderType, mediaMetadata.folderType) && Objects.equals(this.isBrowsable, mediaMetadata.isBrowsable) && Objects.equals(this.isPlayable, mediaMetadata.isPlayable) && Objects.equals(this.recordingYear, mediaMetadata.recordingYear) && Objects.equals(this.recordingMonth, mediaMetadata.recordingMonth) && Objects.equals(this.recordingDay, mediaMetadata.recordingDay) && Objects.equals(this.releaseYear, mediaMetadata.releaseYear) && Objects.equals(this.releaseMonth, mediaMetadata.releaseMonth) && Objects.equals(this.releaseDay, mediaMetadata.releaseDay) && Objects.equals(this.writer, mediaMetadata.writer) && Objects.equals(this.composer, mediaMetadata.composer) && Objects.equals(this.conductor, mediaMetadata.conductor) && Objects.equals(this.discNumber, mediaMetadata.discNumber) && Objects.equals(this.totalDiscCount, mediaMetadata.totalDiscCount) && Objects.equals(this.genre, mediaMetadata.genre) && Objects.equals(this.compilation, mediaMetadata.compilation) && Objects.equals(this.station, mediaMetadata.station) && Objects.equals(this.mediaType, mediaMetadata.mediaType) && Objects.equals(this.supportedCommands, mediaMetadata.supportedCommands)) {
                if ((this.extras == null) == (mediaMetadata.extras == null)) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.title, this.artist, this.albumTitle, this.albumArtist, this.displayTitle, this.subtitle, this.description, this.durationMs, null, null, Integer.valueOf(Arrays.hashCode(this.artworkData)), this.artworkDataType, this.artworkUri, this.trackNumber, this.totalTrackCount, this.folderType, this.isBrowsable, this.isPlayable, this.recordingYear, this.recordingMonth, this.recordingDay, this.releaseYear, this.releaseMonth, this.releaseDay, this.writer, this.composer, this.conductor, this.discNumber, this.totalDiscCount, this.genre, this.compilation, this.station, this.mediaType, Boolean.valueOf(this.extras == null), this.supportedCommands);
    }
}
