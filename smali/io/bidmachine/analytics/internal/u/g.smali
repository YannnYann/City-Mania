###### Class io.bidmachine.analytics.internal.u.g (io.bidmachine.analytics.internal.u.g)
.class public final Lio/bidmachine/analytics/internal/u/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/u/g$a;
    }
.end annotation


# static fields
.field public static final b:Lio/bidmachine/analytics/internal/u/g$a;


# instance fields
.field private volatile a:Lio/bidmachine/analytics/internal/u/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/u/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/u/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/analytics/internal/u/g;->b:Lio/bidmachine/analytics/internal/u/g$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/u/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/g;->a:Lio/bidmachine/analytics/internal/u/a;

    return-object v0
.end method

.method public final a(Lio/bidmachine/analytics/internal/u/a;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/g;->a:Lio/bidmachine/analytics/internal/u/a;

    return-void
.end method

###### Class io.bidmachine.analytics.internal.u.g.a (io.bidmachine.analytics.internal.u.g$a)
.class public final Lio/bidmachine/analytics/internal/u/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/u/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/u/g$a;-><init>()V

    return-void
.end method
