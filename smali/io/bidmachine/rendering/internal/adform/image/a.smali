###### Class io.bidmachine.rendering.internal.adform.image.a (io.bidmachine.rendering.internal.adform.image.a)
.class public final Lio/bidmachine/rendering/internal/adform/image/a;
.super Lio/bidmachine/rendering/internal/adform/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/adform/image/a$a;
    }
.end annotation


# instance fields
.field public final x:Landroid/widget/ImageView;

.field public final y:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/rendering/internal/adform/c;Lio/bidmachine/rendering/internal/event/a;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adElementParams"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventCallback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p7}, Lio/bidmachine/rendering/internal/adform/a;-><init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/rendering/internal/adform/c;Lio/bidmachine/rendering/internal/event/a;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V

    move-object p2, p1

    move-object p1, p0

    .line 11
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p1, Lio/bidmachine/rendering/internal/adform/image/a;->x:Landroid/widget/ImageView;

    .line 12
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p1, Lio/bidmachine/rendering/internal/adform/image/a;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/adform/image/a;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/adform/image/a;->x:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/adform/image/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/adform/image/a;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public B()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/image/a;->x:Landroid/widget/ImageView;

    return-object v0
.end method

.method public a()V
    .registers 5

    .line 2
    sget-object v0, Lio/bidmachine/rendering/model/MediaSource;->Companion:Lio/bidmachine/rendering/model/MediaSource$Companion;

    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->g()Lio/bidmachine/rendering/model/AdElementParams;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/AdElementParams;->getPlaceholder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/model/MediaSource$Companion;->fromDefaultSettings(Ljava/lang/String;)Lio/bidmachine/rendering/model/MediaSource;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v1, v2}, Lio/bidmachine/rendering/internal/adform/image/a;->a(Lio/bidmachine/rendering/model/MediaSource;Z)V

    .line 8
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->w()Lio/bidmachine/rendering/internal/adform/c;

    move-result-object v1

    invoke-interface {v1, p0}, Lio/bidmachine/rendering/internal/adform/c;->b(Lio/bidmachine/rendering/internal/adform/a;)V

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->D()V

    .line 12
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->g()Lio/bidmachine/rendering/model/AdElementParams;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/AdElementParams;->getResource()Lio/bidmachine/rendering/model/Resource;

    move-result-object v1

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/Resource;->getSource()Lio/bidmachine/rendering/model/ResourceSource;

    move-result-object v1

    if-nez v1, :cond_2d

    goto :goto_73

    .line 14
    :cond_2d
    instance-of v2, v1, Lio/bidmachine/rendering/model/Base64ResourceSource;

    const/4 v3, 0x1

    if-eqz v2, :cond_40

    .line 16
    check-cast v1, Lio/bidmachine/rendering/model/Base64ResourceSource;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/Base64ResourceSource;->getBase64()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/model/MediaSource$Companion;->fromBase64(Ljava/lang/String;)Lio/bidmachine/rendering/model/MediaSource;

    move-result-object v0

    .line 17
    invoke-virtual {p0, v0, v3}, Lio/bidmachine/rendering/internal/adform/image/a;->a(Lio/bidmachine/rendering/model/MediaSource;Z)V

    return-void

    .line 23
    :cond_40
    instance-of v0, v1, Lio/bidmachine/rendering/model/UrlResourceSource;

    if-eqz v0, :cond_52

    .line 25
    check-cast v1, Lio/bidmachine/rendering/model/UrlResourceSource;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/UrlResourceSource;->getUrls()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/rendering/model/MediaSourceKt;->urlsToMediaSource(Ljava/util/List;)Lio/bidmachine/rendering/model/MediaSource;

    move-result-object v0

    .line 26
    invoke-virtual {p0, v0, v3}, Lio/bidmachine/rendering/internal/adform/image/a;->a(Lio/bidmachine/rendering/model/MediaSource;Z)V

    return-void

    .line 33
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid resource type ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), it should be Base64ResourceSource or UrlResourceSource"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/a;->b(Ljava/lang/String;)V

    :cond_73
    :goto_73
    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/MediaSource;Z)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 34
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->A()Lio/bidmachine/rendering/Repository;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->z()Ljava/lang/Object;

    move-result-object v1

    .line 37
    new-instance v2, Lio/bidmachine/rendering/internal/adform/image/a$a;

    invoke-direct {v2, p0, p2}, Lio/bidmachine/rendering/internal/adform/image/a$a;-><init>(Lio/bidmachine/rendering/internal/adform/image/a;Z)V

    .line 38
    invoke-interface {v0, p1, v1, v2}, Lio/bidmachine/rendering/Repository;->getImage(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.image.a.C1168a (io.bidmachine.rendering.internal.adform.image.a$a)
.class public final Lio/bidmachine/rendering/internal/adform/image/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/Repository$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/image/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Z

.field public final synthetic b:Lio/bidmachine/rendering/internal/adform/image/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/adform/image/a;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/image/a$a;->b:Lio/bidmachine/rendering/internal/adform/image/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lio/bidmachine/rendering/internal/adform/image/a$a;->a:Z

    return-void
.end method


# virtual methods
.method public onError(Lio/bidmachine/util/Error;)V
    .registers 3

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .registers 2

    .line 2
    check-cast p1, Lio/bidmachine/util/Error;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/image/a$a;->onError(Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .registers 5

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/image/a$a;->b:Lio/bidmachine/rendering/internal/adform/image/a;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/adform/image/a;->b(Lio/bidmachine/rendering/internal/adform/image/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    iget-boolean v1, p0, Lio/bidmachine/rendering/internal/adform/image/a$a;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    .line 6
    :cond_15
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/image/a$a;->b:Lio/bidmachine/rendering/internal/adform/image/a;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/adform/image/a;->a(Lio/bidmachine/rendering/internal/adform/image/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/image/a$a;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method
