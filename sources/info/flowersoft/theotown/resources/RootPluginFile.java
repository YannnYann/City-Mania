package info.flowersoft.theotown.resources;

import info.flowersoft.theotown.util.ExternalPluginImporter;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ContentData.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class RootPluginFile implements ContentData {
    public ExternalPluginImporter.ExternalPluginData externalPluginData;
    public final AbstractFile file;

    public RootPluginFile(AbstractFile file) {
        Intrinsics.checkNotNullParameter(file, "file");
        this.file = file;
    }

    public final AbstractFile getFile() {
        return this.file;
    }

    public final ExternalPluginImporter.ExternalPluginData getExternalPluginData() {
        return this.externalPluginData;
    }

    public final void setExternalPluginData(ExternalPluginImporter.ExternalPluginData externalPluginData) {
        this.externalPluginData = externalPluginData;
    }
}
