###### Class ads_mobile_sdk.du2 (ads_mobile_sdk.du2)
.class public final Lads_mobile_sdk/du2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/cu2;


# instance fields
.field public final a:Lads_mobile_sdk/iu2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/iu2;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lads_mobile_sdk/du2;->a:Lads_mobile_sdk/iu2;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/mq2;)V
    .registers 6

    .line 22
    iget-object v0, p0, Lads_mobile_sdk/du2;->a:Lads_mobile_sdk/iu2;

    .line 23
    sget-object v1, Lads_mobile_sdk/iu2;->c:Lads_mobile_sdk/pt1;

    .line 24
    iget-object v2, v0, Lads_mobile_sdk/iu2;->b:Ljava/lang/String;

    .line 25
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "prewarm(%s)"

    invoke-virtual {v1, v3, v2}, Lads_mobile_sdk/pt1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v2, v0, Lads_mobile_sdk/iu2;->a:Lads_mobile_sdk/lc3;

    if-nez v2, :cond_2e

    .line 28
    const-string p1, "Play Store not found."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x6

    .line 29
    const-string v2, "PlayCore"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 30
    iget-object v0, v1, Lads_mobile_sdk/pt1;->a:Ljava/lang/String;

    const-string v1, "error: %s"

    invoke-static {v0, v1, p1}, Lads_mobile_sdk/pt1;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void

    .line 31
    :cond_2e
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 32
    iget-object v2, v0, Lads_mobile_sdk/iu2;->a:Lads_mobile_sdk/lc3;

    new-instance v3, Lads_mobile_sdk/gu2;

    invoke-direct {v3, v0, v1, p1, v1}, Lads_mobile_sdk/gu2;-><init>(Lads_mobile_sdk/iu2;Lcom/google/android/gms/tasks/TaskCompletionSource;Lads_mobile_sdk/mq2;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance p1, Lads_mobile_sdk/fc3;

    .line 34
    invoke-direct {p1, v2, v1, v1, v3}, Lads_mobile_sdk/fc3;-><init>(Lads_mobile_sdk/lc3;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lads_mobile_sdk/gu2;)V

    .line 35
    invoke-virtual {v2, p1}, Lads_mobile_sdk/lc3;->b(Lads_mobile_sdk/x93;)V

    return-void
.end method
