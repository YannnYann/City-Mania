###### Class io.bidmachine.analytics.internal.i.AbstractC4127a (io.bidmachine.analytics.internal.i.a)
.class public abstract Lio/bidmachine/analytics/internal/i/a;
.super Lio/bidmachine/analytics/internal/h/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/i/a$b;,
        Lio/bidmachine/analytics/internal/i/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/h/d;-><init>()V

    return-void
.end method

###### Class io.bidmachine.analytics.internal.i.AbstractC4127a.InterfaceC1123a (io.bidmachine.analytics.internal.i.a$a)
.class public interface abstract Lio/bidmachine/analytics/internal/i/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

###### Class io.bidmachine.analytics.internal.i.AbstractC4127a.b (io.bidmachine.analytics.internal.i.a$b)
.class public final Lio/bidmachine/analytics/internal/i/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lio/bidmachine/analytics/internal/h/b;

.field private final c:Lio/bidmachine/analytics/internal/i/a$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/h/b;Lio/bidmachine/analytics/internal/i/a$a;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/i/a$b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/i/a$b;->b:Lio/bidmachine/analytics/internal/h/b;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/i/a$b;->c:Lio/bidmachine/analytics/internal/i/a$a;

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/h/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/i/a$b;->b:Lio/bidmachine/analytics/internal/h/b;

    return-object v0
.end method

.method public final b()Lio/bidmachine/analytics/internal/i/a$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/i/a$b;->c:Lio/bidmachine/analytics/internal/i/a$a;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/i/a$b;->a:Ljava/lang/String;

    return-object v0
.end method
