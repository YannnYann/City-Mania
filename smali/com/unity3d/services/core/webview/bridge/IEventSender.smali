###### Class com.unity3d.services.core.webview.bridge.IEventSender (com.unity3d.services.core.webview.bridge.IEventSender)
.class public interface abstract Lcom/unity3d/services/core/webview/bridge/IEventSender;
.super Ljava/lang/Object;
.source "IEventSender.kt"


# virtual methods
.method public abstract canSend()Z
.end method

.method public varargs abstract sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/Enum<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method
