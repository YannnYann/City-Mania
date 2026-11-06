package info.flowersoft.theotown.android;

import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.content.pm.Signature;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.GradientDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.provider.MediaStore;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.RoundedCorner;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.webkit.MimeTypeMap;
import android.widget.EditText;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import androidx.documentfile.provider.DocumentFile;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.backends.android.AndroidApplication;
import com.badlogic.gdx.backends.android.AndroidEventListener;
import com.badlogic.gdx.backends.android.AndroidGraphics;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.PixmapIO;
import com.badlogic.gdx.utils.Base64Coder;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.review.ReviewManager;
import com.google.android.play.core.review.ReviewManagerFactory;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.creation.HeightMap;
import info.flowersoft.theotown.crossplatform.RuntimeFeatures;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.stages.commandhandler.CommandHandler;
import info.flowersoft.theotown.theotown.MainActivity;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.Hex;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.StreamCopyUtil;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes4.dex */
public class AndroidRuntimeFeatures implements RuntimeFeatures {
    public final AndroidApplication application;
    public boolean gotPermissions;
    public boolean tpc;
    public final float[] trbl = new float[4];

    public static /* synthetic */ void $r8$lambda$eKy_LZLVm_TQ0C8pKQtALHgWOCU(Task task) {
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void applyDarkTheme(boolean z) {
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public boolean canImportAndExportFolder() {
        return true;
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public List<CommandHandler> getCommandHandlers() {
        return null;
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public boolean isFullscreen() {
        return false;
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public String normalizeShaderCode(String str) {
        return str;
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void setFullscreen(boolean z, int i, int i2) {
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public boolean supportsFullscreen() {
        return false;
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public boolean supportsOrientation() {
        return true;
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public boolean supportsShareImage() {
        return true;
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public boolean supportsShareText() {
        return true;
    }

    public AndroidRuntimeFeatures(AndroidApplication androidApplication) {
        this.application = androidApplication;
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void applyOrientation(int i) {
        this.application.setRequestedOrientation(i != 0 ? i != 1 ? 2 : 12 : 11);
        prepareTPC();
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public float[] getInsetsTRBL() {
        if (Build.VERSION.SDK_INT >= 28) {
            View view = getView();
            if (view.getRootWindowInsets().getDisplayCutout() != null) {
                this.trbl[0] = r1.getSafeInsetTop();
                this.trbl[1] = r1.getSafeInsetRight();
                this.trbl[2] = r1.getSafeInsetBottom();
                this.trbl[3] = r1.getSafeInsetLeft();
                float cornerRadius = getCornerRadius();
                if (view.getWidth() > view.getHeight()) {
                    float[] fArr = this.trbl;
                    fArr[1] = Math.max(fArr[1], cornerRadius);
                    float[] fArr2 = this.trbl;
                    fArr2[3] = Math.max(fArr2[3], cornerRadius);
                } else {
                    float[] fArr3 = this.trbl;
                    fArr3[0] = Math.max(fArr3[0], cornerRadius);
                    float[] fArr4 = this.trbl;
                    fArr4[2] = Math.max(fArr4[2], cornerRadius);
                }
                return this.trbl;
            }
        }
        float cornerRadius2 = getCornerRadius();
        if (cornerRadius2 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            float[] fArr5 = this.trbl;
            fArr5[0] = 0.0f;
            float f = cornerRadius2 / 2.0f;
            fArr5[1] = f;
            fArr5[2] = 0.0f;
            fArr5[3] = f;
        } else {
            Arrays.fill(this.trbl, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        }
        return this.trbl;
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public float getCornerRadius() {
        int i = Settings.edgeRadius;
        if (i >= 0) {
            return i;
        }
        String str = TheoTown.DEVICE_MODEL;
        str.getClass();
        if (str.equals("Mi MIX 3")) {
            return 90.0f;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 31) {
            if (i2 >= 28) {
                return 30.0f;
            }
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        WindowInsets rootWindowInsets = getView().getRootWindowInsets();
        int iMax = 0;
        for (int i3 = 0; i3 < 4; i3++) {
            RoundedCorner roundedCorner = rootWindowInsets.getRoundedCorner(3);
            if (roundedCorner != null) {
                iMax = Math.max(iMax, roundedCorner.getRadius());
            }
        }
        return iMax;
    }

    public final View getView() {
        return ((AndroidGraphics) Gdx.graphics).getView();
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public boolean isWifiConnected() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.application.getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            return activeNetworkInfo.getType() == 1 || activeNetworkInfo.getType() == 9;
        }
        return false;
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void informAboutNewImage(File file) {
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(Uri.fromFile(file));
        this.application.sendBroadcast(intent);
    }

    public final void showGenericFile(File file, String str) {
        Uri uriForFile;
        Intent intent = new Intent("android.intent.action.VIEW");
        if (file.exists()) {
            uriForFile = FileProvider.getUriForFile(this.application, this.application.getApplicationContext().getPackageName() + ".provider", file);
        } else {
            try {
                uriForFile = Uri.parse(new JSONObject(file.toString()).getString("uri"));
            } catch (Exception unused) {
                return;
            }
        }
        intent.setDataAndType(uriForFile, str);
        intent.setFlags(1);
        try {
            this.application.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void showImage(File file) {
        showGenericFile(file, "image/*");
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public boolean openURI(String str) {
        return Gdx.net.openURI(str);
    }

    public void restartApp() {
        Intent launchIntentForPackage = this.application.getPackageManager().getLaunchIntentForPackage(this.application.getPackageName());
        if (launchIntentForPackage == null) {
            throw new IllegalStateException("Something here is off, and you probably know what it is :/");
        }
        launchIntentForPackage.addFlags(268468224);
        Intent intent = new Intent(this.application, (Class<?>) MainActivity.class);
        intent.addFlags(268468224);
        intent.putExtra("theotown_restart_intents", launchIntentForPackage);
        this.application.startActivity(intent);
        System.exit(0);
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void restartAppSlowly() {
        try {
            Thread.sleep(200L);
        } catch (Exception e) {
            e.printStackTrace();
        }
        restartApp();
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void showToast(final String str) {
        this.application.runOnUiThread(new Runnable() { // from class: info.flowersoft.theotown.android.AndroidRuntimeFeatures$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Toast.makeText(this.f$0.application, str, 1).show();
            }
        });
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void closeApp() {
        this.application.moveTaskToBack(true);
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public int[][] getFullscreenResolutions() {
        return new int[0][];
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public HeightMap loadHeightMap(FileHandle fileHandle, int i) {
        try {
            InputStream inputStream = fileHandle.read();
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream);
            inputStream.close();
            if (bitmapDecodeStream == null) {
                return null;
            }
            if (i > 0) {
                bitmapDecodeStream = Bitmap.createScaledBitmap(bitmapDecodeStream, i, i, true);
            }
            float[] fArr = new float[bitmapDecodeStream.getWidth() * bitmapDecodeStream.getHeight()];
            for (int i2 = 0; i2 < bitmapDecodeStream.getHeight(); i2++) {
                for (int i3 = 0; i3 < bitmapDecodeStream.getWidth(); i3++) {
                    fArr[(bitmapDecodeStream.getWidth() * i2) + i3] = ((bitmapDecodeStream.getPixel(i3, i2) >> 8) & 255) / 255.0f;
                }
            }
            return new HeightMap(bitmapDecodeStream.getWidth(), bitmapDecodeStream.getHeight(), fArr);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void shareText(String str, String str2) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", str2);
        intent.setType("text/plain");
        this.application.startActivity(Intent.createChooser(intent, str));
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void shareImage(File file) {
        Uri uriFromFile;
        String name;
        try {
            try {
                JSONObject jSONObject = new JSONObject(file.toString());
                uriFromFile = Uri.parse(jSONObject.getString("uri"));
                name = jSONObject.getString("name");
            } catch (JSONException unused) {
                uriFromFile = Uri.fromFile(file);
                name = file.getName();
            }
            String mimeType = getMimeType(name);
            Intent intent = new Intent("android.intent.action.SEND");
            intent.addFlags(1);
            intent.setType(mimeType);
            intent.putExtra("android.intent.extra.STREAM", uriFromFile);
            this.application.startActivity(Intent.createChooser(intent, "Share using"));
        } catch (Exception e) {
            e.printStackTrace();
            showToast(e.getMessage());
        }
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public boolean waitingForPermissions() {
        return !this.gotPermissions;
    }

    public void setGotPermissions() {
        this.gotPermissions = true;
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.android.AndroidRuntimeFeatures$1, reason: invalid class name */
    public class AnonymousClass1 implements RuntimeFeatures.TextEditor {
        public EditText editText;
        public String text;
        public final /* synthetic */ String val$content;
        public final /* synthetic */ int val$h;
        public final /* synthetic */ int val$w;
        public final /* synthetic */ int val$x;
        public final /* synthetic */ int val$y;

        public AnonymousClass1(String str, int i, int i2, int i3, int i4) {
            this.val$content = str;
            this.val$h = i;
            this.val$x = i2;
            this.val$y = i3;
            this.val$w = i4;
            this.text = str;
            AndroidRuntimeFeatures.this.application.runOnUiThread(new Runnable() { // from class: info.flowersoft.theotown.android.AndroidRuntimeFeatures.1.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass1.this.editText = new EditText(AndroidRuntimeFeatures.this.application.getContext());
                    AndroidRuntimeFeatures.this.application.addContentView(AnonymousClass1.this.editText, new ViewGroup.LayoutParams(-2, -2));
                    Skin skin = Resources.skin;
                    Color color = skin.cText;
                    Color color2 = skin.cBg;
                    AnonymousClass1.this.editText.setTextColor(android.graphics.Color.rgb(color.getRed(), color.getGreen(), color.getBlue()));
                    AnonymousClass1.this.editText.setBackgroundColor(android.graphics.Color.rgb(color2.getRed(), color2.getRed(), color2.getBlue()));
                    AnonymousClass1.this.editText.setAlpha(1.0f);
                    AnonymousClass1.this.editText.setInputType(96);
                    AnonymousClass1.this.editText.setAlpha(0.95f);
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setShape(0);
                    gradientDrawable.setColor(android.graphics.Color.rgb(color2.getRed(), color2.getGreen(), color2.getBlue()));
                    gradientDrawable.setCornerRadius(AnonymousClass1.this.val$h / 6.0f);
                    gradientDrawable.setStroke(2, -16777216);
                    AnonymousClass1.this.editText.setBackground(gradientDrawable);
                    AnonymousClass1.this.editText.setX(r0.val$x);
                    AnonymousClass1.this.editText.setY(r0.val$y);
                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                    anonymousClass1.editText.setWidth(anonymousClass1.val$w);
                    AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                    anonymousClass12.editText.setHeight(anonymousClass12.val$h);
                    AnonymousClass1.this.editText.setTextSize(0, r0.val$h / 3);
                    AnonymousClass1 anonymousClass13 = AnonymousClass1.this;
                    anonymousClass13.editText.setText(anonymousClass13.val$content);
                    AnonymousClass1.this.editText.addTextChangedListener(new TextWatcher() { // from class: info.flowersoft.theotown.android.AndroidRuntimeFeatures.1.1.1
                        @Override // android.text.TextWatcher
                        public void afterTextChanged(Editable editable) {
                        }

                        @Override // android.text.TextWatcher
                        public void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                        }

                        @Override // android.text.TextWatcher
                        public void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                            AnonymousClass1.this.text = charSequence.toString();
                        }
                    });
                }
            });
        }

        @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures.TextEditor
        public void setText(final String str) {
            this.text = str;
            AndroidRuntimeFeatures.this.application.runOnUiThread(new Runnable() { // from class: info.flowersoft.theotown.android.AndroidRuntimeFeatures.1.2
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass1.this.editText.setText(str);
                }
            });
        }

        @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures.TextEditor
        public void setHint(final String str) {
            AndroidRuntimeFeatures.this.application.runOnUiThread(new Runnable() { // from class: info.flowersoft.theotown.android.AndroidRuntimeFeatures.1.3
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass1.this.editText.setHint(str);
                }
            });
        }

        @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures.TextEditor
        public void setShape(final int i, final int i2, final int i3, final int i4) {
            AndroidRuntimeFeatures.this.application.runOnUiThread(new Runnable() { // from class: info.flowersoft.theotown.android.AndroidRuntimeFeatures.1.4
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass1.this.editText.setX(i);
                    AnonymousClass1.this.editText.setY(i2);
                    AnonymousClass1.this.editText.setWidth(i3);
                    AnonymousClass1.this.editText.setHeight(i4);
                    AnonymousClass1.this.editText.setTextSize(0, i4 / 3);
                }
            });
        }

        @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures.TextEditor
        public void setVisible(final boolean z) {
            AndroidRuntimeFeatures.this.application.runOnUiThread(new Runnable() { // from class: info.flowersoft.theotown.android.AndroidRuntimeFeatures.1.5
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass1.this.editText.setVisibility(z ? 0 : 8);
                }
            });
        }

        @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures.TextEditor
        public String getText() {
            return this.text;
        }

        @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures.TextEditor
        public void setPassword(final boolean z) {
            AndroidRuntimeFeatures.this.application.runOnUiThread(new Runnable() { // from class: info.flowersoft.theotown.android.AndroidRuntimeFeatures.1.6
                @Override // java.lang.Runnable
                public void run() {
                    if (z) {
                        AnonymousClass1.this.editText.setInputType(Sdk.SDKError.Reason.EMPTY_TPAT_ERROR_VALUE);
                    } else {
                        AnonymousClass1.this.editText.setInputType(1);
                    }
                }
            });
        }

        @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures.TextEditor
        public void markAsAutoFill(final boolean z) {
            AndroidRuntimeFeatures.this.application.runOnUiThread(new Runnable() { // from class: info.flowersoft.theotown.android.AndroidRuntimeFeatures.1.7
                @Override // java.lang.Runnable
                public void run() {
                    if (Build.VERSION.SDK_INT >= 26) {
                        if (z) {
                            AnonymousClass1.this.editText.setAutofillHints(new String[]{"password"});
                        } else {
                            AnonymousClass1.this.editText.setAutofillHints(new String[]{"username", "emailAddress"});
                        }
                    }
                }
            });
        }

        @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures.TextEditor
        public void dispose() {
            AndroidRuntimeFeatures.this.application.runOnUiThread(new Runnable() { // from class: info.flowersoft.theotown.android.AndroidRuntimeFeatures.1.8
                @Override // java.lang.Runnable
                public void run() {
                    EditText editText = AnonymousClass1.this.editText;
                    if (editText != null) {
                        ViewGroup viewGroup = (ViewGroup) editText.getParent();
                        if (viewGroup != null) {
                            viewGroup.removeView(AnonymousClass1.this.editText);
                        }
                        AnonymousClass1.this.editText = null;
                    }
                }
            });
        }
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public RuntimeFeatures.TextEditor createTextEditor(String str, int i, int i2, int i3, int i4) {
        return new AnonymousClass1(str, i4, i, i2, i3);
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void rateGame() {
        Gdx.net.openURI("https://play.google.com/store/apps/details?id=info.flowersoft.theotown.theotown");
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void openURL(String str) {
        Gdx.net.openURI(str);
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void openURLInApp(String str) {
        Gdx.net.openURI(str);
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public long getRemainingStorage(File file) {
        return file.getUsableSpace();
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public String downloadTPC(String str) {
        return getTpc();
    }

    public final void prepareTPC() {
        if (Gdx.app == null || this.tpc) {
            return;
        }
        this.tpc = true;
        new Thread() { // from class: info.flowersoft.theotown.android.AndroidRuntimeFeatures.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                long jUptimeMillis = SystemClock.uptimeMillis();
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("cpt", AndroidRuntimeFeatures.this.application.getPackageCodePath());
                    jSONObject.put("cpl", new File(AndroidRuntimeFeatures.this.application.getPackageCodePath()).length());
                    jSONObject.put("rpt", AndroidRuntimeFeatures.this.application.getPackageResourcePath());
                    jSONObject.put("pna", AndroidRuntimeFeatures.this.application.getPackageName());
                    jSONObject.put("vsc", TheoTown.VERSION_CODE);
                    jSONObject.put("dbg", TheoTown.DEBUG);
                    jSONObject.put("sig", AndroidRuntimeFeatures.this.getSig());
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                Gdx.app.debug("TPC", "" + (SystemClock.uptimeMillis() - jUptimeMillis));
            }
        }.start();
    }

    public final String getSig() {
        try {
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(this.application.getPackageCodePath())));
            ArrayList arrayList = new ArrayList();
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    break;
                }
                if (nextEntry.getName().startsWith("classes") && nextEntry.getName().endsWith(".dex")) {
                    arrayList.add(nextEntry.getName() + " - " + nextEntry.getSize());
                } else if (nextEntry.getName().startsWith("META-INF/") && (nextEntry.getName().endsWith(".SF") || nextEntry.getName().endsWith(".RSA"))) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    StreamCopyUtil.copyTo(zipInputStream, byteArrayOutputStream);
                    arrayList.add(nextEntry.getName() + " - " + nextEntry.getSize() + " - " + Hex.bin2hex(Hashing.md5(byteArrayOutputStream.toByteArray())));
                }
            }
            Collections.sort(arrayList);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < arrayList.size(); i++) {
                sb.append((String) arrayList.get(i));
                sb.append(";");
            }
            return sb.toString();
        } catch (IOException e) {
            return e.toString();
        }
    }

    public final String getTpc() {
        try {
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(new File((String) this.application.getClass().getMethod(new String(Base64Coder.decode("Z2V0UGFja2FnZUNvZGVQYXRo"), StandardCharsets.UTF_8), new Class[0]).invoke(this.application, new Object[0])))));
            ArrayList arrayList = new ArrayList();
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    break;
                }
                if (!nextEntry.isDirectory()) {
                    arrayList.add(nextEntry.getName());
                }
            }
            Collections.sort(arrayList);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < arrayList.size(); i++) {
                sb.append((String) arrayList.get(i));
                if (i < arrayList.size() - 1) {
                    sb.append(";");
                }
            }
            return sb.toString();
        } catch (Exception e) {
            return e.toString();
        }
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void rateGameLight() {
        final ReviewManager reviewManagerCreate = ReviewManagerFactory.create(this.application);
        reviewManagerCreate.requestReviewFlow().addOnCompleteListener(new OnCompleteListener() { // from class: info.flowersoft.theotown.android.AndroidRuntimeFeatures$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                AndroidRuntimeFeatures.m2117$r8$lambda$K22rGTYapNZCvQpeQ1DTsnty5k(this.f$0, reviewManagerCreate, task);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$K2-2rGTYapNZCvQpeQ1DTsnty5k, reason: not valid java name */
    public static /* synthetic */ void m2117$r8$lambda$K22rGTYapNZCvQpeQ1DTsnty5k(AndroidRuntimeFeatures androidRuntimeFeatures, ReviewManager reviewManager, Task task) {
        androidRuntimeFeatures.getClass();
        if (task.isSuccessful()) {
            reviewManager.launchReviewFlow(androidRuntimeFeatures.application, (ReviewInfo) task.getResult()).addOnCompleteListener(new OnCompleteListener() { // from class: info.flowersoft.theotown.android.AndroidRuntimeFeatures$$ExternalSyntheticLambda2
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task2) {
                    AndroidRuntimeFeatures.$r8$lambda$eKy_LZLVm_TQ0C8pKQtALHgWOCU(task2);
                }
            });
        }
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void showFile(File file) {
        String name = file.getName();
        if (name.endsWith(".jpg") || name.endsWith(".png") || name.endsWith(".gif") || name.endsWith(".jpeg") || name.endsWith(".bmp")) {
            showImage(file);
            return;
        }
        if (name.endsWith(".txt") || name.endsWith(".json") || name.endsWith(".lua") || name.endsWith(".manifest")) {
            showGenericFile(file, "text/plain");
        } else {
            showGenericFile(file, null);
        }
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void importFile(final File file, final boolean z, final Runnable runnable) {
        Intent intent;
        if (z) {
            intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
        } else {
            intent = new Intent("android.intent.action.GET_CONTENT");
            intent.setType("*/*");
            intent.addCategory("android.intent.category.OPENABLE");
            intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        }
        this.application.startActivityForResult(Intent.createChooser(intent, z ? "Choose a folder" : "Choose a file"), 328932);
        this.application.addAndroidEventListener(new AndroidEventListener() { // from class: info.flowersoft.theotown.android.AndroidRuntimeFeatures.3
            @Override // com.badlogic.gdx.backends.android.AndroidEventListener
            public void onActivityResult(int i, int i2, Intent intent2) {
                if (i == 328932) {
                    AndroidRuntimeFeatures.this.application.removeAndroidEventListener(this);
                    if (i2 == -1) {
                        ClipData clipData = intent2.getClipData();
                        if (clipData != null) {
                            for (int i3 = 0; i3 < clipData.getItemCount(); i3++) {
                                Uri uri = clipData.getItemAt(i3).getUri();
                                AndroidRuntimeFeatures androidRuntimeFeatures = AndroidRuntimeFeatures.this;
                                androidRuntimeFeatures.importDocumentFile(DocumentFile.fromSingleUri(androidRuntimeFeatures.application, uri), file);
                            }
                        } else {
                            Uri data = intent2.getData();
                            if (data != null) {
                                AndroidRuntimeFeatures.this.importDocumentFile(z ? DocumentFile.fromTreeUri(AndroidRuntimeFeatures.this.application, data) : DocumentFile.fromSingleUri(AndroidRuntimeFeatures.this.application, data), file);
                            }
                        }
                        Runnable runnable2 = runnable;
                        if (runnable2 != null) {
                            runnable2.run();
                        }
                    }
                }
            }
        });
    }

    public final File importDocumentFile(DocumentFile documentFile, File file) {
        String name = documentFile != null ? documentFile.getName() : null;
        if (name != null) {
            if (documentFile.isFile()) {
                try {
                    InputStream inputStreamOpenInputStream = this.application.getContentResolver().openInputStream(documentFile.getUri());
                    File file2 = new File(file, name);
                    Files.copyFile(inputStreamOpenInputStream, file2);
                    return file2;
                } catch (FileNotFoundException e) {
                    e.printStackTrace();
                }
            } else if (documentFile.isDirectory()) {
                File file3 = new File(file, name);
                file3.mkdirs();
                DocumentFile[] documentFileArrListFiles = documentFile.listFiles();
                if (documentFileArrListFiles != null) {
                    for (DocumentFile documentFile2 : documentFileArrListFiles) {
                        importDocumentFile(documentFile2, file3);
                    }
                }
            }
        }
        return null;
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void exportFile(final FileHandle fileHandle, String str, final Runnable runnable) {
        if (str == null) {
            str = fileHandle.name();
        }
        if (fileHandle.isDirectory()) {
            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
            intent.putExtra("android.intent.extra.TITLE", str);
            this.application.startActivityForResult(Intent.createChooser(intent, "Select target directory"), 328933);
            this.application.addAndroidEventListener(new AndroidEventListener() { // from class: info.flowersoft.theotown.android.AndroidRuntimeFeatures.4
                @Override // com.badlogic.gdx.backends.android.AndroidEventListener
                public void onActivityResult(int i, int i2, Intent intent2) {
                    if (i == 328933) {
                        AndroidRuntimeFeatures.this.application.removeAndroidEventListener(this);
                        if (i2 == -1) {
                            Uri data = intent2.getData();
                            AndroidRuntimeFeatures androidRuntimeFeatures = AndroidRuntimeFeatures.this;
                            androidRuntimeFeatures.copyFolderToUri(fileHandle, DocumentFile.fromTreeUri(androidRuntimeFeatures.application, data), runnable);
                        }
                    }
                }
            });
            return;
        }
        Intent intent2 = new Intent("android.intent.action.CREATE_DOCUMENT");
        intent2.setType("*/*");
        intent2.putExtra("android.intent.extra.TITLE", str);
        this.application.startActivityForResult(Intent.createChooser(intent2, "Select target"), 328934);
        this.application.addAndroidEventListener(new AndroidEventListener() { // from class: info.flowersoft.theotown.android.AndroidRuntimeFeatures.5
            @Override // com.badlogic.gdx.backends.android.AndroidEventListener
            public void onActivityResult(int i, int i2, Intent intent3) {
                if (i == 328934) {
                    AndroidRuntimeFeatures.this.application.removeAndroidEventListener(this);
                    if (i2 == -1) {
                        AndroidRuntimeFeatures.this.copyFileToUri(fileHandle, intent3.getData());
                        Runnable runnable2 = runnable;
                        if (runnable2 != null) {
                            runnable2.run();
                        }
                    }
                }
            }
        });
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void importImageFile(final File file, final Setter<File> setter) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("image/*");
        intent.addCategory("android.intent.category.OPENABLE");
        this.application.startActivityForResult(Intent.createChooser(intent, "Choose an image"), 328937);
        this.application.addAndroidEventListener(new AndroidEventListener() { // from class: info.flowersoft.theotown.android.AndroidRuntimeFeatures.6
            @Override // com.badlogic.gdx.backends.android.AndroidEventListener
            public void onActivityResult(int i, int i2, Intent intent2) {
                Uri data;
                if (i == 328937) {
                    AndroidRuntimeFeatures.this.application.removeAndroidEventListener(this);
                    if (i2 != -1 || (data = intent2.getData()) == null) {
                        return;
                    }
                    AndroidRuntimeFeatures androidRuntimeFeatures = AndroidRuntimeFeatures.this;
                    File fileImportDocumentFile = androidRuntimeFeatures.importDocumentFile(DocumentFile.fromSingleUri(androidRuntimeFeatures.application, data), file);
                    if (fileImportDocumentFile != null) {
                        setter.set(fileImportDocumentFile);
                    }
                }
            }
        });
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public void importMusicFile(final File file, final Setter<File> setter) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("audio/mpeg");
        intent.addCategory("android.intent.category.OPENABLE");
        this.application.startActivityForResult(Intent.createChooser(intent, "Choose a music file"), 328938);
        this.application.addAndroidEventListener(new AndroidEventListener() { // from class: info.flowersoft.theotown.android.AndroidRuntimeFeatures.7
            @Override // com.badlogic.gdx.backends.android.AndroidEventListener
            public void onActivityResult(int i, int i2, Intent intent2) {
                Uri data;
                if (i == 328938) {
                    AndroidRuntimeFeatures.this.application.removeAndroidEventListener(this);
                    if (i2 != -1 || (data = intent2.getData()) == null) {
                        return;
                    }
                    AndroidRuntimeFeatures androidRuntimeFeatures = AndroidRuntimeFeatures.this;
                    File fileImportDocumentFile = androidRuntimeFeatures.importDocumentFile(DocumentFile.fromSingleUri(androidRuntimeFeatures.application, data), file);
                    if (fileImportDocumentFile != null) {
                        setter.set(fileImportDocumentFile);
                    }
                }
            }
        });
    }

    public final void copyFolderToUri(FileHandle fileHandle, DocumentFile documentFile, Runnable runnable) {
        FileHandle[] list = fileHandle.list();
        if (list == null || documentFile == null) {
            return;
        }
        for (FileHandle fileHandle2 : list) {
            if (fileHandle2.isDirectory()) {
                DocumentFile documentFileCreateDirectory = documentFile.createDirectory(fileHandle2.name());
                if (documentFileCreateDirectory != null) {
                    copyFolderToUri(fileHandle2, documentFileCreateDirectory, runnable);
                }
            } else {
                DocumentFile documentFileCreateFile = documentFile.createFile(getMimeType(fileHandle2.name()), fileHandle2.name());
                if (documentFileCreateFile != null) {
                    copyFileToUri(fileHandle2, documentFileCreateFile.getUri());
                    if (runnable != null) {
                        runnable.run();
                    }
                }
            }
        }
    }

    public final void copyFileToUri(FileHandle fileHandle, Uri uri) {
        try {
            OutputStream outputStreamOpenOutputStream = this.application.getContentResolver().openOutputStream(uri);
            BufferedInputStream bufferedInputStream = new BufferedInputStream(fileHandle.read());
            StreamCopyUtil.copyTo(bufferedInputStream, outputStreamOpenOutputStream);
            bufferedInputStream.close();
            outputStreamOpenOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static String getMimeType(String str) {
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if ((fileExtensionFromUrl == null || fileExtensionFromUrl.isEmpty()) && str.contains(".")) {
            fileExtensionFromUrl = str.substring(str.lastIndexOf(46) + 1);
        }
        String mimeTypeFromExtension = fileExtensionFromUrl != null ? MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl) : null;
        return mimeTypeFromExtension == null ? "*/*" : mimeTypeFromExtension;
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public String saveImageToGallery(String str, Pixmap pixmap, String str2) {
        if (Build.VERSION.SDK_INT >= 29) {
            ContentResolver contentResolver = this.application.getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put("_display_name", str2);
            contentValues.put("mime_type", "image/png");
            contentValues.put("relative_path", "DCIM/" + str);
            Uri uriInsert = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
            PixmapIO.PNG png = new PixmapIO.PNG();
            png.setFlipY(false);
            png.setCompression(9);
            try {
                OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(uriInsert);
                try {
                    png.write(outputStreamOpenOutputStream, pixmap);
                    outputStreamOpenOutputStream.flush();
                    String string = new JSONObject().put("uri", uriInsert.toString()).put("name", str2).toString();
                    outputStreamOpenOutputStream.close();
                    return string;
                } finally {
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public String getToken() {
        try {
            Signature[] signatureArr = this.application.getPackageManager().getPackageInfo(this.application.getPackageName(), 64).signatures;
            if (signatureArr != null && signatureArr.length == 1) {
                return new String(Base64Coder.encode(signatureArr[0].toByteArray()));
            }
        } catch (Exception unused) {
        }
        return null;
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public int getLogicalWidth() {
        return Gdx.graphics.getBackBufferWidth();
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public String getDeviceModel() {
        return Build.BRAND + "," + Build.MODEL + ",Android " + Build.VERSION.SDK_INT;
    }

    @Override // info.flowersoft.theotown.crossplatform.RuntimeFeatures
    public boolean prefersDarkMode() {
        return (this.application.getResources().getConfiguration().uiMode & 48) == 32;
    }
}
