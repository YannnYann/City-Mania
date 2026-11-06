package info.flowersoft.theotown.util.vfs;

import info.flowersoft.theotown.util.vfs.AbstractFile;
import io.blueflower.stapel2d.util.StreamCopyUtil;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Set;
import vm2.NoLuaAccess;

/* JADX INFO: loaded from: classes4.dex */
public class RealFile extends AbstractFile {
    public static final Set<String> excludeFileNames = new HashSet(Arrays.asList(".git"));

    @NoLuaAccess
    public final File file;

    @NoLuaAccess
    public static RealFile parse(File file, String str, boolean z) {
        File[] fileArrListFiles;
        if (file == null) {
            return null;
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        RealFile realFile = new RealFile(str, file, null);
        LinkedList linkedList = new LinkedList();
        linkedList.add(realFile);
        while (!linkedList.isEmpty()) {
            RealFile realFile2 = (RealFile) linkedList.poll();
            if (realFile2.isDirectory() && (fileArrListFiles = realFile2.file.listFiles()) != null) {
                for (int i = 0; i < fileArrListFiles.length; i++) {
                    String name = fileArrListFiles[i].getName();
                    if (!excludeFileNames.contains(name)) {
                        if (z) {
                            name = name.toLowerCase(Locale.ENGLISH);
                        }
                        linkedList.add(new RealFile(name, fileArrListFiles[i], realFile2));
                    }
                }
            }
        }
        return realFile;
    }

    @Override // info.flowersoft.theotown.util.vfs.AbstractFile
    public boolean isDirectory() {
        return this.file.isDirectory();
    }

    @NoLuaAccess
    public File getRealFile() {
        return this.file;
    }

    @NoLuaAccess
    public static RealFile createFile(File file, AbstractFile abstractFile) {
        if (!file.exists() || !file.isFile()) {
            throw new IllegalArgumentException("File does not exist");
        }
        return new RealFile(file.getName(), file, abstractFile);
    }

    @NoLuaAccess
    public static RealFile createDirectory(File file, AbstractFile abstractFile) {
        if (file.exists() && file.isFile()) {
            throw new IllegalArgumentException("Directory is a file");
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return new RealFile(file.getName(), file, abstractFile);
    }

    @NoLuaAccess
    public RealFile(String str, File file, AbstractFile abstractFile) {
        super(str, file.isDirectory(), abstractFile);
        this.file = file;
    }

    @Override // info.flowersoft.theotown.util.vfs.AbstractFile
    public int length() {
        return (int) Math.min(this.file.length(), 2147483647L);
    }

    @Override // info.flowersoft.theotown.util.vfs.AbstractFile
    public InputStream read() throws IOException {
        return new BufferedInputStream(new FileInputStream(this.file));
    }

    @Override // info.flowersoft.theotown.util.vfs.AbstractFile
    public byte[] readBytes() throws IOException {
        if (!this.file.isFile()) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((int) this.file.length());
        InputStream inputStream = read();
        try {
            StreamCopyUtil.copyTo(inputStream, byteArrayOutputStream);
            if (inputStream != null) {
                inputStream.close();
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Override // info.flowersoft.theotown.util.vfs.AbstractFile
    public AbstractFile newDirectory(String str) {
        AbstractFile file = getFile(str);
        if (file != null && file.isDirectory()) {
            return file;
        }
        if (file != null && file.isFile()) {
            throw new IllegalStateException("Cannot replace file with dir");
        }
        return createDirectory(new File(this.file, str), this);
    }

    @Override // info.flowersoft.theotown.util.vfs.AbstractFile
    public AbstractFile newFile(String str, InputStream inputStream) throws IOException {
        File file = new File(this.file, str);
        if (file.exists()) {
            file.delete();
        }
        file.getParentFile().mkdirs();
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        try {
            StreamCopyUtil.copyTo(inputStream, bufferedOutputStream);
            bufferedOutputStream.close();
            return new RealFile(str, file, this);
        } catch (Throwable th) {
            try {
                bufferedOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // info.flowersoft.theotown.util.vfs.AbstractFile
    public AbstractFile newFile(String str, int i, AbstractFile.DataSource dataSource) throws IOException {
        InputStream inputStream = dataSource.get();
        try {
            AbstractFile abstractFileNewFile = newFile(str, inputStream);
            if (inputStream != null) {
                inputStream.close();
            }
            return abstractFileNewFile;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Override // info.flowersoft.theotown.util.vfs.AbstractFile
    public AbstractFile createDirectoryChild(String str) {
        File file = new File(this.file, str);
        file.mkdirs();
        return new RealFile(str, file, this);
    }

    public boolean equals(Object obj) {
        if (obj instanceof RealFile) {
            return this.file.equals(((RealFile) obj).file);
        }
        return super.equals(obj);
    }
}
