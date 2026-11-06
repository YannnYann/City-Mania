package info.flowersoft.theotown.util;

import com.badlogic.gdx.Gdx;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import com.ironsource.R6;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.StreamCopyUtilKt;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import kotlin.Unit;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PluginExporter.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class PluginExporter {
    public static final PluginExporter INSTANCE = new PluginExporter();

    public final boolean hasPluginManifest(File pluginDir) {
        String textFile;
        Intrinsics.checkNotNullParameter(pluginDir, "pluginDir");
        File file = new File(pluginDir, "plugin.manifest");
        if (!file.exists() || (textFile = Files.readTextFile(file)) == null) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(textFile);
            jSONObject.getString(C3670j8.x);
            jSONObject.getInt("version");
            jSONObject.getString(C3522b4.i.D0);
            return true;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    public final void packPlugin(File pluginDir, File targetFile, JSONObject header) {
        Intrinsics.checkNotNullParameter(pluginDir, "pluginDir");
        Intrinsics.checkNotNullParameter(targetFile, "targetFile");
        Intrinsics.checkNotNullParameter(header, "header");
        if (!pluginDir.exists() || !pluginDir.isDirectory()) {
            return;
        }
        if (targetFile.exists() && !targetFile.delete()) {
            return;
        }
        putHeaderInfo(header, pluginDir);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(targetFile));
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(bufferedOutputStream, StandardCharsets.UTF_8));
                bufferedWriter.write(header.toString());
                bufferedWriter.write("\n");
                bufferedWriter.flush();
                ZipOutputStream zipOutputStream = new ZipOutputStream(new EncOutputStream(bufferedOutputStream, 0));
                try {
                    addFileOrDirectory$default(INSTANCE, zipOutputStream, pluginDir, SetsKt__SetsKt.setOf((Object[]) new String[]{".git", ".nomedia", ".DS_Store", ".vscode", "__MACOSX"}), null, null, 12, null);
                    CloseableKt.closeFinally(zipOutputStream, null);
                    CloseableKt.closeFinally(bufferedOutputStream, null);
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public final JSONObject putHeaderInfo(JSONObject jSONObject, File file) {
        try {
            jSONObject.put("game version", TheoTown.VERSION_CODE);
            jSONObject.put("format version", 0);
            jSONObject.put(R6.H, Gdx.app.getType().toString());
            JSONObject jSONObjectPut = jSONObject.put("original name", file.getName());
            Intrinsics.checkNotNull(jSONObjectPut);
            return jSONObjectPut;
        } catch (JSONException e) {
            e.printStackTrace();
            return jSONObject;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void addFileOrDirectory$default(PluginExporter pluginExporter, ZipOutputStream zipOutputStream, File file, Set set, String str, byte[] bArr, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            set = null;
        }
        if ((i & 4) != 0) {
            str = "";
        }
        if ((i & 8) != 0) {
            bArr = null;
        }
        pluginExporter.addFileOrDirectory(zipOutputStream, file, set, str, bArr);
    }

    public final void addFileOrDirectory(ZipOutputStream zipOutputStream, File file, Set<String> set, String str, byte[] bArr) throws IOException {
        if (Intrinsics.areEqual(file.getName(), ".") || Intrinsics.areEqual(file.getName(), "..")) {
            return;
        }
        if (set != null ? set.contains(file.getName()) : false) {
            return;
        }
        if (file.isDirectory()) {
            String str2 = str + file.getName() + '/';
            zipOutputStream.putNextEntry(new ZipEntry(str2));
            zipOutputStream.closeEntry();
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    PluginExporter pluginExporter = INSTANCE;
                    Intrinsics.checkNotNull(file2);
                    pluginExporter.addFileOrDirectory(zipOutputStream, file2, set, str2, bArr);
                }
                return;
            }
            return;
        }
        if (file.isFile()) {
            zipOutputStream.putNextEntry(new ZipEntry(str + file.getName()));
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            try {
                StreamCopyUtilKt.copyTo(bufferedInputStream, zipOutputStream);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(bufferedInputStream, null);
                zipOutputStream.closeEntry();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(bufferedInputStream, th);
                    throw th2;
                }
            }
        }
    }
}
