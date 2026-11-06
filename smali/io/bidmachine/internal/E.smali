###### Class io.bidmachine.internal.E (io.bidmachine.internal.E)
.class public final Lio/bidmachine/internal/E;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/bidmachine/internal/E;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/internal/E;

    invoke-direct {v0}, Lio/bidmachine/internal/E;-><init>()V

    sput-object v0, Lio/bidmachine/internal/E;->a:Lio/bidmachine/internal/E;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lio/bidmachine/protobuf/sdk/RestrictionMode;)Lio/bidmachine/internal/y;
    .registers 1

    if-eqz p0, :cond_7

    .line 1
    invoke-static {p0}, Lio/bidmachine/internal/F;->a(Lio/bidmachine/protobuf/sdk/RestrictionMode;)Lio/bidmachine/internal/y;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method
