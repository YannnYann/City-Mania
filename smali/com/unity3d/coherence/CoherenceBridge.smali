###### Class com.unity3d.coherence.CoherenceBridge (com.unity3d.coherence.CoherenceBridge)
.class final Lcom/unity3d/coherence/CoherenceBridge;
.super Ljava/lang/Object;
.source "CoherenceBridge.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-string v0, "unitycoherencenative"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getCommonAttributes(JII)[B
.end method

.method public static native getVersions(J)[B
.end method

.method public static native init(Lcom/unity3d/coherence/Coherence;Ljava/lang/String;I)J
.end method

.method public static native isInitialized(J)Z
.end method

.method public static native setExternalUserId(JLjava/lang/String;)V
.end method

.method public static native setLogHandler(Lcom/unity3d/coherence/LogHandler;)V
.end method

.method public static native vmCreate(J[B)J
.end method

.method public static native vmDrop(JJ)V
.end method

.method public static native vmInvokeMain(JJ[B)Lcom/unity3d/coherence/VmInvokeResult;
.end method

.method public static native vmLastError(J)Ljava/lang/String;
.end method
