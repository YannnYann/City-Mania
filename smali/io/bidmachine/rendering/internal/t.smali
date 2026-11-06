###### Class io.bidmachine.rendering.internal.t (io.bidmachine.rendering.internal.t)
.class public abstract Lio/bidmachine/rendering/internal/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Object;)V
    .registers 5

    .line 4
    invoke-static {}, Lio/bidmachine/rendering/internal/t;->a()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_41

    :cond_7
    if-eqz p3, :cond_11

    .line 9
    array-length v0, p3

    if-nez v0, :cond_d

    goto :goto_11

    .line 13
    :cond_d
    :try_start_d
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_11

    :catchall_11
    :cond_11
    :goto_11
    if-eqz p0, :cond_36

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_36

    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_36
    const-string p0, "AdaptiveRendering"

    if-eqz p2, :cond_3e

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 27
    :cond_3e
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    return-void
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0, p2}, Lio/bidmachine/rendering/internal/t;->a(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, p0, v1, p1}, Lio/bidmachine/rendering/internal/t;->a(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 2

    .line 28
    invoke-static {}, Lio/bidmachine/rendering/internal/t;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 32
    :cond_7
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_f

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 35
    :cond_f
    const-string v0, "AdaptiveRendering"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static a(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lio/bidmachine/rendering/internal/t;->a:Z

    return-void
.end method

.method public static a()Z
    .registers 1

    .line 36
    invoke-static {}, Lio/bidmachine/rendering/internal/t;->b()Z

    move-result v0

    return v0
.end method

.method public static varargs b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lio/bidmachine/rendering/internal/t;->a(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p0, v1, p1}, Lio/bidmachine/rendering/internal/t;->a(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Ljava/lang/Throwable;)V
    .registers 1

    .line 4
    invoke-static {p0}, Lio/bidmachine/rendering/internal/t;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b()Z
    .registers 1

    .line 1
    sget-boolean v0, Lio/bidmachine/rendering/internal/t;->a:Z

    return v0
.end method
