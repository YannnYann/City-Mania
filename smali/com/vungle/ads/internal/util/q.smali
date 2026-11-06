###### Class com.vungle.ads.internal.util.q (com.vungle.ads.internal.util.q)
.class public final Lcom/vungle/ads/internal/util/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/vungle/ads/internal/util/q;


# instance fields
.field public a:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/util/q;

    invoke-direct {v0}, Lcom/vungle/ads/internal/util/q;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/util/q;->b:Lcom/vungle/ads/internal/util/q;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/vungle/ads/internal/k1;)V
    .registers 6

    const-string v0, "onImageSizeLoaded"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_17

    :cond_c
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "file://"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 29
    :goto_17
    sget-boolean p0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p0, "TAG"

    const-string p1, "q"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "the valid uri is required."

    invoke-static {p1, p0}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    const/4 v0, 0x7

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 27
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 28
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/vungle/ads/internal/k1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final a(Ljava/lang/String;Lcom/vungle/ads/internal/util/t;Lkotlin/jvm/functions/Function1;)V
    .registers 7

    const-string v0, "$onImageLoaded"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 11
    const-string v2, "file://"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p0, p1}, Lcom/vungle/ads/internal/util/k;->a(Ljava/lang/String;Lcom/vungle/ads/internal/util/t;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 17
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 19
    :cond_25
    sget-boolean p0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p0, "TAG"

    const-string p1, "q"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "decode bitmap failed."

    invoke-static {p1, p0}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/ads/internal/executor/j;)V
    .registers 3

    const-string v0, "ioExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/util/q;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/vungle/ads/internal/util/t;Lcom/vungle/ads/internal/g1;)V
    .registers 7

    const-string v0, "onImageLoaded"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/util/q;->a:Ljava/util/concurrent/Executor;

    const-string v1, "TAG"

    const-string v2, "q"

    if-nez v0, :cond_18

    .line 3
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ImageLoader not initialized."

    invoke-static {v2, p1}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_29

    .line 7
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "the uri is required."

    invoke-static {v2, p1}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_29
    iget-object v0, p0, Lcom/vungle/ads/internal/util/q;->a:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_35

    new-instance v1, Lcom/vungle/ads/internal/util/q$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lcom/vungle/ads/internal/util/q$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/vungle/ads/internal/util/t;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_35
    return-void
.end method

###### Class com.vungle.ads.internal.util.q$$ExternalSyntheticLambda0 (com.vungle.ads.internal.util.q$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/util/q$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/vungle/ads/internal/util/t;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vungle/ads/internal/util/t;Lkotlin/jvm/functions/Function1;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/util/q$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/vungle/ads/internal/util/q$$ExternalSyntheticLambda0;->f$1:Lcom/vungle/ads/internal/util/t;

    iput-object p3, p0, Lcom/vungle/ads/internal/util/q$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/util/q$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/ads/internal/util/q$$ExternalSyntheticLambda0;->f$1:Lcom/vungle/ads/internal/util/t;

    iget-object v2, p0, Lcom/vungle/ads/internal/util/q$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/vungle/ads/internal/util/q;->a(Ljava/lang/String;Lcom/vungle/ads/internal/util/t;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
