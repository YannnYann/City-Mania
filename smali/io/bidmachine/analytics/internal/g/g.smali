###### Class io.bidmachine.analytics.internal.g.EnumC4120g (io.bidmachine.analytics.internal.g.g)
.class public final enum Lio/bidmachine/analytics/internal/g/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lio/bidmachine/analytics/internal/g/g;

.field public static final enum b:Lio/bidmachine/analytics/internal/g/g;

.field private static final synthetic c:[Lio/bidmachine/analytics/internal/g/g;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/g/g;

    const-string v1, "PRECISE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/g/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/g/g;->a:Lio/bidmachine/analytics/internal/g/g;

    .line 2
    new-instance v0, Lio/bidmachine/analytics/internal/g/g;

    const-string v1, "ESTIMATED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/g/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/g/g;->b:Lio/bidmachine/analytics/internal/g/g;

    invoke-static {}, Lio/bidmachine/analytics/internal/g/g;->a()[Lio/bidmachine/analytics/internal/g/g;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/g/g;->c:[Lio/bidmachine/analytics/internal/g/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lio/bidmachine/analytics/internal/g/g;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/g/g;->a:Lio/bidmachine/analytics/internal/g/g;

    sget-object v1, Lio/bidmachine/analytics/internal/g/g;->b:Lio/bidmachine/analytics/internal/g/g;

    filled-new-array {v0, v1}, [Lio/bidmachine/analytics/internal/g/g;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/analytics/internal/g/g;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/analytics/internal/g/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/analytics/internal/g/g;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/analytics/internal/g/g;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/g/g;->c:[Lio/bidmachine/analytics/internal/g/g;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/analytics/internal/g/g;

    return-object v0
.end method
