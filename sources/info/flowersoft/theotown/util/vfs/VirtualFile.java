package info.flowersoft.theotown.util.vfs;

import info.flowersoft.theotown.util.vfs.AbstractFile;
import io.blueflower.stapel2d.util.StreamCopyUtil;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public class VirtualFile extends AbstractFile {
    public static long loadedSize;
    public static long volatileSize;
    public byte[] data;
    public int dataLength;
    public AbstractFile.DataSource dataSource;

    public static VirtualFile createFile(String str, byte[] bArr, AbstractFile abstractFile) {
        VirtualFile virtualFile = new VirtualFile(str, false, abstractFile);
        virtualFile.data = bArr;
        virtualFile.dataLength = bArr.length;
        return virtualFile;
    }

    public static VirtualFile createFile(String str, int i, AbstractFile.DataSource dataSource, AbstractFile abstractFile) {
        VirtualFile virtualFile = new VirtualFile(str, false, abstractFile);
        virtualFile.dataSource = dataSource;
        virtualFile.dataLength = i;
        return virtualFile;
    }

    public static VirtualFile createDirectory(String str, AbstractFile abstractFile) {
        return new VirtualFile(str, true, abstractFile);
    }

    public VirtualFile(String str, boolean z, AbstractFile abstractFile) {
        super(abstractFile == null ? stripPath(str) : str, z, ensureParentsExists(str, abstractFile));
    }

    public static String stripPath(String str) {
        return str.contains("/") ? str.substring(str.lastIndexOf("/") + 1) : str;
    }

    public static AbstractFile ensureParentsExists(String str, AbstractFile abstractFile) {
        if (str.contains("/") && abstractFile == null) {
            String[] strArrSplit = str.split("/");
            for (int i = 0; i < strArrSplit.length - 1; i++) {
                abstractFile = createDirectory(strArrSplit[i], abstractFile);
            }
        }
        return abstractFile;
    }

    @Override // info.flowersoft.theotown.util.vfs.AbstractFile
    public int length() {
        return this.dataLength;
    }

    @Override // info.flowersoft.theotown.util.vfs.AbstractFile
    public InputStream read() throws IOException {
        if (isDirectory()) {
            throw new FileNotFoundException("VF is a directory");
        }
        if (this.data == null) {
            return this.dataSource.get();
        }
        return new ByteArrayInputStream(this.data);
    }

    @Override // info.flowersoft.theotown.util.vfs.AbstractFile
    public byte[] readBytes() throws IOException {
        if (isDirectory()) {
            throw new FileNotFoundException("VF is a directory");
        }
        byte[] bArr = this.data;
        if (bArr != null) {
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        InputStream inputStream = this.dataSource.get();
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
        return createDirectory(str, this);
    }

    @Override // info.flowersoft.theotown.util.vfs.AbstractFile
    public AbstractFile newFile(String str, InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        StreamCopyUtil.copyTo(inputStream, byteArrayOutputStream);
        loadedSize += (long) byteArrayOutputStream.size();
        return createFile(str, byteArrayOutputStream.toByteArray(), this);
    }

    @Override // info.flowersoft.theotown.util.vfs.AbstractFile
    public AbstractFile newFile(String str, int i, AbstractFile.DataSource dataSource) {
        volatileSize += (long) i;
        return createFile(str, i, dataSource, this);
    }

    @Override // info.flowersoft.theotown.util.vfs.AbstractFile
    public AbstractFile createDirectoryChild(String str) {
        return createDirectory(str, this);
    }
}
