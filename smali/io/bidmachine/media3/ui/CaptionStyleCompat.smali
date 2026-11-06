###### Class io.bidmachine.media3.ui.CaptionStyleCompat (io.bidmachine.media3.ui.CaptionStyleCompat)
.class public final Lio/bidmachine/media3/ui/CaptionStyleCompat;
.super Ljava/lang/Object;
.source "CaptionStyleCompat.java"


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/ui/CaptionStyleCompat;


# instance fields
.field public final backgroundColor:I

.field public final edgeColor:I

.field public final edgeType:I

.field public final foregroundColor:I

.field public final typeface:Landroid/graphics/Typeface;

.field public final windowColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 72
    new-instance v0, Lio/bidmachine/media3/ui/CaptionStyleCompat;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/ui/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    sput-object v0, Lio/bidmachine/media3/ui/CaptionStyleCompat;->DEFAULT:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    return-void
.end method

.method public constructor <init>(IIIIILandroid/graphics/Typeface;)V
    .registers 7

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput p1, p0, Lio/bidmachine/media3/ui/CaptionStyleCompat;->foregroundColor:I

    .line 142
    iput p2, p0, Lio/bidmachine/media3/ui/CaptionStyleCompat;->backgroundColor:I

    .line 143
    iput p3, p0, Lio/bidmachine/media3/ui/CaptionStyleCompat;->windowColor:I

    .line 144
    iput p4, p0, Lio/bidmachine/media3/ui/CaptionStyleCompat;->edgeType:I

    .line 145
    iput p5, p0, Lio/bidmachine/media3/ui/CaptionStyleCompat;->edgeColor:I

    .line 146
    iput-object p6, p0, Lio/bidmachine/media3/ui/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public static createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lio/bidmachine/media3/ui/CaptionStyleCompat;
    .registers 8

    .line 117
    new-instance v0, Lio/bidmachine/media3/ui/CaptionStyleCompat;

    .line 118
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_f

    :cond_b
    sget-object v1, Lio/bidmachine/media3/ui/CaptionStyleCompat;->DEFAULT:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    iget v1, v1, Lio/bidmachine/media3/ui/CaptionStyleCompat;->foregroundColor:I

    .line 119
    :goto_f
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v2

    if-eqz v2, :cond_18

    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_1c

    :cond_18
    sget-object v2, Lio/bidmachine/media3/ui/CaptionStyleCompat;->DEFAULT:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    iget v2, v2, Lio/bidmachine/media3/ui/CaptionStyleCompat;->backgroundColor:I

    .line 120
    :goto_1c
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v3

    if-eqz v3, :cond_25

    iget v3, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    goto :goto_29

    :cond_25
    sget-object v3, Lio/bidmachine/media3/ui/CaptionStyleCompat;->DEFAULT:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    iget v3, v3, Lio/bidmachine/media3/ui/CaptionStyleCompat;->windowColor:I

    .line 121
    :goto_29
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v4

    if-eqz v4, :cond_32

    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    goto :goto_36

    :cond_32
    sget-object v4, Lio/bidmachine/media3/ui/CaptionStyleCompat;->DEFAULT:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    iget v4, v4, Lio/bidmachine/media3/ui/CaptionStyleCompat;->edgeType:I

    .line 122
    :goto_36
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v5

    if-eqz v5, :cond_3f

    iget v5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    goto :goto_43

    :cond_3f
    sget-object v5, Lio/bidmachine/media3/ui/CaptionStyleCompat;->DEFAULT:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    iget v5, v5, Lio/bidmachine/media3/ui/CaptionStyleCompat;->edgeColor:I

    .line 123
    :goto_43
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/ui/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    return-object v0
.end method
