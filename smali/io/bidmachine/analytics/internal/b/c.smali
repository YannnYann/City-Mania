###### Class io.bidmachine.analytics.internal.b.c (io.bidmachine.analytics.internal.b.c)
.class public final Lio/bidmachine/analytics/internal/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/b/c;

.field private static final b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/bidmachine/analytics/internal/b/c;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/b/c;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/b/c;->a:Lio/bidmachine/analytics/internal/b/c;

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/b/c$a;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/b/c$a;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/b/c;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Ljava/security/SecureRandom;
    .registers 2

    .line 4
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 5
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    return-object v0
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/b/c;)Ljava/security/SecureRandom;
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/b/c;->a()Ljava/security/SecureRandom;

    move-result-object p0

    return-object p0
.end method

.method private final b()Ljava/security/SecureRandom;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/b/c;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    if-nez v0, :cond_e

    invoke-direct {p0}, Lio/bidmachine/analytics/internal/b/c;->a()Ljava/security/SecureRandom;

    move-result-object v0

    :cond_e
    return-object v0
.end method


# virtual methods
.method public final a(I)[B
    .registers 3

    .line 2
    new-array p1, p1, [B

    .line 3
    sget-object v0, Lio/bidmachine/analytics/internal/b/c;->a:Lio/bidmachine/analytics/internal/b/c;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/b/c;->b()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p1
.end method

###### Class io.bidmachine.analytics.internal.b.c.a (io.bidmachine.analytics.internal.b.c$a)
.class public final Lio/bidmachine/analytics/internal/b/c$a;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/b/c$a;->initialValue()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Ljava/security/SecureRandom;
    .registers 2

    .line 2
    sget-object v0, Lio/bidmachine/analytics/internal/b/c;->a:Lio/bidmachine/analytics/internal/b/c;

    invoke-static {v0}, Lio/bidmachine/analytics/internal/b/c;->a(Lio/bidmachine/analytics/internal/b/c;)Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method
