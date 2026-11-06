###### Class ads_mobile_sdk.p42 (ads_mobile_sdk.p42)
.class public final Lads_mobile_sdk/p42;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/v01;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:D

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/v01;Ljava/lang/String;DII)V
    .registers 7

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/p42;->a:Lads_mobile_sdk/v01;

    iput-object p2, p0, Lads_mobile_sdk/p42;->b:Ljava/lang/String;

    iput-wide p3, p0, Lads_mobile_sdk/p42;->c:D

    iput p5, p0, Lads_mobile_sdk/p42;->d:I

    iput p6, p0, Lads_mobile_sdk/p42;->e:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 8

    .line 1
    new-instance v0, Lads_mobile_sdk/km1;

    .line 2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lads_mobile_sdk/p42;->a:Lads_mobile_sdk/v01;

    check-cast v3, Lads_mobile_sdk/q01;

    .line 3
    iget-object v3, v3, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 4
    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 5
    iget-object v2, p0, Lads_mobile_sdk/p42;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "parse(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-wide v3, p0, Lads_mobile_sdk/p42;->c:D

    .line 7
    iget v5, p0, Lads_mobile_sdk/p42;->d:I

    .line 8
    iget v6, p0, Lads_mobile_sdk/p42;->e:I

    .line 9
    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/km1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    return-object v0
.end method
