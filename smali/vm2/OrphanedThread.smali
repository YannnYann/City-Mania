###### Class vm2.OrphanedThread (vm2.OrphanedThread)
.class public Lvm2/OrphanedThread;
.super Ljava/lang/Error;
.source "OrphanedThread.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    const-string v0, "orphaned thread"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    return-void
.end method
