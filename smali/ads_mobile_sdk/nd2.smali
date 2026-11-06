###### Class ads_mobile_sdk.nd2 (ads_mobile_sdk.nd2)
.class public abstract Lads_mobile_sdk/nd2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/ld2;

.field public final b:Lads_mobile_sdk/md2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/gl3;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/nd2;->b:Lads_mobile_sdk/md2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 3

    const/4 v0, 0x0

    .line 40
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 9
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lads_mobile_sdk/nd2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .registers 3

    .line 54
    iget-object p1, p0, Lads_mobile_sdk/nd2;->a:Lads_mobile_sdk/ld2;

    if-eqz p1, :cond_c

    .line 55
    check-cast p1, Lads_mobile_sdk/od2;

    const/4 v0, 0x0

    .line 56
    iput-object v0, p1, Lads_mobile_sdk/od2;->c:Lads_mobile_sdk/nd2;

    .line 57
    invoke-virtual {p1}, Lads_mobile_sdk/od2;->a()V

    :cond_c
    return-void
.end method
