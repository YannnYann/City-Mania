package info.flowersoft.theotown.resources;

import info.flowersoft.theotown.util.vfs.AbstractFile;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ContentData.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CurrentDirContentData implements ContentData {
    public final AbstractFile file;

    public CurrentDirContentData(AbstractFile file) {
        Intrinsics.checkNotNullParameter(file, "file");
        this.file = file;
    }

    public final AbstractFile getFile() {
        return this.file;
    }
}
