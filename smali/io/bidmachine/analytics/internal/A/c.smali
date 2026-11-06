###### Class io.bidmachine.analytics.internal.A.c (io.bidmachine.analytics.internal.A.c)
.class public final enum Lio/bidmachine/analytics/internal/A/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lio/bidmachine/analytics/internal/A/c;

.field public static final enum c:Lio/bidmachine/analytics/internal/A/c;

.field private static final synthetic d:[Lio/bidmachine/analytics/internal/A/c;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/A/c;

    const/4 v1, 0x0

    const-string v2, "GET"

    const-string v3, "Get"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/analytics/internal/A/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/analytics/internal/A/c;->b:Lio/bidmachine/analytics/internal/A/c;

    .line 2
    new-instance v0, Lio/bidmachine/analytics/internal/A/c;

    const/4 v1, 0x1

    const-string v2, "POST"

    const-string v3, "Post"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/analytics/internal/A/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/analytics/internal/A/c;->c:Lio/bidmachine/analytics/internal/A/c;

    invoke-static {}, Lio/bidmachine/analytics/internal/A/c;->a()[Lio/bidmachine/analytics/internal/A/c;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/A/c;->d:[Lio/bidmachine/analytics/internal/A/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/bidmachine/analytics/internal/A/c;->a:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lio/bidmachine/analytics/internal/A/c;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/A/c;->b:Lio/bidmachine/analytics/internal/A/c;

    sget-object v1, Lio/bidmachine/analytics/internal/A/c;->c:Lio/bidmachine/analytics/internal/A/c;

    filled-new-array {v0, v1}, [Lio/bidmachine/analytics/internal/A/c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/analytics/internal/A/c;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/analytics/internal/A/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/analytics/internal/A/c;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/analytics/internal/A/c;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/A/c;->d:[Lio/bidmachine/analytics/internal/A/c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/analytics/internal/A/c;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/net/URLConnection;)V
    .registers 3

    .line 2
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_b

    .line 3
    check-cast p1, Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lio/bidmachine/analytics/internal/A/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_b
    return-void
.end method
