###### Class com.badlogic.gdx.backends.android.AndroidVisibilityListener (com.badlogic.gdx.backends.android.AndroidVisibilityListener)
.class public Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;
.super Ljava/lang/Object;
.source "AndroidVisibilityListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createListener(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;)V
    .registers 5

    .line 27
    :try_start_0
    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1;

    invoke-direct {v1, p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    .line 40
    const-string v1, "AndroidApplication"

    const-string v2, "Can\'t create OnSystemUiVisibilityChangeListener, unable to use immersive mode."

    invoke-interface {p1, v1, v2, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.badlogic.gdx.backends.android.AndroidVisibilityListener.AnonymousClass1 (com.badlogic.gdx.backends.android.AndroidVisibilityListener$1)
.class public Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1;
.super Ljava/lang/Object;
.source "AndroidVisibilityListener.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;->createListener(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;

.field public final synthetic val$application:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1;->val$application:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .registers 3

    .line 31
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1;->val$application:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.badlogic.gdx.backends.android.AndroidVisibilityListener.AnonymousClass1.RunnableC00031 (com.badlogic.gdx.backends.android.AndroidVisibilityListener$1$1)
.class public Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1$1;
.super Ljava/lang/Object;
.source "AndroidVisibilityListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1;->onSystemUiVisibilityChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1;->val$application:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->useImmersiveMode(Z)V

    return-void
.end method
