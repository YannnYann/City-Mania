package com.badlogic.gdx.files;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.StreamUtils;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import io.bidmachine.protobuf.EventTypeExtended;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes.dex */
public class FileHandle {
    public File file;
    public Files.FileType type;

    public FileHandle() {
    }

    public FileHandle(String str) {
        this.file = new File(str);
        this.type = Files.FileType.Absolute;
    }

    public FileHandle(File file) {
        this.file = file;
        this.type = Files.FileType.Absolute;
    }

    public FileHandle(String str, Files.FileType fileType) {
        this.type = fileType;
        this.file = new File(str);
    }

    public FileHandle(File file, Files.FileType fileType) {
        this.file = file;
        this.type = fileType;
    }

    public String path() {
        return this.file.getPath().replace('\\', '/');
    }

    public String name() {
        return this.file.getName();
    }

    public String nameWithoutExtension() {
        String name = this.file.getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf == -1 ? name : name.substring(0, iLastIndexOf);
    }

    public Files.FileType type() {
        return this.type;
    }

    public File file() {
        return this.type == Files.FileType.External ? new File(Gdx.files.getExternalStoragePath(), this.file.getPath()) : this.file;
    }

    public InputStream read() {
        Files.FileType fileType = this.type;
        if (fileType == Files.FileType.Classpath || ((fileType == Files.FileType.Internal && !file().exists()) || (this.type == Files.FileType.Local && !file().exists()))) {
            InputStream resourceAsStream = FileHandle.class.getResourceAsStream("/" + this.file.getPath().replace('\\', '/'));
            if (resourceAsStream != null) {
                return resourceAsStream;
            }
            throw new GdxRuntimeException("File not found: " + this.file + " (" + this.type + ")");
        }
        try {
            return new FileInputStream(file());
        } catch (Exception e) {
            if (file().isDirectory()) {
                throw new GdxRuntimeException("Cannot open a stream to a directory: " + this.file + " (" + this.type + ")", e);
            }
            throw new GdxRuntimeException("Error reading file: " + this.file + " (" + this.type + ")", e);
        }
    }

    public BufferedInputStream read(int i) {
        return new BufferedInputStream(read(), i);
    }

    public Reader reader(String str) {
        InputStream inputStream = read();
        try {
            return new InputStreamReader(inputStream, str);
        } catch (UnsupportedEncodingException e) {
            StreamUtils.closeQuietly(inputStream);
            throw new GdxRuntimeException("Error reading file: " + this, e);
        }
    }

    public String readString(String str) {
        StringBuilder sb = new StringBuilder(estimateLength());
        InputStreamReader inputStreamReader = null;
        try {
            try {
                if (str == null) {
                    inputStreamReader = new InputStreamReader(read());
                } else {
                    inputStreamReader = new InputStreamReader(read(), str);
                }
                char[] cArr = new char[256];
                while (true) {
                    int i = inputStreamReader.read(cArr);
                    if (i != -1) {
                        sb.append(cArr, 0, i);
                    } else {
                        StreamUtils.closeQuietly(inputStreamReader);
                        return sb.toString();
                    }
                }
            } catch (IOException e) {
                throw new GdxRuntimeException("Error reading layout file: " + this, e);
            }
        } catch (Throwable th) {
            StreamUtils.closeQuietly(inputStreamReader);
            throw th;
        }
    }

    public final int estimateLength() {
        int length = (int) length();
        return length != 0 ? length : EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE;
    }

    public ByteBuffer map() {
        return map(FileChannel.MapMode.READ_ONLY);
    }

    public ByteBuffer map(FileChannel.MapMode mapMode) throws Throwable {
        Exception exc;
        Throwable th;
        File file;
        RandomAccessFile randomAccessFile;
        if (this.type == Files.FileType.Classpath) {
            throw new GdxRuntimeException("Cannot map a classpath file: " + this);
        }
        RandomAccessFile randomAccessFile2 = null;
        try {
            try {
                file = file();
                randomAccessFile = new RandomAccessFile(file, mapMode == FileChannel.MapMode.READ_ONLY ? AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ : "rw");
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e) {
            exc = e;
        }
        try {
            MappedByteBuffer map = randomAccessFile.getChannel().map(mapMode, 0L, file.length());
            map.order(ByteOrder.nativeOrder());
            StreamUtils.closeQuietly(randomAccessFile);
            return map;
        } catch (Exception e2) {
            exc = e2;
            throw new GdxRuntimeException("Error memory mapping file: " + this + " (" + this.type + ")", exc);
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile2 = randomAccessFile;
            StreamUtils.closeQuietly(randomAccessFile2);
            throw th;
        }
    }

    public OutputStream write(boolean z) {
        Files.FileType fileType = this.type;
        if (fileType == Files.FileType.Classpath) {
            throw new GdxRuntimeException("Cannot write to a classpath file: " + this.file);
        }
        if (fileType == Files.FileType.Internal) {
            throw new GdxRuntimeException("Cannot write to an internal file: " + this.file);
        }
        parent().mkdirs();
        try {
            return new FileOutputStream(file(), z);
        } catch (Exception e) {
            if (file().isDirectory()) {
                throw new GdxRuntimeException("Cannot open a stream to a directory: " + this.file + " (" + this.type + ")", e);
            }
            throw new GdxRuntimeException("Error writing file: " + this.file + " (" + this.type + ")", e);
        }
    }

    public void write(InputStream inputStream, boolean z) {
        OutputStream outputStreamWrite = null;
        try {
            try {
                outputStreamWrite = write(z);
                StreamUtils.copyStream(inputStream, outputStreamWrite);
            } catch (Exception e) {
                throw new GdxRuntimeException("Error stream writing to file: " + this.file + " (" + this.type + ")", e);
            }
        } finally {
            StreamUtils.closeQuietly(inputStream);
            StreamUtils.closeQuietly(outputStreamWrite);
        }
    }

    public FileHandle[] list() {
        if (this.type == Files.FileType.Classpath) {
            throw new GdxRuntimeException("Cannot list a classpath directory: " + this.file);
        }
        String[] list = file().list();
        if (list == null) {
            return new FileHandle[0];
        }
        FileHandle[] fileHandleArr = new FileHandle[list.length];
        int length = list.length;
        for (int i = 0; i < length; i++) {
            fileHandleArr[i] = child(list[i]);
        }
        return fileHandleArr;
    }

    public boolean isDirectory() {
        if (this.type == Files.FileType.Classpath) {
            return false;
        }
        return file().isDirectory();
    }

    public FileHandle child(String str) {
        return this.file.getPath().length() == 0 ? new FileHandle(new File(str), this.type) : new FileHandle(new File(this.file, str), this.type);
    }

    public FileHandle parent() {
        File parentFile = this.file.getParentFile();
        if (parentFile == null) {
            if (this.type == Files.FileType.Absolute) {
                parentFile = new File("/");
            } else {
                parentFile = new File("");
            }
        }
        return new FileHandle(parentFile, this.type);
    }

    public void mkdirs() {
        Files.FileType fileType = this.type;
        if (fileType == Files.FileType.Classpath) {
            throw new GdxRuntimeException("Cannot mkdirs with a classpath file: " + this.file);
        }
        if (fileType == Files.FileType.Internal) {
            throw new GdxRuntimeException("Cannot mkdirs with an internal file: " + this.file);
        }
        file().mkdirs();
    }

    /* JADX INFO: renamed from: com.badlogic.gdx.files.FileHandle$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$badlogic$gdx$Files$FileType;

        static {
            int[] iArr = new int[Files.FileType.values().length];
            $SwitchMap$com$badlogic$gdx$Files$FileType = iArr;
            try {
                iArr[Files.FileType.Internal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$Files$FileType[Files.FileType.Classpath.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$Files$FileType[Files.FileType.Absolute.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$Files$FileType[Files.FileType.External.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public boolean exists() {
        int i = AnonymousClass1.$SwitchMap$com$badlogic$gdx$Files$FileType[this.type.ordinal()];
        if (i != 1) {
            if (i != 2) {
                return file().exists();
            }
        } else if (file().exists()) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("/");
        sb.append(this.file.getPath().replace('\\', '/'));
        return FileHandle.class.getResource(sb.toString()) != null;
    }

    public boolean delete() {
        Files.FileType fileType = this.type;
        if (fileType == Files.FileType.Classpath) {
            throw new GdxRuntimeException("Cannot delete a classpath file: " + this.file);
        }
        if (fileType == Files.FileType.Internal) {
            throw new GdxRuntimeException("Cannot delete an internal file: " + this.file);
        }
        return file().delete();
    }

    public long length() {
        Files.FileType fileType = this.type;
        if (fileType == Files.FileType.Classpath || (fileType == Files.FileType.Internal && !this.file.exists())) {
            InputStream inputStream = read();
            try {
                long jAvailable = inputStream.available();
                StreamUtils.closeQuietly(inputStream);
                return jAvailable;
            } catch (Exception unused) {
                StreamUtils.closeQuietly(inputStream);
                return 0L;
            } catch (Throwable th) {
                StreamUtils.closeQuietly(inputStream);
                throw th;
            }
        }
        return file().length();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FileHandle)) {
            return false;
        }
        FileHandle fileHandle = (FileHandle) obj;
        return this.type == fileHandle.type && path().equals(fileHandle.path());
    }

    public int hashCode() {
        return ((37 + this.type.hashCode()) * 67) + path().hashCode();
    }

    public String toString() {
        return this.file.getPath().replace('\\', '/');
    }
}
