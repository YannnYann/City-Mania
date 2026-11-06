package com.badlogic.gdx.backends.android;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.StreamUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes.dex */
public class AndroidFileHandle extends FileHandle {
    public final AssetManager assets;

    public AndroidFileHandle(AssetManager assetManager, String str, Files.FileType fileType) {
        super(str.replace('\\', '/'), fileType);
        this.assets = assetManager;
    }

    public AndroidFileHandle(AssetManager assetManager, File file, Files.FileType fileType) {
        super(file, fileType);
        this.assets = assetManager;
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public FileHandle child(String str) {
        String strReplace = str.replace('\\', '/');
        return this.file.getPath().length() == 0 ? new AndroidFileHandle(this.assets, new File(strReplace), this.type) : new AndroidFileHandle(this.assets, new File(this.file, strReplace), this.type);
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public FileHandle parent() {
        File parentFile = this.file.getParentFile();
        if (parentFile == null) {
            if (this.type == Files.FileType.Absolute) {
                parentFile = new File("/");
            } else {
                parentFile = new File("");
            }
        }
        return new AndroidFileHandle(this.assets, parentFile, this.type);
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public InputStream read() {
        if (this.type == Files.FileType.Internal) {
            try {
                return this.assets.open(this.file.getPath());
            } catch (IOException e) {
                throw new GdxRuntimeException("Error reading file: " + this.file + " (" + this.type + ")", e);
            }
        }
        return super.read();
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public ByteBuffer map(FileChannel.MapMode mapMode) throws Throwable {
        Throwable th;
        Exception exc;
        long startOffset;
        long declaredLength;
        FileInputStream fileInputStream;
        if (this.type == Files.FileType.Internal) {
            FileInputStream fileInputStream2 = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor = getAssetFileDescriptor();
                    startOffset = assetFileDescriptor.getStartOffset();
                    declaredLength = assetFileDescriptor.getDeclaredLength();
                    fileInputStream = new FileInputStream(assetFileDescriptor.getFileDescriptor());
                } catch (Exception e) {
                    exc = e;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                MappedByteBuffer map = fileInputStream.getChannel().map(mapMode, startOffset, declaredLength);
                map.order(ByteOrder.nativeOrder());
                StreamUtils.closeQuietly(fileInputStream);
                return map;
            } catch (Exception e2) {
                exc = e2;
                fileInputStream2 = fileInputStream;
                throw new GdxRuntimeException("Error memory mapping file: " + this + " (" + this.type + ")", exc);
            } catch (Throwable th3) {
                th = th3;
                fileInputStream2 = fileInputStream;
                StreamUtils.closeQuietly(fileInputStream2);
                throw th;
            }
        }
        return super.map(mapMode);
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public FileHandle[] list() {
        if (this.type == Files.FileType.Internal) {
            try {
                String[] list = this.assets.list(this.file.getPath());
                int length = list.length;
                FileHandle[] fileHandleArr = new FileHandle[length];
                for (int i = 0; i < length; i++) {
                    fileHandleArr[i] = new AndroidFileHandle(this.assets, new File(this.file, list[i]), this.type);
                }
                return fileHandleArr;
            } catch (Exception e) {
                throw new GdxRuntimeException("Error listing children: " + this.file + " (" + this.type + ")", e);
            }
        }
        return super.list();
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public boolean isDirectory() {
        if (this.type != Files.FileType.Internal) {
            return super.isDirectory();
        }
        try {
            return this.assets.list(this.file.getPath()).length > 0;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public boolean exists() {
        if (this.type == Files.FileType.Internal) {
            String path = this.file.getPath();
            try {
                this.assets.open(path).close();
                return true;
            } catch (Exception unused) {
                try {
                    return this.assets.list(path).length > 0;
                } catch (Exception unused2) {
                    return false;
                }
            }
        }
        return super.exists();
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public long length() {
        if (this.type == Files.FileType.Internal) {
            AssetFileDescriptor assetFileDescriptorOpenFd = null;
            try {
                assetFileDescriptorOpenFd = this.assets.openFd(this.file.getPath());
                long length = assetFileDescriptorOpenFd.getLength();
                try {
                    assetFileDescriptorOpenFd.close();
                } catch (IOException unused) {
                }
                return length;
            } catch (IOException unused2) {
                if (assetFileDescriptorOpenFd != null) {
                    try {
                        assetFileDescriptorOpenFd.close();
                    } catch (IOException unused3) {
                    }
                }
            } catch (Throwable th) {
                if (assetFileDescriptorOpenFd != null) {
                    try {
                        assetFileDescriptorOpenFd.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        }
        return super.length();
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public File file() {
        return this.type == Files.FileType.Local ? new File(Gdx.files.getLocalStoragePath(), this.file.getPath()) : super.file();
    }

    public AssetFileDescriptor getAssetFileDescriptor() throws IOException {
        AssetManager assetManager = this.assets;
        if (assetManager != null) {
            return assetManager.openFd(path());
        }
        return null;
    }
}
