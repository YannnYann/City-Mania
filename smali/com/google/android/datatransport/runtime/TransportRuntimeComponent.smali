###### Class com.google.android.datatransport.runtime.TransportRuntimeComponent (com.google.android.datatransport.runtime.TransportRuntimeComponent)
.class public abstract Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;
.super Ljava/lang/Object;
.source "TransportRuntimeComponent.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/TransportRuntimeComponent$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;->getEventStore()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    move-result-object v0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public abstract getEventStore()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;
.end method

.method public abstract getTransportRuntime()Lcom/google/android/datatransport/runtime/TransportRuntime;
.end method

###### Class com.google.android.datatransport.runtime.TransportRuntimeComponent.Builder (com.google.android.datatransport.runtime.TransportRuntimeComponent$Builder)
.class public interface abstract Lcom/google/android/datatransport/runtime/TransportRuntimeComponent$Builder;
.super Ljava/lang/Object;
.source "TransportRuntimeComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract build()Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;
.end method

.method public abstract setApplicationContext(Landroid/content/Context;)Lcom/google/android/datatransport/runtime/TransportRuntimeComponent$Builder;
.end method
