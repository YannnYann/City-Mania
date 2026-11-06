###### Class io.bidmachine.analytics.internal.y.a (io.bidmachine.analytics.internal.y.a)
.class public final Lio/bidmachine/analytics/internal/y/a;
.super Lio/bidmachine/analytics/internal/w/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/y/a$a;
    }
.end annotation


# static fields
.field public static final i:Lio/bidmachine/analytics/internal/y/a$a;


# instance fields
.field private final g:Lkotlin/jvm/functions/Function0;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/y/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/y/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/analytics/internal/y/a;->i:Lio/bidmachine/analytics/internal/y/a$a;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/w/a;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/y/a;->g:Lkotlin/jvm/functions/Function0;

    .line 3
    const-string p1, "aints"

    iput-object p1, p0, Lio/bidmachine/analytics/internal/y/a;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/analytics/ReaderConfig$Rule;)Ljava/io/File;
    .registers 4

    .line 2
    instance-of v0, p1, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;

    if-eqz v0, :cond_1c

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/y/a;->g:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    check-cast p1, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;

    invoke-virtual {p1}, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/analytics/internal/I/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/y/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroid/content/Context;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class io.bidmachine.analytics.internal.y.a.C1157a (io.bidmachine.analytics.internal.y.a$a)
.class public final Lio/bidmachine/analytics/internal/y/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/y/a;
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
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/y/a$a;-><init>()V

    return-void
.end method
