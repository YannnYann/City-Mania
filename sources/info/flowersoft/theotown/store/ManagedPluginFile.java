package info.flowersoft.theotown.store;

import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.Hex;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.util.StreamCopyUtil;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes4.dex */
public class ManagedPluginFile {
    public final String author;
    public final Color authorColor;
    public final int authorId;
    public final File file;
    public final long fileSize;
    public long firstDownloaded;
    public final String hash;
    public final int headerSize;
    public final int imgSize;
    public final byte[] key;
    public boolean lastActive;
    public final long lastUpdate;
    public int lastVersion;
    public int mpfVersion;
    public int order;
    public boolean permanent;
    public PluginFileTranslation pluginFileTranslation;
    public final int pluginId;
    public final int pluginSize;
    public final byte[] rb;
    public final int revisionId;
    public final String text;
    public final String title;
    public final int version;
    public boolean active = true;
    public String error = null;
    public final int keyLength = 16;
    public final int rbLength = 16;

    public ManagedPluginFile(File file) throws IOException {
        int i;
        this.file = file;
        this.fileSize = file.length();
        DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(file)));
        try {
            long j = dataInputStream.readLong();
            long j2 = dataInputStream.readLong();
            int i2 = dataInputStream.readInt();
            this.headerSize = i2;
            this.imgSize = dataInputStream.readInt();
            this.pluginSize = dataInputStream.readInt();
            if (j != 8391455616826567022L || j2 != 7237124572454151019L) {
                throw new IOException("Invalid magic number: " + j + j2);
            }
            if (i2 < 86) {
                throw new IOException("Unsupported header size: " + i2);
            }
            byte[] bArrHex2bin = Hex.hex2bin("9b91ca1afdd49c375eb972e119e5eeed");
            this.key = bArrHex2bin;
            if (bArrHex2bin.length != 16) {
                throw new IllegalStateException();
            }
            this.rb = new byte[16];
            int i3 = 0;
            for (int i4 = 0; i4 < 16; i4++) {
                this.rb[i4] = (byte) (dataInputStream.readByte() ^ this.key[i4]);
            }
            this.pluginId = dataInputStream.readInt();
            this.revisionId = dataInputStream.readInt();
            this.version = dataInputStream.readInt();
            this.authorId = dataInputStream.readInt();
            this.lastUpdate = dataInputStream.readLong();
            int i5 = dataInputStream.readInt();
            byte[] bArr = new byte[i5];
            dataInputStream.read(bArr);
            Charset charset = StandardCharsets.UTF_8;
            this.author = new String(bArr, charset);
            int i6 = (i2 - 68) - (i5 + 4);
            byte[] bArr2 = new byte[3];
            dataInputStream.read(bArr2);
            this.authorColor = new Color((bArr2[0] + 256) % 256, (bArr2[1] + 256) % 256, (bArr2[2] + 256) % 256);
            int i7 = dataInputStream.readInt();
            byte[] bArr3 = new byte[i7];
            dataInputStream.read(bArr3);
            this.title = new String(bArr3, charset);
            int i8 = (i6 - 7) - (i7 + 4);
            int i9 = dataInputStream.readInt();
            byte[] bArr4 = new byte[i9];
            dataInputStream.read(bArr4);
            this.text = new String(bArr4, charset);
            int iSkipBytes = i8 - (i9 + 4);
            if (iSkipBytes >= 8) {
                this.order = dataInputStream.readInt();
                iSkipBytes -= 4;
            }
            if (iSkipBytes >= 8) {
                this.mpfVersion = dataInputStream.readInt();
                iSkipBytes -= 4;
            }
            if (iSkipBytes >= 8) {
                i = dataInputStream.readInt();
                iSkipBytes -= 4;
            } else {
                i = 0;
            }
            if (iSkipBytes >= 8) {
                i3 = dataInputStream.readInt();
                iSkipBytes -= 4;
            }
            while (iSkipBytes > 4) {
                iSkipBytes -= dataInputStream.skipBytes(iSkipBytes - 4);
            }
            if (iSkipBytes < 0 || dataInputStream.readInt() != i) {
                throw new IOException("Corrupted header");
            }
            if (this.fileSize < this.headerSize + this.imgSize + this.pluginSize) {
                throw new IOException("Corrupted data");
            }
            if (i3 > 0) {
                this.pluginFileTranslation = readTranslations();
            }
            dataInputStream.close();
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            try {
                this.hash = Hex.bin2hex(Hashing.md5(bufferedInputStream));
                bufferedInputStream.close();
            } catch (Throwable th) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                dataInputStream.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public int getOrder() {
        return this.order;
    }

    public long getFirstDownloaded() {
        return this.firstDownloaded;
    }

    public void setFirstDownloaded(long j) {
        this.firstDownloaded = j;
    }

    public String getAuthor() {
        return this.author;
    }

    public Color getAuthorColor() {
        return this.authorColor;
    }

    public String getTitle() {
        return this.title;
    }

    public String getText() {
        return this.text;
    }

    public String getTranslatedTitle() {
        if (Settings.translatePlugins) {
            return translateInline(this.title);
        }
        return this.title;
    }

    public boolean isValid() {
        return this.file.exists() && this.file.length() == this.fileSize;
    }

    public boolean isActive() {
        return this.active;
    }

    public void setActive(boolean z) {
        this.active = z;
    }

    public boolean isPermanent() {
        return this.permanent;
    }

    public void setPermanent(boolean z) {
        this.permanent = z;
    }

    public String getError() {
        return this.error;
    }

    public void setError(String str) {
        this.error = str;
    }

    public File getFile() {
        return this.file;
    }

    public String getHash() {
        return this.hash;
    }

    public long getFileSize() {
        return this.fileSize;
    }

    public int getPluginId() {
        return this.pluginId;
    }

    public int getRevisionId() {
        return this.revisionId;
    }

    public int getVersion() {
        return this.version;
    }

    public int getAuthorId() {
        return this.authorId;
    }

    public long getLastUpdate() {
        return this.lastUpdate;
    }

    public int getLastVersion() {
        return this.lastVersion;
    }

    public void setLastVersion(int i) {
        this.lastVersion = i;
    }

    public boolean isLastActive() {
        return this.lastActive;
    }

    public void setLastActive(boolean z) {
        this.lastActive = z;
    }

    public final InputStream getStreamAt(int i) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(this.file);
        while (i > 0) {
            long j = i;
            i = (int) (j - fileInputStream.skip(j));
        }
        return fileInputStream;
    }

    public boolean hasTranslations() {
        return this.pluginFileTranslation != null;
    }

    public JSONObject getTranslations() {
        PluginFileTranslation pluginFileTranslation = this.pluginFileTranslation;
        if (pluginFileTranslation != null) {
            return pluginFileTranslation.getApplyTranslations();
        }
        return null;
    }

    public String translateInline(String str) {
        PluginFileTranslation pluginFileTranslation = this.pluginFileTranslation;
        return pluginFileTranslation != null ? pluginFileTranslation.translateInline(str) : str;
    }

    public final PluginFileTranslation readTranslations() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPInputStream gZIPInputStream = new GZIPInputStream(new BufferedInputStream(getStreamAt(this.headerSize + this.imgSize + this.pluginSize + 27)));
            StreamCopyUtil.copyTo(gZIPInputStream, byteArrayOutputStream);
            gZIPInputStream.close();
            return new PluginFileTranslation(new JSONObject(new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8)));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public BufferedInputStream openImage() throws IOException {
        return new BufferedInputStream(getStreamAt(this.headerSize));
    }

    public byte[] getImageData() {
        try {
            BufferedInputStream bufferedInputStreamOpenImage = openImage();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            StreamCopyUtil.copyTo(bufferedInputStreamOpenImage, byteArrayOutputStream);
            bufferedInputStreamOpenImage.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            TheoTown.analytics.logException(e);
            return null;
        }
    }

    public InputStream openPlugin() throws IOException {
        InputStream streamAt = getStreamAt(this.headerSize + this.imgSize);
        final byte[] bArrCopyOf = Arrays.copyOf(this.rb, 16);
        return new BufferedInputStream(streamAt) { // from class: info.flowersoft.theotown.store.ManagedPluginFile.1
            public int pos = 0;

            @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
            public boolean markSupported() {
                return false;
            }

            @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
            public synchronized int read() throws IOException {
                int i;
                try {
                    i = this.pos < ManagedPluginFile.this.pluginSize ? super.read() : -1;
                    if (i >= 0) {
                        int i2 = this.pos & 15;
                        byte[] bArr = bArrCopyOf;
                        byte b = bArr[i2];
                        i ^= b;
                        byte[] bArr2 = ManagedPluginFile.this.key;
                        int i3 = this.pos;
                        bArr[i2] = (byte) (b + bArr2[i3 & 15]);
                        this.pos = i3 + 1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
                return i;
            }

            @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
            public synchronized int read(byte[] bArr, int i, int i2) throws IOException {
                int i3;
                i3 = super.read(bArr, i, Math.min(i2, ManagedPluginFile.this.pluginSize - this.pos));
                int i4 = i + i3;
                while (i < i4) {
                    int i5 = this.pos & 15;
                    byte b = bArr[i];
                    byte[] bArr2 = bArrCopyOf;
                    bArr[i] = (byte) (b ^ bArr2[i5]);
                    byte b2 = bArr2[i5];
                    byte[] bArr3 = ManagedPluginFile.this.key;
                    int i6 = this.pos;
                    bArr2[i5] = (byte) (b2 + bArr3[i6 & 15]);
                    this.pos = i6 + 1;
                    i++;
                }
                return i3;
            }
        };
    }
}
