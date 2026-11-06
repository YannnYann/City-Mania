package info.flowersoft.theotown.draftloader;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.ironsource.C3522b4;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.MusicDraft;
import info.flowersoft.theotown.resources.MusicBox;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import info.flowersoft.theotown.util.vfs.RealFile;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class MusicDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"music"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        FileHandle fileHandleAbsolute;
        MusicDraft musicDraft = new MusicDraft();
        loadDefaults(musicDraft);
        musicDraft.musicType = MusicBox.Type.resolveLegacy(this.src.optInt("music type", MusicBox.Type.GAME.legacyIndex));
        AbstractFile musicPath = PluginHelper.getMusicPath(this.src.getString(C3522b4.i.b));
        musicDraft.file = musicPath;
        if (musicPath == null) {
            throw new IllegalStateException(this.src.getString(C3522b4.i.b) + " not found");
        }
        if (this.src.optBoolean("clear previous", false)) {
            throw new IllegalStateException("Music draft option `clear previous` was removed");
        }
        AbstractFile abstractFile = musicDraft.file;
        if (abstractFile instanceof RealFile) {
            fileHandleAbsolute = Gdx.files.absolute(((RealFile) abstractFile).getRealFile().getAbsolutePath());
        } else {
            fileHandleAbsolute = Gdx.files.absolute(Resources.getTempFile(abstractFile.getName()).getAbsolutePath());
            try {
                fileHandleAbsolute.write(musicDraft.file.read(), false);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        MusicBox.getInstance().addMusic(musicDraft.id + "/" + fileHandleAbsolute.name(), fileHandleAbsolute.nameWithoutExtension() + " (plugin)", musicDraft.musicType, fileHandleAbsolute);
        return musicDraft;
    }
}
