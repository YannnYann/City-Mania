package info.flowersoft.theotown.android;

import android.content.DialogInterface;
import android.opengl.GLSurfaceView;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.backends.android.AndroidApplication;
import com.badlogic.gdx.backends.android.AndroidGraphics;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.util.ExceptionManager;
import io.blueflower.stapel2d.util.SessionLogger;

/* JADX INFO: loaded from: classes4.dex */
public class AndroidExceptionDialog implements ExceptionManager.ExceptionHandler {
    public final AndroidApplication app;
    public ExceptionManager ignoreExceptionManager;
    public boolean pausedBecauseOfError;

    public AndroidExceptionDialog(AndroidApplication androidApplication) {
        this.app = androidApplication;
    }

    @Override // info.flowersoft.theotown.util.ExceptionManager.ExceptionHandler
    public void bind(ExceptionManager exceptionManager) {
        this.ignoreExceptionManager = exceptionManager;
    }

    @Override // info.flowersoft.theotown.util.ExceptionManager.ExceptionHandler
    public void handle(final Throwable th) {
        if (this.ignoreExceptionManager.shallIgnoreException(th)) {
            return;
        }
        th.printStackTrace();
        System.gc();
        SessionLogger.logException(th);
        this.pausedBecauseOfError = true;
        this.app.runOnUiThread(new Runnable() { // from class: info.flowersoft.theotown.android.AndroidExceptionDialog$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AndroidExceptionDialog.m2111$r8$lambda$smk30sNQDQBtYFaL1DGbwEto64(this.f$0, th);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$smk30s-NQDQBtYFaL1DGbwEto64, reason: not valid java name */
    public static /* synthetic */ void m2111$r8$lambda$smk30sNQDQBtYFaL1DGbwEto64(AndroidExceptionDialog androidExceptionDialog, Throwable th) {
        androidExceptionDialog.getClass();
        ((GLSurfaceView) ((AndroidGraphics) Gdx.graphics).getView()).setRenderMode(0);
        androidExceptionDialog.buildAndShowDialog(th);
    }

    @Override // info.flowersoft.theotown.util.ExceptionManager.ExceptionHandler
    public boolean isPaused() {
        return this.pausedBecauseOfError;
    }

    public final void buildAndShowDialog(final Throwable th) {
        String str = "You might try to restart the game. If this happens more often and restarting your phone doesn't help you might consider to send us a bug report.\n\nThe report contains:\n" + th.toString();
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(this.app);
        materialAlertDialogBuilder.setTitle((CharSequence) "Sorry, a major issue occurred (1.12.96a)").setMessage((CharSequence) str).setNeutralButton((CharSequence) "Ignore", new DialogInterface.OnClickListener() { // from class: info.flowersoft.theotown.android.AndroidExceptionDialog$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AndroidExceptionDialog.$r8$lambda$MUkMEOb0HBGI8q_Hx7TOEpaZZng(this.f$0, th, dialogInterface, i);
            }
        }).setPositiveButton((CharSequence) "Send Report & Exit", new DialogInterface.OnClickListener() { // from class: info.flowersoft.theotown.android.AndroidExceptionDialog$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AndroidExceptionDialog.$r8$lambda$GLHezUmWs93PbiffDxssk5BCIU0(th, dialogInterface, i);
            }
        }).setNegativeButton((CharSequence) "Exit", new DialogInterface.OnClickListener() { // from class: info.flowersoft.theotown.android.AndroidExceptionDialog$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                System.exit(0);
            }
        }).setCancelable(false);
        materialAlertDialogBuilder.create().show();
    }

    public static /* synthetic */ void $r8$lambda$MUkMEOb0HBGI8q_Hx7TOEpaZZng(AndroidExceptionDialog androidExceptionDialog, Throwable th, DialogInterface dialogInterface, int i) {
        androidExceptionDialog.pausedBecauseOfError = false;
        ((GLSurfaceView) ((AndroidGraphics) Gdx.graphics).getView()).setRenderMode(1);
        androidExceptionDialog.ignoreExceptionManager.ignoreException(th);
    }

    public static /* synthetic */ void $r8$lambda$GLHezUmWs93PbiffDxssk5BCIU0(Throwable th, DialogInterface dialogInterface, int i) {
        TheoTown.analytics.logException("Fatal", new Exception(th));
        try {
            Thread.sleep(800L);
        } catch (InterruptedException unused) {
        }
        System.exit(0);
    }
}
