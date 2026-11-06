package info.flowersoft.theotown.cityfile;

import com.badlogic.gdx.Gdx;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.store.ManagedPluginsController;
import io.blueflower.stapel2d.util.StreamCopyUtil;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes4.dex */
public class Backup {
    public static final File DIR = new File(TheoTown.APP_DIR, "backups");

    public static File saveBackup(String str) {
        File file = new File(DIR, str);
        saveBackup(file);
        return file;
    }

    public static void saveBackup(File file) {
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file)));
            backupFolder(zipOutputStream, "plugins/", Resources.getPluginDir(), false);
            backupFolder(zipOutputStream, "managed plugins/", Resources.getManagedPluginsDir(), false);
            backupFolder(zipOutputStream, "maps/", new File(TheoTown.APP_DIR, "maps"), true);
            backupFolder(zipOutputStream, "scenario/", new File(TheoTown.APP_DIR, "scenarios"), true);
            backupFolder(zipOutputStream, "regions/", Resources.getRegionsDir(), true);
            zipOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void backupFolder(ZipOutputStream zipOutputStream, String str, File file, boolean z) {
        if (file.exists() && file.isDirectory()) {
            ArrayList<File> arrayList = new ArrayList();
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    if (!file2.getName().equals(".") && !file2.getName().equals("..")) {
                        if (file2.isDirectory()) {
                            arrayList.add(file2);
                        } else if (file2.isFile() && (!z || file2.getName().endsWith(".city") || file2.getName().endsWith(".json"))) {
                            try {
                                ZipEntry zipEntry = new ZipEntry(str + file2.getName());
                                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file2));
                                zipOutputStream.putNextEntry(zipEntry);
                                StreamCopyUtil.copyTo(bufferedInputStream, zipOutputStream);
                                bufferedInputStream.close();
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                for (File file3 : arrayList) {
                    backupFolder(zipOutputStream, str + file3.getName() + "/", file3, z);
                }
            }
        }
    }

    public static boolean loadBackup(String str) {
        return loadBackup(new File(DIR, str));
    }

    public static boolean loadBackup(File file) throws Throwable {
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            boolean zLoadBackup = loadBackup(bufferedInputStream);
            try {
                bufferedInputStream.close();
                return zLoadBackup;
            } catch (IOException e2) {
                e2.printStackTrace();
                return zLoadBackup;
            }
        } catch (IOException e3) {
            e = e3;
            bufferedInputStream2 = bufferedInputStream;
            e.printStackTrace();
            if (bufferedInputStream2 == null) {
                return false;
            }
            try {
                bufferedInputStream2.close();
                return false;
            } catch (IOException e4) {
                e4.printStackTrace();
                return false;
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream2 = bufferedInputStream;
            if (bufferedInputStream2 != null) {
                try {
                    bufferedInputStream2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static boolean loadBackup(InputStream inputStream) {
        File file = TheoTown.APP_DIR;
        try {
            ZipInputStream zipInputStream = new ZipInputStream(inputStream);
            String canonicalPath = file.getCanonicalPath();
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry != null) {
                    if (!nextEntry.isDirectory()) {
                        File file2 = new File(file, nextEntry.getName());
                        if (file2.getCanonicalPath().startsWith(canonicalPath)) {
                            if (!file2.getParentFile().exists()) {
                                file2.getParentFile().mkdirs();
                            }
                            if (file2.exists()) {
                                Gdx.app.debug("Backup", "File " + file2 + " already exists");
                            } else {
                                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
                                StreamCopyUtil.copyTo(zipInputStream, bufferedOutputStream);
                                bufferedOutputStream.close();
                            }
                        }
                    }
                } else {
                    ManagedPluginsController.getInstance().addLocalPlugins(false, false, true);
                    return true;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }
}
