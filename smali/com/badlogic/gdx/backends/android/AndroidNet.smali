###### Class com.badlogic.gdx.backends.android.AndroidNet (com.badlogic.gdx.backends.android.AndroidNet)
.class public Lcom/badlogic/gdx/backends/android/AndroidNet;
.super Ljava/lang/Object;
.source "AndroidNet.java"

# interfaces
.implements Lcom/badlogic/gdx/Net;


# instance fields
.field public final app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

.field public netJavaImpl:Lcom/badlogic/gdx/net/NetJavaImpl;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    .line 44
    new-instance p1, Lcom/badlogic/gdx/net/NetJavaImpl;

    iget p2, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->maxNetThreads:I

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/net/NetJavaImpl;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->netJavaImpl:Lcom/badlogic/gdx/net/NetJavaImpl;

    return-void
.end method


# virtual methods
.method public openURI(Ljava/lang/String;)Z
    .registers 4

    .line 79
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 81
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1a

    const/high16 p1, 0x10000000

    .line 84
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    :cond_1a
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->startActivity(Landroid/content/Intent;)V
    :try_end_1f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_1f} :catch_21

    const/4 p1, 0x1

    return p1

    :catch_21
    const/4 p1, 0x0

    return p1
.end method
