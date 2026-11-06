###### Class io.bidmachine.ImageDataImpl (io.bidmachine.ImageDataImpl)
.class public Lio/bidmachine/ImageDataImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/ImageData;


# instance fields
.field private image:Landroid/graphics/drawable/Drawable;

.field private localUri:Landroid/net/Uri;

.field private remoteUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lio/bidmachine/ImageDataImpl;->image:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/ImageData;)V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_17

    .line 8
    invoke-interface {p1}, Lio/bidmachine/ImageData;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ImageDataImpl;->remoteUrl:Ljava/lang/String;

    .line 9
    invoke-interface {p1}, Lio/bidmachine/ImageData;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ImageDataImpl;->image:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-interface {p1}, Lio/bidmachine/ImageData;->getLocalUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/ImageDataImpl;->localUri:Landroid/net/Uri;

    :cond_17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/ImageDataImpl;->remoteUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/bidmachine/ImageDataImpl;->remoteUrl:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lio/bidmachine/ImageDataImpl;->image:Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object v0, p0, Lio/bidmachine/ImageDataImpl;->localUri:Landroid/net/Uri;

    return-void
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ImageDataImpl;->image:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLocalUri()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ImageDataImpl;->localUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRemoteUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ImageDataImpl;->remoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)Lio/bidmachine/ImageDataImpl;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/ImageDataImpl;->image:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setLocalUri(Landroid/net/Uri;)Lio/bidmachine/ImageDataImpl;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/ImageDataImpl;->localUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setRemoteUrl(Ljava/lang/String;)Lio/bidmachine/ImageDataImpl;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/ImageDataImpl;->remoteUrl:Ljava/lang/String;

    return-object p0
.end method
