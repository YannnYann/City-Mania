package info.flowersoft.theotown.util;

import com.badlogic.gdx.files.FileHandle;
import info.flowersoft.theotown.crossplatform.Analytics;
import info.flowersoft.theotown.crossplatform.TheoTown;
import io.blueflower.stapel2d.util.StreamCopyUtil;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.nio.channels.FileChannel;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class Files {
    public static String normalizeFileName(String str) {
        if (str == null) {
            return "null";
        }
        String strReplaceAll = str.replaceAll("[^0-9a-zA-Z_.-]", "");
        if (strReplaceAll.isEmpty()) {
            return "empty";
        }
        if (strReplaceAll.equals(".")) {
            return "dot";
        }
        return strReplaceAll.equals("..") ? "dotdot" : strReplaceAll;
    }

    public static File allocateNonExistentFile(File file, String str, String str2) {
        if (!file.exists() && !file.mkdirs()) {
            return null;
        }
        String strNormalizeFileName = normalizeFileName(str);
        File file2 = new File(file, strNormalizeFileName + str2);
        for (int i = 1; i <= 9999 && file2.exists(); i++) {
            file2 = new File(file, strNormalizeFileName + " (" + i + ")" + str2);
        }
        return file2;
    }

    public static String readTextFile(InputStream inputStream) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    if (sb.length() > 0) {
                        sb.append('\n');
                    }
                    sb.append(line);
                } else {
                    bufferedReader.close();
                    return sb.toString();
                }
            }
        } catch (IOException e) {
            Analytics analytics = TheoTown.analytics;
            if (analytics == null) {
                return null;
            }
            analytics.logException(e);
            return null;
        }
    }

    public static String readTextFile(FileHandle fileHandle) {
        try {
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(fileHandle.reader("UTF8"));
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    if (sb.length() > 0) {
                        sb.append('\n');
                    }
                    sb.append(line);
                } else {
                    bufferedReader.close();
                    return sb.toString();
                }
            }
        } catch (Exception e) {
            Analytics analytics = TheoTown.analytics;
            if (analytics == null) {
                return null;
            }
            analytics.logException(e);
            return null;
        }
    }

    public static String readTextFile(File file) {
        return readTextFile(new FileHandle(file));
    }

    public static boolean writeTextFileSecured(File file, String str) {
        File file2 = null;
        for (int i = 0; i < 100 && file2 == null; i++) {
            file2 = new File(file.getParent(), file.getName() + "_" + RandomUtil.generateRandomLowercaseString(8));
            if (file2.exists()) {
                file2 = null;
            }
        }
        if (file2 == null || !writeTextFile(file2, str) || (file.exists() && !file.delete())) {
            return false;
        }
        return file2.renameTo(file);
    }

    public static boolean writeTextFile(File file, String str) {
        File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), StandardCharsets.UTF_8));
            bufferedWriter.write(str);
            bufferedWriter.close();
            return true;
        } catch (IOException e) {
            Analytics analytics = TheoTown.analytics;
            if (analytics == null) {
                return false;
            }
            analytics.logException(e);
            return false;
        }
    }

    public static byte[] readBinaryFile(File file) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            StreamCopyUtil.copyTo(bufferedInputStream, byteArrayOutputStream);
            bufferedInputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            Analytics analytics = TheoTown.analytics;
            if (analytics == null) {
                return null;
            }
            analytics.logException(e);
            return null;
        }
    }

    public static boolean writeBinaryFile(File file, byte[] bArr) {
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
            bufferedOutputStream.write(bArr);
            bufferedOutputStream.close();
            return true;
        } catch (IOException e) {
            Analytics analytics = TheoTown.analytics;
            if (analytics == null) {
                return false;
            }
            analytics.logException(e);
            return false;
        }
    }

    public static boolean copyFile(File file, File file2) {
        if (file.isFile()) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                FileChannel channel = fileInputStream.getChannel();
                channel.transferTo(0L, channel.size(), fileOutputStream.getChannel());
                fileInputStream.close();
                fileOutputStream.close();
                if (file2.exists() && file2.isFile()) {
                    if (file.length() == file2.length()) {
                        return true;
                    }
                }
                return false;
            } catch (IOException e) {
                Analytics analytics = TheoTown.analytics;
                if (analytics != null) {
                    analytics.logException(e);
                }
                return false;
            }
        }
        if (!file.isDirectory()) {
            return false;
        }
        if (!file2.isDirectory() && !file2.mkdirs()) {
            return false;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (int i = 0; i < fileArrListFiles.length; i++) {
                if (!copyFile(fileArrListFiles[i], new File(file2, fileArrListFiles[i].getName()))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean copyFile(InputStream inputStream, File file) {
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
            StreamCopyUtil.copyTo(inputStream, bufferedOutputStream);
            inputStream.close();
            bufferedOutputStream.close();
            if (file.exists()) {
                if (file.isFile()) {
                    return true;
                }
            }
            return false;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean copyFile(FileHandle fileHandle, File file) {
        try {
            file.getParentFile().mkdirs();
            InputStream inputStream = fileHandle.read();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
            StreamCopyUtil.copyTo(bufferedInputStream, bufferedOutputStream);
            bufferedInputStream.close();
            bufferedOutputStream.close();
            if (file.exists()) {
                if (file.isFile()) {
                    return true;
                }
            }
            return false;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static String getText(String str) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new URL(str).openStream(), "UTF-8"));
            ArrayList arrayList = new ArrayList();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                arrayList.add(line);
            }
            bufferedReader.close();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < arrayList.size(); i++) {
                sb.append((String) arrayList.get(i));
                if (i < arrayList.size() - 1) {
                    sb.append('\n');
                }
            }
            return sb.toString();
        } catch (IOException unused) {
            return null;
        }
    }

    public static boolean deleteFile(File file) {
        if (file.isFile()) {
            return file.delete();
        }
        if (!file.isDirectory() || file.getName().equals("..") || file.getName().equals(".")) {
            return true;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (!deleteFile(file2)) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    public static long size(File file) {
        File[] fileArrListFiles;
        if (file.isFile()) {
            return file.length();
        }
        long size = 0;
        if (file.isDirectory() && !file.getName().equals("..") && !file.getName().equals(".") && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                size += size(file2);
            }
        }
        return size;
    }
}
