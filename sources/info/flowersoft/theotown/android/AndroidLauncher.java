package info.flowersoft.theotown.android;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.opengl.GLSurfaceView;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.Preferences;
import com.badlogic.gdx.backends.android.AndroidApplication;
import com.badlogic.gdx.backends.android.AndroidApplicationBase;
import com.badlogic.gdx.backends.android.AndroidApplicationConfiguration;
import com.badlogic.gdx.backends.android.AndroidGraphics;
import com.badlogic.gdx.backends.android.DefaultAndroidInput;
import com.badlogic.gdx.backends.android.surfaceview.FillResolutionStrategy;
import com.badlogic.gdx.backends.android.surfaceview.GLSurfaceView20;
import com.badlogic.gdx.backends.android.surfaceview.ResolutionStrategy;
import com.badlogic.gdx.utils.GdxRuntimeException;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.theotown.R;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Setter;
import java.io.File;
import java.util.Date;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AndroidLauncher extends AndroidApplication {
    public boolean useScopedStorage;

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        AndroidIntentHandler.INSTANCE.handleViewIntent(intent, this);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00f4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onCreate(android.os.Bundle r6) {
        /*
            Method dump skipped, instruction units count: 468
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.android.AndroidLauncher.onCreate(android.os.Bundle):void");
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplication
    public AndroidGraphics createGraphics(AndroidApplicationConfiguration androidApplicationConfiguration) {
        ResolutionStrategy fillResolutionStrategy = androidApplicationConfiguration.resolutionStrategy;
        if (fillResolutionStrategy == null) {
            fillResolutionStrategy = new FillResolutionStrategy();
        }
        return new AndroidGraphics(this, androidApplicationConfiguration, fillResolutionStrategy) { // from class: info.flowersoft.theotown.android.AndroidLauncher.1
            @Override // com.badlogic.gdx.backends.android.AndroidGraphics
            public GLSurfaceView20 createGLSurfaceView(AndroidApplicationBase androidApplicationBase, ResolutionStrategy resolutionStrategy) {
                if (!checkGL20()) {
                    throw new GdxRuntimeException("libGDX requires OpenGL ES 2.0");
                }
                GLSurfaceView.EGLConfigChooser eglConfigChooser = getEglConfigChooser();
                GLSurfaceView20 gLSurfaceView20 = new GLSurfaceView20(androidApplicationBase.getContext(), resolutionStrategy, this.config.useGL30 ? 3 : 2) { // from class: info.flowersoft.theotown.android.AndroidLauncher.1.1
                    @Override // com.badlogic.gdx.backends.android.surfaceview.GLSurfaceView20, android.view.View
                    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
                        if (editorInfo != null) {
                            editorInfo.imeOptions |= 268435456;
                            Input.OnscreenKeyboardType onscreenKeyboardType = this.onscreenKeyboardType;
                            if (onscreenKeyboardType == Input.OnscreenKeyboardType.Default) {
                                editorInfo.inputType = 524289;
                            } else {
                                editorInfo.inputType = DefaultAndroidInput.getAndroidInputType(onscreenKeyboardType, true);
                            }
                        }
                        return super.onCreateInputConnection(null);
                    }
                };
                if (eglConfigChooser != null) {
                    gLSurfaceView20.setEGLConfigChooser(eglConfigChooser);
                } else {
                    AndroidApplicationConfiguration androidApplicationConfiguration2 = this.config;
                    gLSurfaceView20.setEGLConfigChooser(androidApplicationConfiguration2.r, androidApplicationConfiguration2.g, androidApplicationConfiguration2.b, androidApplicationConfiguration2.a, androidApplicationConfiguration2.depth, androidApplicationConfiguration2.stencil);
                }
                gLSurfaceView20.setRenderer(this);
                return gLSurfaceView20;
            }
        };
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplication, com.badlogic.gdx.Application
    public Preferences getPreferences(String str) {
        return new ImmediateAndroidPreferences(getSharedPreferences(str, 0));
    }

    public static AndroidApplicationConfiguration getAppConfig() {
        AndroidApplicationConfiguration androidApplicationConfiguration = new AndroidApplicationConfiguration();
        androidApplicationConfiguration.useImmersiveMode = true;
        androidApplicationConfiguration.useWakelock = true;
        androidApplicationConfiguration.useAccelerometer = false;
        androidApplicationConfiguration.useCompass = false;
        androidApplicationConfiguration.r = 8;
        androidApplicationConfiguration.g = 8;
        androidApplicationConfiguration.b = 8;
        androidApplicationConfiguration.a = 8;
        androidApplicationConfiguration.depth = 0;
        androidApplicationConfiguration.numSamples = 0;
        return androidApplicationConfiguration;
    }

    public final void moveFileSave(File file, File file2, boolean z, Setter<File> setter) {
        setter.set(file);
        if (file.isDirectory()) {
            file2.mkdirs();
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file3 : fileArrListFiles) {
                    moveFileSave(file3, new File(file2, file3.getName()), true, setter);
                }
            }
            if (z) {
                file.delete();
                return;
            }
            return;
        }
        if (file.isFile()) {
            if (!file2.exists() || file2.length() == 0 || file2.lastModified() <= file.lastModified()) {
                Files.copyFile(file, file2);
                if (file2.exists() && file2.length() == file.length()) {
                    Files.deleteFile(file);
                }
            }
        }
    }

    public final void migrateToScopedStorage() {
        this.useScopedStorage = true;
        TheoTown.SHOW_FILES_EXPLORER = true;
        File externalFilesDir = getExternalFilesDir(null);
        if (externalFilesDir == null) {
            externalFilesDir = getFilesDir();
            System.out.println("External files dir not available, switching to " + externalFilesDir.getPath());
        }
        System.out.println("Switching to scoped storage " + externalFilesDir);
        if (checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0 && TheoTown.APP_DIR.exists()) {
            File file = new File(externalFilesDir, ".migrated.txt");
            if (!file.exists()) {
                System.out.println("Trying to migrate old files from " + TheoTown.APP_DIR);
                final JSONObject jSONObject = new JSONObject();
                final long[] jArr = new long[1];
                long jCurrentTimeMillis = System.currentTimeMillis();
                moveFileSave(TheoTown.APP_DIR, externalFilesDir, false, new Setter<File>() { // from class: info.flowersoft.theotown.android.AndroidLauncher.2
                    @Override // io.blueflower.stapel2d.util.Setter
                    public void set(File file2) {
                        if (file2.isFile()) {
                            try {
                                jSONObject.put(file2.getAbsolutePath(), file2.length());
                                long[] jArr2 = jArr;
                                jArr2[0] = jArr2[0] + file2.length();
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                });
                try {
                    Files.writeTextFile(new File(TheoTown.APP_DIR, "README.txt"), Files.readTextFile(getResources().openRawResource(R.raw.android_storage_notice)));
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("info", "This file contains the migration report of the game files into scoped storage");
                    jSONObject2.put("date", new Date().toString());
                    jSONObject2.put("total size", jArr[0]);
                    jSONObject2.put("seconds", (System.currentTimeMillis() - jCurrentTimeMillis) / 1000.0f);
                    jSONObject2.put("target", externalFilesDir.toString());
                    jSONObject2.put("files", jSONObject);
                    System.out.println(jSONObject2.toString(2));
                    Files.writeTextFile(new File(TheoTown.APP_DIR, "migration.txt"), jSONObject2.toString(2));
                    jSONObject2.put("important", "DO NOT DELETE THIS FILE UNLESS YOU KNOW WHAT YOU ARE DOING!");
                    Files.writeTextFile(file, jSONObject2.toString(2));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        TheoTown.APP_DIR = externalFilesDir;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplication, android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            hideVirtualButtons();
            InternetTime.getInstance().update(true);
        }
    }

    public final void setupImmersiveMode() {
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: info.flowersoft.theotown.android.AndroidLauncher$$ExternalSyntheticLambda3
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public final void onSystemUiVisibilityChange(int i) {
                AndroidLauncher.m2116$r8$lambda$kfYlXUt_9Xq7IdgoL_okXDxvq8(this.f$0, i);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$kfYl-XUt_9Xq7IdgoL_okXDxvq8, reason: not valid java name */
    public static /* synthetic */ void m2116$r8$lambda$kfYlXUt_9Xq7IdgoL_okXDxvq8(AndroidLauncher androidLauncher, int i) {
        if ((i & 4) == 0) {
            androidLauncher.hideVirtualButtons();
        } else {
            androidLauncher.getClass();
        }
    }

    public final void requestExternalStoragePermission() {
        if (!this.useScopedStorage && checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 200);
        } else {
            ((AndroidRuntimeFeatures) TheoTown.runtimeFeatures).setGotPermissions();
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if ((i == 200 && iArr.length > 0 && iArr[0] == 0) || this.useScopedStorage) {
            ((AndroidRuntimeFeatures) TheoTown.runtimeFeatures).setGotPermissions();
        } else if (i == 200) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle(R.string.dialog_externalstorage_title).setMessage(R.string.dialog_externalstorage_explanation).setPositiveButton(R.string.dialog_externalstorage_retry, new DialogInterface.OnClickListener() { // from class: info.flowersoft.theotown.android.AndroidLauncher$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    this.f$0.requestExternalStoragePermission();
                }
            }).setNegativeButton(R.string.dialog_externalstorage_proceedwithout, new DialogInterface.OnClickListener() { // from class: info.flowersoft.theotown.android.AndroidLauncher$$ExternalSyntheticLambda2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    ((AndroidRuntimeFeatures) TheoTown.runtimeFeatures).setGotPermissions();
                }
            }).setCancelable(false);
            builder.create().show();
        }
    }

    public final void hideVirtualButtons() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }
}
