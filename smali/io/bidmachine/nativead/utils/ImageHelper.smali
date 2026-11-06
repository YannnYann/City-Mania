###### Class io.bidmachine.nativead.utils.ImageHelper (io.bidmachine.nativead.utils.ImageHelper)
.class public Lio/bidmachine/nativead/utils/ImageHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;,
        Lio/bidmachine/nativead/utils/ImageHelper$b;
    }
.end annotation


# direct methods
.method public static calculateInSamplesSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 6

    .line 1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v1, 0x1

    .line 4
    :goto_5
    div-int v2, v0, v1

    if-gt v2, p1, :cond_f

    div-int v2, p0, v1

    if-le v2, p2, :cond_e

    goto :goto_f

    :cond_e
    return v1

    :cond_f
    :goto_f
    mul-int/lit8 v1, v1, 0x2

    goto :goto_5
.end method

.method public static calculateReqHeight(I)I
    .registers 2

    .line 0
    const/16 v0, 0x2bc

    if-le p0, v0, :cond_5

    return v0

    :cond_5
    return p0
.end method

.method public static calculateReqWidth(Landroid/content/Context;)I
    .registers 2

    .line 1
    invoke-static {p0}, Lio/bidmachine/util/DeviceUtils;->getScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 v0, 0x4b0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static fillImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p3, :cond_6

    .line 1
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 3
    :cond_6
    new-instance p3, Lio/bidmachine/nativead/utils/ImageHelper$a;

    invoke-direct {p3}, Lio/bidmachine/nativead/utils/ImageHelper$a;-><init>()V

    invoke-static {p0, p2, p1, p3}, Lio/bidmachine/nativead/utils/ImageHelper;->loadImageByPath(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;)V

    return-void
.end method

.method public static loadImageByPath(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;)V
    .registers 6

    if-nez p3, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_25

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_25

    :cond_10
    if-nez p2, :cond_18

    .line 6
    const-string p0, "Target ImageView is null"

    invoke-interface {p3, p0}, Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;->onError(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_18
    invoke-static {}, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->getInstance()Lio/bidmachine/nativead/utils/NativeNetworkExecutor;

    move-result-object v0

    new-instance v1, Lio/bidmachine/nativead/utils/ImageHelper$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/bidmachine/nativead/utils/ImageHelper$b;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 10
    :cond_25
    :goto_25
    const-string p0, "ImagePath is invalid"

    invoke-interface {p3, p0}, Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;->onError(Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.nativead.utils.ImageHelper.OnImageHelperListener (io.bidmachine.nativead.utils.ImageHelper$OnImageHelperListener)
.class public interface abstract Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/utils/ImageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnImageHelperListener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onImagePrepared(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
.end method

###### Class io.bidmachine.nativead.utils.ImageHelper.a (io.bidmachine.nativead.utils.ImageHelper$a)
.class public Lio/bidmachine/nativead/utils/ImageHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/utils/ImageHelper;->fillImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onImagePrepared(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

###### Class io.bidmachine.nativead.utils.ImageHelper.b (io.bidmachine.nativead.utils.ImageHelper$b)
.class public Lio/bidmachine/nativead/utils/ImageHelper$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/utils/ImageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/ref/WeakReference;

.field public final d:Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;

.field public e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/nativead/utils/ImageHelper$b;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lio/bidmachine/nativead/utils/ImageHelper$b;->a:Landroid/net/Uri;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/bidmachine/nativead/utils/ImageHelper$b;->c:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p4, p0, Lio/bidmachine/nativead/utils/ImageHelper$b;->d:Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/nativead/utils/ImageHelper$b;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/nativead/utils/ImageHelper$b;->c:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/nativead/utils/ImageHelper$b;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/nativead/utils/ImageHelper$b;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic c(Lio/bidmachine/nativead/utils/ImageHelper$b;)Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/nativead/utils/ImageHelper$b;->d:Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    iget-object v1, p0, Lio/bidmachine/nativead/utils/ImageHelper$b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/nativead/utils/ImageHelper$b;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_60

    const/4 v2, 0x0

    .line 5
    :try_start_15
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_6f

    .line 7
    :try_start_18
    invoke-static {v1}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 10
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v1, :cond_67

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-nez v1, :cond_24

    goto :goto_67

    .line 15
    :cond_24
    iget-object v1, p0, Lio/bidmachine/nativead/utils/ImageHelper$b;->b:Landroid/content/Context;

    invoke-static {v1}, Lio/bidmachine/nativead/utils/ImageHelper;->calculateReqWidth(Landroid/content/Context;)I

    move-result v1

    .line 16
    invoke-static {v1}, Lio/bidmachine/nativead/utils/ImageHelper;->calculateReqHeight(I)I

    move-result v3

    .line 18
    invoke-static {v0, v1, v3}, Lio/bidmachine/nativead/utils/ImageHelper;->calculateInSamplesSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 20
    iget-object v1, p0, Lio/bidmachine/nativead/utils/ImageHelper$b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lio/bidmachine/nativead/utils/ImageHelper$b;->a:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_43
    .catchall {:try_start_18 .. :try_end_43} :catchall_60

    .line 22
    :try_start_43
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 23
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lio/bidmachine/nativead/utils/ImageHelper$b;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lio/bidmachine/nativead/utils/ImageHelper$b;->e:Landroid/graphics/drawable/Drawable;
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_62

    .line 25
    :try_start_54
    invoke-static {v1}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 27
    new-instance v0, Lio/bidmachine/nativead/utils/ImageHelper$b$a;

    invoke-direct {v0, p0}, Lio/bidmachine/nativead/utils/ImageHelper$b$a;-><init>(Lio/bidmachine/nativead/utils/ImageHelper$b;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_60
    move-exception v0

    goto :goto_74

    :catchall_62
    move-exception v0

    .line 28
    invoke-static {v1}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 29
    throw v0

    .line 30
    :cond_67
    :goto_67
    iget-object v0, p0, Lio/bidmachine/nativead/utils/ImageHelper$b;->d:Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;

    const-string v1, "Image size is (0;0)"

    invoke-interface {v0, v1}, Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;->onError(Ljava/lang/String;)V

    return-void

    :catchall_6f
    move-exception v0

    .line 31
    invoke-static {v1}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 32
    throw v0
    :try_end_74
    .catchall {:try_start_54 .. :try_end_74} :catchall_60

    .line 63
    :goto_74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lio/bidmachine/nativead/utils/ImageHelper$b;->d:Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;

    if-eqz v0, :cond_7d

    goto :goto_7f

    .line 66
    :cond_7d
    const-string v0, "ImagePreparation error"

    .line 67
    :goto_7f
    invoke-interface {v1, v0}, Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;->onError(Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.nativead.utils.ImageHelper.b.a (io.bidmachine.nativead.utils.ImageHelper$b$a)
.class public Lio/bidmachine/nativead/utils/ImageHelper$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/utils/ImageHelper$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/nativead/utils/ImageHelper$b;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/utils/ImageHelper$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/utils/ImageHelper$b$a;->a:Lio/bidmachine/nativead/utils/ImageHelper$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/utils/ImageHelper$b$a;->a:Lio/bidmachine/nativead/utils/ImageHelper$b;

    invoke-static {v0}, Lio/bidmachine/nativead/utils/ImageHelper$b;->a(Lio/bidmachine/nativead/utils/ImageHelper$b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_26

    .line 2
    iget-object v1, p0, Lio/bidmachine/nativead/utils/ImageHelper$b$a;->a:Lio/bidmachine/nativead/utils/ImageHelper$b;

    invoke-static {v1}, Lio/bidmachine/nativead/utils/ImageHelper$b;->b(Lio/bidmachine/nativead/utils/ImageHelper$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 3
    iget-object v1, p0, Lio/bidmachine/nativead/utils/ImageHelper$b$a;->a:Lio/bidmachine/nativead/utils/ImageHelper$b;

    invoke-static {v1}, Lio/bidmachine/nativead/utils/ImageHelper$b;->c(Lio/bidmachine/nativead/utils/ImageHelper$b;)Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/nativead/utils/ImageHelper$b$a;->a:Lio/bidmachine/nativead/utils/ImageHelper$b;

    invoke-static {v2}, Lio/bidmachine/nativead/utils/ImageHelper$b;->b(Lio/bidmachine/nativead/utils/ImageHelper$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;->onImagePrepared(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 5
    :cond_26
    iget-object v0, p0, Lio/bidmachine/nativead/utils/ImageHelper$b$a;->a:Lio/bidmachine/nativead/utils/ImageHelper$b;

    invoke-static {v0}, Lio/bidmachine/nativead/utils/ImageHelper$b;->c(Lio/bidmachine/nativead/utils/ImageHelper$b;)Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;

    move-result-object v0

    const-string v1, "Target ImageView or Bitmap is invalid"

    invoke-interface {v0, v1}, Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;->onError(Ljava/lang/String;)V

    return-void
.end method
