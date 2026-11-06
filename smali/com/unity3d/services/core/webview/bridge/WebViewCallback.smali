###### Class com.unity3d.services.core.webview.bridge.WebViewCallback (com.unity3d.services.core.webview.bridge.WebViewCallback)
.class public Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
.super Ljava/lang/Object;
.source "WebViewCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/unity3d/services/core/webview/bridge/WebViewCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _callbackId:Ljava/lang/String;

.field private _invocationId:I

.field private _invoked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    new-instance v0, Lcom/unity3d/services/core/webview/bridge/WebViewCallback$1;

    invoke-direct {v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback$1;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->_invoked:Z

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->_invocationId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->_invocationId:I

    return-void
.end method

.method private varargs invoke(Lcom/unity3d/services/core/webview/bridge/CallbackStatus;Ljava/lang/Enum;[Ljava/lang/Object;)V
    .registers 4

    .line 30
    iget-boolean p1, p0, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->_invoked:Z

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_f

    goto :goto_24

    :cond_f
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->_invoked:Z

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p2, 0x0

    .line 36
    iget-object p3, p0, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_24
    :goto_24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 0
    const v0, 0xb26e

    return v0
.end method

.method public varargs error(Ljava/lang/Enum;[Ljava/lang/Object;)V
    .registers 4

    .line 41
    sget-object v0, Lcom/unity3d/services/core/webview/bridge/CallbackStatus;->ERROR:Lcom/unity3d/services/core/webview/bridge/CallbackStatus;

    invoke-direct {p0, v0, p1, p2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke(Lcom/unity3d/services/core/webview/bridge/CallbackStatus;Ljava/lang/Enum;[Ljava/lang/Object;)V

    return-void
.end method

.method public getCallbackId()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getInvocationId()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->_invocationId:I

    return v0
.end method

.method public varargs invoke([Ljava/lang/Object;)V
    .registers 4

    .line 26
    sget-object v0, Lcom/unity3d/services/core/webview/bridge/CallbackStatus;->OK:Lcom/unity3d/services/core/webview/bridge/CallbackStatus;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke(Lcom/unity3d/services/core/webview/bridge/CallbackStatus;Ljava/lang/Enum;[Ljava/lang/Object;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 59
    iget-object p2, p0, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-boolean p2, p0, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->_invoked:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    iget p2, p0, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->_invocationId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class com.unity3d.services.core.webview.bridge.WebViewCallback.AnonymousClass1 (com.unity3d.services.core.webview.bridge.WebViewCallback$1)
.class Lcom/unity3d/services/core/webview/bridge/WebViewCallback$1;
.super Ljava/lang/Object;
.source "WebViewCallback.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/unity3d/services/core/webview/bridge/WebViewCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .registers 3

    .line 68
    new-instance v0, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;

    invoke-direct {v0, p1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 64
    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback$1;->createFromParcel(Landroid/os/Parcel;)Lcom/unity3d/services/core/webview/bridge/WebViewCallback;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .registers 2

    .line 73
    new-array p1, p1, [Lcom/unity3d/services/core/webview/bridge/WebViewCallback;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 64
    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback$1;->newArray(I)[Lcom/unity3d/services/core/webview/bridge/WebViewCallback;

    move-result-object p1

    return-object p1
.end method
