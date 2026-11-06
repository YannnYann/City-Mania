package info.flowersoft.theotown.stages;

import info.flowersoft.theotown.resources.Resources;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public enum FileType {
    UNKNOWN(new IntProvider() { // from class: info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda0
        @Override // info.flowersoft.theotown.stages.FileType.IntProvider
        public final int get() {
            return Resources.ICON_DISASTER_NUKE;
        }
    }, ""),
    CITY(new IntProvider() { // from class: info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda1
        @Override // info.flowersoft.theotown.stages.FileType.IntProvider
        public final int get() {
            return Resources.ICON_CITY;
        }
    }, ".+\\.city"),
    CITY_BACKUP(new IntProvider() { // from class: info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda2
        @Override // info.flowersoft.theotown.stages.FileType.IntProvider
        public final int get() {
            return Resources.ICON_CLOCK;
        }
    }, ".+\\.backup|.+\\.store0|.+\\.store1"),
    TEXT(new IntProvider() { // from class: info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda3
        @Override // info.flowersoft.theotown.stages.FileType.IntProvider
        public final int get() {
            return Resources.ICON_NOTIFICATION;
        }
    }, ".+\\.json|.+\\.lua|.+\\.txt|.+\\.log|.+\\.manifest|.+\\.md"),
    PLUGIN(new IntProvider() { // from class: info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda4
        @Override // info.flowersoft.theotown.stages.FileType.IntProvider
        public final int get() {
            return Resources.ICON_PLUGIN;
        }
    }, ".+\\.plugin|.+\\.mpf|.+\\.zip|.+\\.ttplugin"),
    IMAGE(new IntProvider() { // from class: info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda5
        @Override // info.flowersoft.theotown.stages.FileType.IntProvider
        public final int get() {
            return Resources.ICON_CAMERA;
        }
    }, ".+\\.png|.+\\.jpg|.+\\.gif"),
    SOUND(new IntProvider() { // from class: info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda6
        @Override // info.flowersoft.theotown.stages.FileType.IntProvider
        public final int get() {
            return Resources.ICON_MUSIC;
        }
    }, ".+\\.mp3|.+\\.ogg|.+\\.wav"),
    SPECIAL(new IntProvider() { // from class: info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda7
        @Override // info.flowersoft.theotown.stages.FileType.IntProvider
        public final int get() {
            return Resources.ICON_PICKLE_COIN;
        }
    }, ".+\\.lby|.+\\.ja");

    public static FileType[] cachedValues;
    public final String extensions;
    public final IntProvider icon;

    public interface IntProvider {
        int get();
    }

    FileType(IntProvider intProvider, String str) {
        this.icon = intProvider;
        this.extensions = str;
    }

    public int getIcon() {
        return this.icon.get();
    }

    public static FileType resolve(String str) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        for (FileType fileType : cachedValues()) {
            if (lowerCase.matches(fileType.extensions)) {
                return fileType;
            }
        }
        return UNKNOWN;
    }

    public static FileType[] cachedValues() {
        if (cachedValues == null) {
            cachedValues = values();
        }
        return cachedValues;
    }
}
