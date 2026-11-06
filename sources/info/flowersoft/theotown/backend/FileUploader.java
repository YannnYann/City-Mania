package info.flowersoft.theotown.backend;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.C3522b4;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.Hex;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.StreamCopyUtil;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class FileUploader {
    public boolean taskIsRunning;
    public final List<PendingFile> pendingFiles = new ArrayList();
    public final String url = Resources.getSpecificConfig("connection").optString("file api url", "https://api.theotown.com/user");

    public boolean addFile(String str, File file, Setter<Integer> setter, Setter<String> setter2) {
        try {
            String strBin2hex = Hex.bin2hex(Hashing.md5(new BufferedInputStream(new FileInputStream(file))));
            PendingFile pendingFile = new PendingFile();
            pendingFile.file = file;
            pendingFile.role = str;
            pendingFile.name = str + "/" + file.getName();
            pendingFile.md5 = strBin2hex;
            int length = (int) file.length();
            pendingFile.size = length;
            pendingFile.onSuccess = setter;
            pendingFile.onError = setter2;
            if (length == 0) {
                return false;
            }
            appendPendingFile(pendingFile);
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public final void appendPendingFile(PendingFile pendingFile) {
        synchronized (this.pendingFiles) {
            try {
                this.pendingFiles.remove(pendingFile);
                this.pendingFiles.add(pendingFile);
                if (!this.taskIsRunning) {
                    scheduleTask();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void retry(PendingFile pendingFile, String str) {
        synchronized (this.pendingFiles) {
            try {
                int i = pendingFile.tries + 1;
                pendingFile.tries = i;
                if (i > 3 || this.pendingFiles.contains(pendingFile)) {
                    Setter<String> setter = pendingFile.onError;
                    if (setter != null) {
                        setter.set(str);
                    }
                    scheduleTask();
                } else {
                    this.pendingFiles.add(0, pendingFile);
                    scheduleTask();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void scheduleTask() {
        synchronized (this.pendingFiles) {
            try {
                if (this.pendingFiles.isEmpty()) {
                    this.taskIsRunning = false;
                    return;
                }
                final PendingFile pendingFileRemove = this.pendingFiles.remove(0);
                this.taskIsRunning = true;
                Service service = new Service("user/upload_request");
                Backend.getInstance().addTask(service.buildTask(service.buildRequest("upload file").put("name", pendingFileRemove.name).put("size", pendingFileRemove.size).put("md5", pendingFileRemove.md5).build(), new Service.Handler() { // from class: info.flowersoft.theotown.backend.FileUploader.1
                    @Override // info.flowersoft.theotown.backend.Service.Handler
                    public void onSuccess(JSONObject jSONObject) throws Throwable {
                        int iOptInt = jSONObject.optInt("file id");
                        String strOptString = jSONObject.optString(C3522b4.i.W);
                        try {
                            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(pendingFileRemove.file));
                            FileUploader fileUploader = FileUploader.this;
                            String str = "upload_file?id=" + iOptInt + "&user_id=" + Backend.getInstance().getUser().getId() + "&key=" + strOptString;
                            PendingFile pendingFile = pendingFileRemove;
                            String strPrimitiveStreamUpload = fileUploader.primitiveStreamUpload(str, pendingFile.name, bufferedInputStream, pendingFile.size);
                            if (strPrimitiveStreamUpload != null) {
                                FileUploader.this.retry(pendingFileRemove, strPrimitiveStreamUpload);
                                return;
                            }
                            Setter<Integer> setter = pendingFileRemove.onSuccess;
                            if (setter != null) {
                                setter.set(Integer.valueOf(iOptInt));
                            }
                            FileUploader.this.scheduleTask();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }

                    @Override // info.flowersoft.theotown.backend.Service.Handler
                    public void onFailure(JSONObject jSONObject) {
                        Gdx.app.error("FileUploader", jSONObject.toString());
                        FileUploader.this.retry(pendingFileRemove, jSONObject.optString("status", jSONObject.toString()));
                    }
                }));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String primitiveStreamUpload(String str, String str2, InputStream inputStream, int i) throws Throwable {
        InputStream inputStream2;
        OutputStream outputStream;
        String str3;
        Gdx.app.debug("FileUploader", "Uploading " + str2 + "... (" + i + " bytes)");
        long jMillis = TimeUtils.millis();
        OutputStream outputStream2 = null;
        str = null;
        str = null;
        String str4 = null;
        try {
            URLConnection uRLConnectionOpenConnection = new URL(this.url + "/" + str).openConnection();
            uRLConnectionOpenConnection.setDoOutput(true);
            String str5 = "-----------------------------4664151417711\r\nContent-Disposition: form-data; name=\"file\"; filename=\"" + str2 + "\"\r\nContent-Type: image/jpeg\r\n\r\n";
            uRLConnectionOpenConnection.setRequestProperty("Content-Type", "multipart/form-data; boundary=---------------------------4664151417711");
            uRLConnectionOpenConnection.setRequestProperty("Content-Length", String.valueOf(str5.length() + 48 + i));
            outputStream = uRLConnectionOpenConnection.getOutputStream();
            try {
                outputStream.write(str5.getBytes());
                byte[] buffer = StreamCopyUtil.getBuffer();
                int i2 = 0;
                do {
                    int i3 = inputStream.read(buffer);
                    if (i3 > 0) {
                        outputStream.write(buffer, 0, i3);
                        i2 += i3;
                    } else if (i3 < 0) {
                        break;
                    }
                    if (i2 >= i) {
                        break;
                    }
                } while (inputStream.available() != 0);
                outputStream.write("\r\n-----------------------------4664151417711--\r\n".getBytes());
                outputStream.flush();
                InputStream inputStream3 = uRLConnectionOpenConnection.getInputStream();
                try {
                    try {
                        Gdx.app.debug("FileUploader", "Read...");
                        StringBuilder sb = new StringBuilder();
                        do {
                            int i4 = inputStream3.read(buffer);
                            if (i4 > 0) {
                                sb.append(new String(buffer, 0, i4));
                            }
                        } while (inputStream3.available() != 0);
                        String string = sb.toString();
                        try {
                            Gdx.app.debug("FileUploader", sb.toString());
                            Gdx.app.debug("FileUploader", "Upload took " + (TimeUtils.millis() - jMillis) + "ms");
                            JSONObject jSONObject = new JSONObject(string);
                            if (jSONObject.getString("status").equals("success")) {
                                try {
                                    outputStream.close();
                                } catch (Exception unused) {
                                }
                                try {
                                    inputStream3.close();
                                } catch (Exception unused2) {
                                }
                                try {
                                    inputStream.close();
                                } catch (Exception unused3) {
                                }
                                return null;
                            }
                            String string2 = jSONObject.getString("status");
                            try {
                                outputStream.close();
                            } catch (Exception unused4) {
                            }
                            try {
                                inputStream3.close();
                            } catch (Exception unused5) {
                            }
                            try {
                                inputStream.close();
                            } catch (Exception unused6) {
                            }
                            return string2;
                        } catch (Exception e) {
                            str4 = string;
                            inputStream2 = inputStream3;
                            e = e;
                            try {
                                e.printStackTrace();
                                if (str4 == null) {
                                    str3 = "No response";
                                } else {
                                    str3 = "Response: " + str4;
                                }
                                try {
                                    outputStream.close();
                                } catch (Exception unused7) {
                                }
                                try {
                                    inputStream2.close();
                                } catch (Exception unused8) {
                                }
                                try {
                                    inputStream.close();
                                } catch (Exception unused9) {
                                }
                                return str3;
                            } catch (Throwable th) {
                                th = th;
                                outputStream2 = outputStream;
                                try {
                                    outputStream2.close();
                                } catch (Exception unused10) {
                                }
                                try {
                                    inputStream2.close();
                                } catch (Exception unused11) {
                                }
                                try {
                                    inputStream.close();
                                    throw th;
                                } catch (Exception unused12) {
                                    throw th;
                                }
                            }
                        }
                    } catch (Exception e2) {
                        inputStream2 = inputStream3;
                        e = e2;
                    }
                } catch (Throwable th2) {
                    inputStream2 = inputStream3;
                    th = th2;
                    outputStream2 = outputStream;
                    outputStream2.close();
                    inputStream2.close();
                    inputStream.close();
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                inputStream2 = null;
            } catch (Throwable th3) {
                th = th3;
                inputStream2 = null;
            }
        } catch (Exception e4) {
            e = e4;
            inputStream2 = null;
            outputStream = null;
        } catch (Throwable th4) {
            th = th4;
            inputStream2 = null;
            outputStream2.close();
            inputStream2.close();
            inputStream.close();
            throw th;
        }
    }

    public static class PendingFile {
        public File file;
        public String md5;
        public String name;
        public Setter<String> onError;
        public Setter<Integer> onSuccess;
        public String role;
        public int size;
        public int tries;

        public PendingFile() {
        }

        public boolean equals(Object obj) {
            if (obj instanceof PendingFile) {
                return ((PendingFile) obj).name.equals(this.name);
            }
            return false;
        }
    }
}
