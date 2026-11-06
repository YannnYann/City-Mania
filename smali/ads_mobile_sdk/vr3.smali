###### Class ads_mobile_sdk.vr3 (ads_mobile_sdk.vr3)
.class public final Lads_mobile_sdk/vr3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/as3;

.field public final synthetic b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/as3;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/vr3;->a:Lads_mobile_sdk/as3;

    iput-object p2, p0, Lads_mobile_sdk/vr3;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    const-string v0, "thread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    :try_start_a
    iget-object v0, p0, Lads_mobile_sdk/vr3;->a:Lads_mobile_sdk/as3;

    invoke-virtual {v0, p2}, Lads_mobile_sdk/as3;->a(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    .line 206
    iget-object v0, p0, Lads_mobile_sdk/vr3;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1b

    goto :goto_18

    .line 207
    :catchall_14
    iget-object v0, p0, Lads_mobile_sdk/vr3;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1b

    .line 206
    :goto_18
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1b
    return-void
.end method
