package info.flowersoft.theotown.resources;

import com.badlogic.gdx.Gdx;
import info.flowersoft.theotown.creation.HeightMap;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.HeightMapDraft;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.Hashing;
import io.blueflower.stapel2d.util.StreamCopyUtil;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes4.dex */
public class HeightMapManager {
    public final Map<String, HeightMapDescriptor> heightmapMapping = new HashMap();
    public final List<HeightMapDescriptor> heightmapList = new ArrayList();

    public static class HeightMapDescriptor {
        public HeightMapDraft draft;
        public boolean hidden;
        public boolean inZipFile;
        public String name;

        public HeightMapDescriptor(String str, HeightMapDraft heightMapDraft, boolean z) {
            if (heightMapDraft != null && z) {
                throw new IllegalArgumentException("HeightMap may not be defined in draft and zip file at the same time");
            }
            this.name = str;
            this.draft = heightMapDraft;
            this.inZipFile = z;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0097 A[LOOP:1: B:15:0x008f->B:17:0x0097, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public HeightMapManager(io.blueflower.stapel2d.gamestack.Stapel2DGameContext r7) {
        /*
            Method dump skipped, instruction units count: 202
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.resources.HeightMapManager.<init>(io.blueflower.stapel2d.gamestack.Stapel2DGameContext):void");
    }

    public final String transformFilename(String str) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        return lowerCase.indexOf(46) > 0 ? lowerCase.substring(0, lowerCase.indexOf(46)) : lowerCase;
    }

    public final ZipInputStream getZipStream() {
        return new ZipInputStream(new BufferedInputStream(Gdx.files.internal(Hashing.internalName("heightmaps.zip", "ae6bb9dcccb3ee65a2a5e1964c8ca37b")).read()));
    }

    public final void addNoSource(String str) {
        this.heightmapMapping.put(str, new HeightMapDescriptor(str, null, false));
    }

    public final boolean extractFile(String str, File file) {
        if (file.exists()) {
            file.delete();
        }
        if (file.exists()) {
            return false;
        }
        ZipInputStream zipStream = getZipStream();
        while (true) {
            try {
                ZipEntry nextEntry = zipStream.getNextEntry();
                if (nextEntry != null) {
                    if (!nextEntry.isDirectory() && transformFilename(nextEntry.getName()).equals(str)) {
                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                        StreamCopyUtil.copyTo(zipStream, bufferedOutputStream);
                        bufferedOutputStream.close();
                        break;
                    }
                } else {
                    break;
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        zipStream.close();
        return file.exists();
    }

    public boolean isPlugin(String str) {
        HeightMapDescriptor heightMapDescriptor;
        HeightMapDraft heightMapDraft;
        return (str == null || str.isEmpty() || (heightMapDescriptor = this.heightmapMapping.get(str)) == null || (heightMapDraft = heightMapDescriptor.draft) == null || !heightMapDraft.plugin) ? false : true;
    }

    public ArrayList<String> getAvailableMaps() {
        ArrayList<String> arrayList = new ArrayList<>();
        for (HeightMapDescriptor heightMapDescriptor : this.heightmapList) {
            if (!heightMapDescriptor.hidden) {
                arrayList.add(heightMapDescriptor.name);
            }
        }
        return arrayList;
    }

    public HeightMap get(String str, int i) {
        HeightMapDescriptor heightMapDescriptor = this.heightmapMapping.get(str);
        if (heightMapDescriptor == null) {
            return null;
        }
        if (heightMapDescriptor.inZipFile) {
            File tempFile = Resources.getTempFile();
            if (extractFile(str.toLowerCase(Locale.ENGLISH), tempFile)) {
                HeightMap heightMapLoadHeightMap = TheoTown.runtimeFeatures.loadHeightMap(Gdx.files.absolute(tempFile.getAbsolutePath()), i);
                tempFile.delete();
                return heightMapLoadHeightMap;
            }
        }
        if (heightMapDescriptor.draft != null) {
            File tempFile2 = Resources.getTempFile();
            try {
                byte[] bytes = heightMapDescriptor.draft.getFile().readBytes();
                if (bytes != null) {
                    Files.writeBinaryFile(tempFile2, bytes);
                    HeightMap heightMapLoadHeightMap2 = TheoTown.runtimeFeatures.loadHeightMap(Gdx.files.absolute(tempFile2.getAbsolutePath()), i);
                    tempFile2.delete();
                    return heightMapLoadHeightMap2;
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
