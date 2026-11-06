package com.google.common.io;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.graph.SuccessorsFunction;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class Files {
    public static final SuccessorsFunction<File> FILE_TREE = new SuccessorsFunction<File>() { // from class: com.google.common.io.Files.2
    };

    /* JADX INFO: renamed from: com.google.common.io.Files$1, reason: invalid class name */
    public class AnonymousClass1 {
    }

    public static ByteSink asByteSink(File file, FileWriteMode... modes) {
        return new FileByteSink(file, modes, null);
    }

    public static final class FileByteSink extends ByteSink {
        public final File file;
        public final ImmutableSet<FileWriteMode> modes;

        public /* synthetic */ FileByteSink(File file, FileWriteMode[] fileWriteModeArr, AnonymousClass1 anonymousClass1) {
            this(file, fileWriteModeArr);
        }

        public FileByteSink(File file, FileWriteMode... modes) {
            this.file = (File) Preconditions.checkNotNull(file);
            this.modes = ImmutableSet.copyOf(modes);
        }

        @Override // com.google.common.io.ByteSink
        public FileOutputStream openStream() throws IOException {
            return new FileOutputStream(this.file, this.modes.contains(FileWriteMode.APPEND));
        }

        public String toString() {
            return "Files.asByteSink(" + this.file + ", " + this.modes + ")";
        }
    }

    public static void write(byte[] from, File to) throws Throwable {
        asByteSink(to, new FileWriteMode[0]).write(from);
    }

    public static void createParentDirs(File file) throws IOException {
        Preconditions.checkNotNull(file);
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile == null) {
            return;
        }
        parentFile.mkdirs();
        if (parentFile.isDirectory()) {
            return;
        }
        throw new IOException("Unable to create parent directories of " + file);
    }
}
