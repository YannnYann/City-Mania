###### Class com.google.android.datatransport.runtime.ExecutionModule (com.google.android.datatransport.runtime.ExecutionModule)
.class public abstract Lcom/google/android/datatransport/runtime/ExecutionModule;
.super Ljava/lang/Object;
.source "ExecutionModule.java"


# direct methods
.method public static executor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 28
    new-instance v0, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
