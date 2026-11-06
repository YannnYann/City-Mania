package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.util.vfs.AbstractFile;

/* JADX INFO: loaded from: classes4.dex */
public class PluginImageFile implements Comparable<PluginImageFile> {
    public static int MAX_SIZE = 1024;
    public int h;
    public AbstractFile path;
    public int w;

    public final int score() {
        return (((Math.max(this.w, this.h) * MAX_SIZE) + Math.min(this.w, this.h)) * 2) + (this.w >= this.h ? 1 : 0);
    }

    @Override // java.lang.Comparable
    public int compareTo(PluginImageFile pluginImageFile) {
        return pluginImageFile.score() - score();
    }
}
