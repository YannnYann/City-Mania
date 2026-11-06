###### Class io.bidmachine.rendering.internal.detector.brokencreative.c (io.bidmachine.rendering.internal.detector.brokencreative.c)
.class public final Lio/bidmachine/rendering/internal/detector/brokencreative/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/detector/brokencreative/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/detector/brokencreative/c;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/detector/brokencreative/c;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/detector/brokencreative/c;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)D
    .registers 4

    .line 0
    if-eqz p1, :cond_5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_5
    const-wide/16 v0, 0x0

    return-wide v0
.end method
