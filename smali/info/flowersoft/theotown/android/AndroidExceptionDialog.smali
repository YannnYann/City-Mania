###### Class info.flowersoft.theotown.android.AndroidExceptionDialog (info.flowersoft.theotown.android.AndroidExceptionDialog)
.class public Linfo/flowersoft/theotown/android/AndroidExceptionDialog;
.super Ljava/lang/Object;
.source "AndroidExceptionDialog.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/ExceptionManager$ExceptionHandler;


# instance fields
.field public final app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

.field public ignoreExceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

.field public pausedBecauseOfError:Z


# direct methods
.method public static synthetic $r8$lambda$GLHezUmWs93PbiffDxssk5BCIU0(Ljava/lang/Throwable;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 68
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const-string p0, "Fatal"

    invoke-interface {p1, p0, p2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    const-wide/16 p0, 0x320

    .line 70
    :try_start_e
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_11

    :catch_11
    const/4 p0, 0x0

    .line 73
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MUkMEOb0HBGI8q_Hx7TOEpaZZng(Linfo/flowersoft/theotown/android/AndroidExceptionDialog;Ljava/lang/Throwable;Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 p2, 0x0

    .line 63
    iput-boolean p2, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog;->pausedBecauseOfError:Z

    .line 64
    sget-object p2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    check-cast p2, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {p2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/opengl/GLSurfaceView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 65
    iget-object p0, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog;->ignoreExceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/ExceptionManager;->ignoreException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aT6d_vYKhHNVm6robUZUwOSiZUw(Landroid/content/DialogInterface;I)V
    .registers 2

    const/4 p0, 0x0

    .line 75
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$smk30s-NQDQBtYFaL1DGbwEto64(Linfo/flowersoft/theotown/android/AndroidExceptionDialog;Ljava/lang/Throwable;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 42
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/android/AndroidExceptionDialog;->buildAndShowDialog(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/util/ExceptionManager;)V
    .registers 2

    .line 27
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog;->ignoreExceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

    return-void
.end method

.method public final buildAndShowDialog(Ljava/lang/Throwable;)V
    .registers 6

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You might try to restart the game. If this happens more often and restarting your phone doesn\'t help you might consider to send us a bug report.\n\nThe report contains:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-direct {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 60
    const-string v2, "Sorry, a major issue occurred (1.12.96a)"

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    .line 61
    invoke-virtual {v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v2, Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/android/AndroidExceptionDialog;Ljava/lang/Throwable;)V

    .line 62
    const-string v3, "Ignore"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v2, Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Throwable;)V

    .line 67
    const-string p1, "Send Report & Exit"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance v0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda3;-><init>()V

    .line 75
    const-string v2, "Exit"

    invoke-virtual {p1, v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 77
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public handle(Ljava/lang/Throwable;)V
    .registers 4

    .line 32
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog;->ignoreExceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/ExceptionManager;->shallIgnoreException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 33
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 36
    invoke-static {p1}, Lio/blueflower/stapel2d/util/SessionLogger;->logException(Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog;->pausedBecauseOfError:Z

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/android/AndroidExceptionDialog;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isPaused()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog;->pausedBecauseOfError:Z

    return v0
.end method

###### Class info.flowersoft.theotown.android.AndroidExceptionDialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.android.AndroidExceptionDialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/android/AndroidExceptionDialog;

.field public final synthetic f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/android/AndroidExceptionDialog;Ljava/lang/Throwable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/android/AndroidExceptionDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/android/AndroidExceptionDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/android/AndroidExceptionDialog;->$r8$lambda$smk30s-NQDQBtYFaL1DGbwEto64(Linfo/flowersoft/theotown/android/AndroidExceptionDialog;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidExceptionDialog$$ExternalSyntheticLambda1 (info.flowersoft.theotown.android.AndroidExceptionDialog$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/android/AndroidExceptionDialog;

.field public final synthetic f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/android/AndroidExceptionDialog;Ljava/lang/Throwable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/android/AndroidExceptionDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/android/AndroidExceptionDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Throwable;

    invoke-static {v0, v1, p1, p2}, Linfo/flowersoft/theotown/android/AndroidExceptionDialog;->$r8$lambda$MUkMEOb0HBGI8q_Hx7TOEpaZZng(Linfo/flowersoft/theotown/android/AndroidExceptionDialog;Ljava/lang/Throwable;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidExceptionDialog$$ExternalSyntheticLambda2 (info.flowersoft.theotown.android.AndroidExceptionDialog$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/android/AndroidExceptionDialog;->$r8$lambda$GLHezUmWs93PbiffDxssk5BCIU0(Ljava/lang/Throwable;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidExceptionDialog$$ExternalSyntheticLambda3 (info.flowersoft.theotown.android.AndroidExceptionDialog$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/android/AndroidExceptionDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/android/AndroidExceptionDialog;->$r8$lambda$aT6d_vYKhHNVm6robUZUwOSiZUw(Landroid/content/DialogInterface;I)V

    return-void
.end method
