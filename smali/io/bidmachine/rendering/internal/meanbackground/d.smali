###### Class io.bidmachine.rendering.internal.meanbackground.d (io.bidmachine.rendering.internal.meanbackground.d)
.class public interface abstract Lio/bidmachine/rendering/internal/meanbackground/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/meanbackground/d$a;
    }
.end annotation


# virtual methods
.method public abstract a(III)I
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.d.a (io.bidmachine.rendering.internal.meanbackground.d$a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/meanbackground/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/bidmachine/rendering/internal/meanbackground/d$a;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/meanbackground/d$a;->a:I

    return v0
.end method

.method public a(III)I
    .registers 4

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/d$a;->a()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, p3

    mul-float/2addr p2, p1

    float-to-int p1, p2

    const/4 p2, 0x1

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p1, p2, p3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    return p1
.end method
