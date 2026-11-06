package info.flowersoft.theotown.crossplatform;

import com.badlogic.gdx.Gdx;
import com.ironsource.C3522b4;
import info.flowersoft.theotown.util.SSP;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CustomAnalytics implements Analytics {
    public File logFile;
    public final DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss", Locale.US);
    public long numId = -1;

    public CustomAnalytics(File file, File file2) {
        this.logFile = file;
        writeToLog("Startup");
        if (file2 != null) {
            OutputStream managedFOS = getManagedFOS(file2, 1048576L);
            System.setOut(new PrintStream(new OutputStreamComposite(new OutputStream[]{System.out, managedFOS})));
            System.setErr(new PrintStream(new OutputStreamComposite(new OutputStream[]{System.err, managedFOS})));
        }
    }

    @Override // info.flowersoft.theotown.crossplatform.Analytics
    public void logException(Exception exc) {
        logException("", exc);
    }

    @Override // info.flowersoft.theotown.crossplatform.Analytics
    public void logException(String str, Exception exc) {
        StringWriter stringWriter = new StringWriter();
        exc.printStackTrace(new PrintWriter(stringWriter));
        logEvent("Exception", exc.toString(), stringWriter.toString());
        writeToLog(str + "\n" + exc + "\n" + stringWriter);
    }

    @Override // info.flowersoft.theotown.crossplatform.Analytics
    public void writeToLog(String str) {
        File file = this.logFile;
        if (file == null) {
            return;
        }
        try {
            if (file.getParentFile() != null && !this.logFile.getParentFile().exists()) {
                this.logFile.getParentFile().mkdirs();
            }
            clearupLog();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.logFile, true), StandardCharsets.UTF_8));
            bufferedWriter.write(C3522b4.j.d + TheoTown.VERSION_NAME + "] " + this.dateFormat.format(new Date()) + ": " + str + "\n");
            bufferedWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public final void clearupLog() {
        if (!this.logFile.exists() || this.logFile.length() < 4194304) {
            return;
        }
        this.logFile.delete();
    }

    public final void fetchNumId() {
        SSP ssp = new SSP("analytics");
        long j = ssp.load().getLong("numid", 0L);
        this.numId = j;
        if (j < 100000000000L || j > 999999999999L) {
            this.numId = (Math.abs(new Random().nextLong() / 2) % 900000000000L) + 100000000000L;
            SSP.Writer writerEdit = ssp.edit();
            writerEdit.putLong("numid", this.numId);
            writerEdit.apply();
            Gdx.app.debug("CustomAnalytics", "Select id " + this.numId);
        }
    }

    @Override // info.flowersoft.theotown.crossplatform.Analytics
    public long getNumId() {
        if (this.numId == -1 && Gdx.app != null) {
            fetchNumId();
        }
        return this.numId;
    }

    public static OutputStream getManagedFOS(final File file, final long j) {
        return new OutputStream() { // from class: info.flowersoft.theotown.crossplatform.CustomAnalytics.1
            public long length;
            public OutputStream os;

            public final void checkStream() {
                if (this.length > j || this.os == null) {
                    this.length = 0L;
                    OutputStream outputStream = this.os;
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (IOException unused) {
                        }
                    }
                    try {
                        this.os = new FileOutputStream(file);
                    } catch (FileNotFoundException unused2) {
                        this.os = new ByteArrayOutputStream();
                    }
                }
            }

            @Override // java.io.OutputStream
            public void write(int i) throws IOException {
                checkStream();
                this.os.write(i);
                this.length++;
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr) throws IOException {
                checkStream();
                this.os.write(bArr);
                this.length += (long) bArr.length;
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) throws IOException {
                checkStream();
                this.os.write(bArr, i, i2);
                this.length += (long) i2;
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() throws IOException {
                OutputStream outputStream = this.os;
                if (outputStream != null) {
                    outputStream.flush();
                }
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                OutputStream outputStream = this.os;
                if (outputStream != null) {
                    outputStream.close();
                }
            }
        };
    }

    public static class OutputStreamComposite extends OutputStream {
        public final OutputStream[] oss;

        public OutputStreamComposite(OutputStream[] outputStreamArr) {
            this.oss = outputStreamArr;
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            int i2 = 0;
            while (true) {
                try {
                    OutputStream[] outputStreamArr = this.oss;
                    if (i2 >= outputStreamArr.length) {
                        return;
                    }
                    outputStreamArr[i2].write(i);
                    i2++;
                } catch (Exception unused) {
                    return;
                }
            }
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            int i3 = 0;
            while (true) {
                try {
                    OutputStream[] outputStreamArr = this.oss;
                    if (i3 >= outputStreamArr.length) {
                        return;
                    }
                    outputStreamArr[i3].write(bArr, i, i2);
                    i3++;
                } catch (Exception unused) {
                    return;
                }
            }
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            int i = 0;
            while (true) {
                try {
                    OutputStream[] outputStreamArr = this.oss;
                    if (i >= outputStreamArr.length) {
                        return;
                    }
                    outputStreamArr[i].flush();
                    i++;
                } catch (Exception unused) {
                    return;
                }
            }
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            int i = 0;
            while (true) {
                try {
                    OutputStream[] outputStreamArr = this.oss;
                    if (i >= outputStreamArr.length) {
                        return;
                    }
                    outputStreamArr[i].close();
                    i++;
                } catch (Exception unused) {
                    return;
                }
            }
        }
    }
}
