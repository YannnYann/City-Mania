###### Class io.bidmachine.internal.C (io.bidmachine.internal.C)
.class public final enum Lio/bidmachine/internal/C;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lio/bidmachine/internal/C;

.field public static final enum b:Lio/bidmachine/internal/C;

.field public static final enum c:Lio/bidmachine/internal/C;

.field public static final enum d:Lio/bidmachine/internal/C;

.field public static final enum e:Lio/bidmachine/internal/C;

.field public static final synthetic f:[Lio/bidmachine/internal/C;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/internal/C;

    const-string v1, "COPPA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/internal/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/internal/C;->a:Lio/bidmachine/internal/C;

    .line 2
    new-instance v0, Lio/bidmachine/internal/C;

    const-string v1, "NON_PERSONALIZED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/internal/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/internal/C;->b:Lio/bidmachine/internal/C;

    .line 3
    new-instance v0, Lio/bidmachine/internal/C;

    const-string v1, "GDPR_NO_CONSENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/internal/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/internal/C;->c:Lio/bidmachine/internal/C;

    .line 4
    new-instance v0, Lio/bidmachine/internal/C;

    const-string v1, "CCPA_OPT_OUT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/bidmachine/internal/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/internal/C;->d:Lio/bidmachine/internal/C;

    .line 5
    new-instance v0, Lio/bidmachine/internal/C;

    const-string v1, "NONE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/bidmachine/internal/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/internal/C;->e:Lio/bidmachine/internal/C;

    invoke-static {}, Lio/bidmachine/internal/C;->a()[Lio/bidmachine/internal/C;

    move-result-object v0

    sput-object v0, Lio/bidmachine/internal/C;->f:[Lio/bidmachine/internal/C;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/internal/C;
    .registers 5

    .line 1
    sget-object v0, Lio/bidmachine/internal/C;->a:Lio/bidmachine/internal/C;

    sget-object v1, Lio/bidmachine/internal/C;->b:Lio/bidmachine/internal/C;

    sget-object v2, Lio/bidmachine/internal/C;->c:Lio/bidmachine/internal/C;

    sget-object v3, Lio/bidmachine/internal/C;->d:Lio/bidmachine/internal/C;

    sget-object v4, Lio/bidmachine/internal/C;->e:Lio/bidmachine/internal/C;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/bidmachine/internal/C;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/internal/C;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/internal/C;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/internal/C;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/internal/C;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/internal/C;->f:[Lio/bidmachine/internal/C;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/internal/C;

    return-object v0
.end method
