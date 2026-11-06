###### Class com.badlogic.gdx.math.Interpolation (com.badlogic.gdx.math.Interpolation)
.class public abstract Lcom/badlogic/gdx/math/Interpolation;
.super Ljava/lang/Object;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/Interpolation$Pow;,
        Lcom/badlogic/gdx/math/Interpolation$PowIn;,
        Lcom/badlogic/gdx/math/Interpolation$PowOut;,
        Lcom/badlogic/gdx/math/Interpolation$Exp;,
        Lcom/badlogic/gdx/math/Interpolation$ExpIn;,
        Lcom/badlogic/gdx/math/Interpolation$ExpOut;,
        Lcom/badlogic/gdx/math/Interpolation$Elastic;,
        Lcom/badlogic/gdx/math/Interpolation$ElasticIn;,
        Lcom/badlogic/gdx/math/Interpolation$ElasticOut;,
        Lcom/badlogic/gdx/math/Interpolation$Swing;,
        Lcom/badlogic/gdx/math/Interpolation$SwingIn;,
        Lcom/badlogic/gdx/math/Interpolation$SwingOut;,
        Lcom/badlogic/gdx/math/Interpolation$Bounce;,
        Lcom/badlogic/gdx/math/Interpolation$BounceIn;,
        Lcom/badlogic/gdx/math/Interpolation$BounceOut;
    }
.end annotation


# static fields
.field public static final bounce:Lcom/badlogic/gdx/math/Interpolation$Bounce;

.field public static final bounceIn:Lcom/badlogic/gdx/math/Interpolation$BounceIn;

.field public static final bounceOut:Lcom/badlogic/gdx/math/Interpolation$BounceOut;

.field public static final circle:Lcom/badlogic/gdx/math/Interpolation;

.field public static final circleIn:Lcom/badlogic/gdx/math/Interpolation;

.field public static final circleOut:Lcom/badlogic/gdx/math/Interpolation;

.field public static final elastic:Lcom/badlogic/gdx/math/Interpolation$Elastic;

.field public static final elasticIn:Lcom/badlogic/gdx/math/Interpolation$ElasticIn;

.field public static final elasticOut:Lcom/badlogic/gdx/math/Interpolation$ElasticOut;

.field public static final exp10:Lcom/badlogic/gdx/math/Interpolation$Exp;

.field public static final exp10In:Lcom/badlogic/gdx/math/Interpolation$ExpIn;

.field public static final exp10Out:Lcom/badlogic/gdx/math/Interpolation$ExpOut;

.field public static final exp5:Lcom/badlogic/gdx/math/Interpolation$Exp;

.field public static final exp5In:Lcom/badlogic/gdx/math/Interpolation$ExpIn;

.field public static final exp5Out:Lcom/badlogic/gdx/math/Interpolation$ExpOut;

.field public static final fade:Lcom/badlogic/gdx/math/Interpolation;

.field public static final fastSlow:Lcom/badlogic/gdx/math/Interpolation$PowOut;

.field public static final linear:Lcom/badlogic/gdx/math/Interpolation;

.field public static final pow2:Lcom/badlogic/gdx/math/Interpolation$Pow;

.field public static final pow2In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

.field public static final pow2InInverse:Lcom/badlogic/gdx/math/Interpolation;

.field public static final pow2Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

.field public static final pow2OutInverse:Lcom/badlogic/gdx/math/Interpolation;

.field public static final pow3:Lcom/badlogic/gdx/math/Interpolation$Pow;

.field public static final pow3In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

.field public static final pow3InInverse:Lcom/badlogic/gdx/math/Interpolation;

.field public static final pow3Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

.field public static final pow3OutInverse:Lcom/badlogic/gdx/math/Interpolation;

.field public static final pow4:Lcom/badlogic/gdx/math/Interpolation$Pow;

.field public static final pow4In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

.field public static final pow4Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

.field public static final pow5:Lcom/badlogic/gdx/math/Interpolation$Pow;

.field public static final pow5In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

.field public static final pow5Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

.field public static final sine:Lcom/badlogic/gdx/math/Interpolation;

.field public static final sineIn:Lcom/badlogic/gdx/math/Interpolation;

.field public static final sineOut:Lcom/badlogic/gdx/math/Interpolation;

.field public static final slowFast:Lcom/badlogic/gdx/math/Interpolation$PowIn;

.field public static final smooth:Lcom/badlogic/gdx/math/Interpolation;

.field public static final smooth2:Lcom/badlogic/gdx/math/Interpolation;

.field public static final smoother:Lcom/badlogic/gdx/math/Interpolation;

.field public static final swing:Lcom/badlogic/gdx/math/Interpolation$Swing;

.field public static final swingIn:Lcom/badlogic/gdx/math/Interpolation$SwingIn;

.field public static final swingOut:Lcom/badlogic/gdx/math/Interpolation$SwingOut;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 32
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$1;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$1;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->smooth:Lcom/badlogic/gdx/math/Interpolation;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->smooth2:Lcom/badlogic/gdx/math/Interpolation;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->smoother:Lcom/badlogic/gdx/math/Interpolation;

    .line 59
    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->fade:Lcom/badlogic/gdx/math/Interpolation;

    .line 63
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$Pow;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$Pow;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow2:Lcom/badlogic/gdx/math/Interpolation$Pow;

    .line 65
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$PowIn;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$PowIn;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow2In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    .line 66
    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->slowFast:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    .line 68
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$PowOut;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$PowOut;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow2Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    .line 69
    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->fastSlow:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    .line 70
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$5;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$5;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow2InInverse:Lcom/badlogic/gdx/math/Interpolation;

    .line 76
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$6;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$6;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow2OutInverse:Lcom/badlogic/gdx/math/Interpolation;

    .line 84
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$Pow;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$Pow;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow3:Lcom/badlogic/gdx/math/Interpolation$Pow;

    .line 85
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$PowIn;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$PowIn;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow3In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    .line 86
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$PowOut;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$PowOut;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow3Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    .line 87
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$7;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$7;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow3InInverse:Lcom/badlogic/gdx/math/Interpolation;

    .line 92
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$8;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$8;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow3OutInverse:Lcom/badlogic/gdx/math/Interpolation;

    .line 98
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$Pow;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$Pow;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow4:Lcom/badlogic/gdx/math/Interpolation$Pow;

    .line 99
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$PowIn;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$PowIn;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow4In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    .line 100
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$PowOut;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$PowOut;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow4Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    .line 102
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$Pow;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/math/Interpolation$Pow;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow5:Lcom/badlogic/gdx/math/Interpolation$Pow;

    .line 103
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$PowIn;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/math/Interpolation$PowIn;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow5In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    .line 104
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$PowOut;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/math/Interpolation$PowOut;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow5Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    .line 106
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$9;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$9;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->sine:Lcom/badlogic/gdx/math/Interpolation;

    .line 112
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$10;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$10;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->sineIn:Lcom/badlogic/gdx/math/Interpolation;

    .line 118
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$11;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$11;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->sineOut:Lcom/badlogic/gdx/math/Interpolation;

    .line 124
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$Exp;

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/math/Interpolation$Exp;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->exp10:Lcom/badlogic/gdx/math/Interpolation$Exp;

    .line 125
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$ExpIn;

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/math/Interpolation$ExpIn;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->exp10In:Lcom/badlogic/gdx/math/Interpolation$ExpIn;

    .line 126
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$ExpOut;

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/math/Interpolation$ExpOut;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->exp10Out:Lcom/badlogic/gdx/math/Interpolation$ExpOut;

    .line 128
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$Exp;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {v0, v2, v4}, Lcom/badlogic/gdx/math/Interpolation$Exp;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->exp5:Lcom/badlogic/gdx/math/Interpolation$Exp;

    .line 129
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$ExpIn;

    invoke-direct {v0, v2, v4}, Lcom/badlogic/gdx/math/Interpolation$ExpIn;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->exp5In:Lcom/badlogic/gdx/math/Interpolation$ExpIn;

    .line 130
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$ExpOut;

    invoke-direct {v0, v2, v4}, Lcom/badlogic/gdx/math/Interpolation$ExpOut;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->exp5Out:Lcom/badlogic/gdx/math/Interpolation$ExpOut;

    .line 132
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$12;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$12;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->circle:Lcom/badlogic/gdx/math/Interpolation;

    .line 144
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$13;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$13;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->circleIn:Lcom/badlogic/gdx/math/Interpolation;

    .line 150
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$14;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$14;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->circleOut:Lcom/badlogic/gdx/math/Interpolation;

    .line 157
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$Elastic;

    const/4 v4, 0x7

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Interpolation$Elastic;-><init>(FFIF)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->elastic:Lcom/badlogic/gdx/math/Interpolation$Elastic;

    .line 158
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$ElasticIn;

    const/4 v6, 0x6

    invoke-direct {v0, v2, v3, v6, v5}, Lcom/badlogic/gdx/math/Interpolation$ElasticIn;-><init>(FFIF)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->elasticIn:Lcom/badlogic/gdx/math/Interpolation$ElasticIn;

    .line 159
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$ElasticOut;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Interpolation$ElasticOut;-><init>(FFIF)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->elasticOut:Lcom/badlogic/gdx/math/Interpolation$ElasticOut;

    .line 161
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$Swing;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/math/Interpolation$Swing;-><init>(F)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->swing:Lcom/badlogic/gdx/math/Interpolation$Swing;

    .line 162
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$SwingIn;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/math/Interpolation$SwingIn;-><init>(F)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->swingIn:Lcom/badlogic/gdx/math/Interpolation$SwingIn;

    .line 163
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$SwingOut;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/math/Interpolation$SwingOut;-><init>(F)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->swingOut:Lcom/badlogic/gdx/math/Interpolation$SwingOut;

    .line 165
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$Bounce;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$Bounce;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->bounce:Lcom/badlogic/gdx/math/Interpolation$Bounce;

    .line 166
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$BounceIn;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$BounceIn;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->bounceIn:Lcom/badlogic/gdx/math/Interpolation$BounceIn;

    .line 167
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->bounceOut:Lcom/badlogic/gdx/math/Interpolation$BounceOut;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apply(F)F
.end method

###### Class com.badlogic.gdx.math.Interpolation.AnonymousClass1 (com.badlogic.gdx.math.Interpolation$1)
.class public Lcom/badlogic/gdx/math/Interpolation$1;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 2

    .line 0
    return p1
.end method

###### Class com.badlogic.gdx.math.Interpolation.AnonymousClass10 (com.badlogic.gdx.math.Interpolation$10)
.class public Lcom/badlogic/gdx/math/Interpolation$10;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 3

    const v0, 0x3fc90fdb

    mul-float/2addr p1, v0

    .line 114
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    return v0
.end method

###### Class com.badlogic.gdx.math.Interpolation.AnonymousClass11 (com.badlogic.gdx.math.Interpolation$11)
.class public Lcom/badlogic/gdx/math/Interpolation$11;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 3

    const v0, 0x3fc90fdb

    mul-float/2addr p1, v0

    .line 120
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result p1

    return p1
.end method

###### Class com.badlogic.gdx.math.Interpolation.AnonymousClass12 (com.badlogic.gdx.math.Interpolation$12)
.class public Lcom/badlogic/gdx/math/Interpolation$12;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 7

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v0, :cond_17

    mul-float/2addr p1, v1

    mul-float/2addr p1, p1

    sub-float p1, v2, p1

    float-to-double v3, p1

    .line 136
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float p1, v3

    sub-float/2addr v2, p1

    div-float/2addr v2, v1

    return v2

    :cond_17
    sub-float/2addr p1, v2

    mul-float/2addr p1, v1

    mul-float/2addr p1, p1

    sub-float p1, v2, p1

    float-to-double v3, p1

    .line 140
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float p1, v3

    add-float/2addr p1, v2

    div-float/2addr p1, v1

    return p1
.end method

###### Class com.badlogic.gdx.math.Interpolation.AnonymousClass13 (com.badlogic.gdx.math.Interpolation$13)
.class public Lcom/badlogic/gdx/math/Interpolation$13;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 5

    mul-float/2addr p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    float-to-double v1, p1

    .line 146
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    sub-float/2addr v0, p1

    return v0
.end method

###### Class com.badlogic.gdx.math.Interpolation.AnonymousClass14 (com.badlogic.gdx.math.Interpolation$14)
.class public Lcom/badlogic/gdx/math/Interpolation$14;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float/2addr p1, p1

    sub-float/2addr v0, p1

    float-to-double v0, v0

    .line 153
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

###### Class com.badlogic.gdx.math.Interpolation.AnonymousClass2 (com.badlogic.gdx.math.Interpolation$2)
.class public Lcom/badlogic/gdx/math/Interpolation$2;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 4

    .line 0
    mul-float v0, p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x40400000    # 3.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    return v0
.end method

###### Class com.badlogic.gdx.math.Interpolation.AnonymousClass3 (com.badlogic.gdx.math.Interpolation$3)
.class public Lcom/badlogic/gdx/math/Interpolation$3;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 5

    .line 0
    mul-float v0, p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    const/high16 v2, 0x40400000    # 3.0f

    sub-float p1, v2, p1

    mul-float/2addr v0, p1

    mul-float p1, v0, v0

    mul-float/2addr v0, v1

    sub-float/2addr v2, v0

    mul-float/2addr p1, v2

    return p1
.end method

###### Class com.badlogic.gdx.math.Interpolation.AnonymousClass4 (com.badlogic.gdx.math.Interpolation$4)
.class public Lcom/badlogic/gdx/math/Interpolation$4;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 5

    .line 0
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x41700000    # 15.0f

    sub-float/2addr v1, v2

    mul-float/2addr p1, v1

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr p1, v1

    mul-float/2addr v0, p1

    return v0
.end method

###### Class com.badlogic.gdx.math.Interpolation.AnonymousClass5 (com.badlogic.gdx.math.Interpolation$5)
.class public Lcom/badlogic/gdx/math/Interpolation$5;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 4

    const v0, 0x358637bd    # 1.0E-6f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    const/4 p1, 0x0

    return p1

    :cond_9
    float-to-double v0, p1

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

###### Class com.badlogic.gdx.math.Interpolation.AnonymousClass6 (com.badlogic.gdx.math.Interpolation$6)
.class public Lcom/badlogic/gdx/math/Interpolation$6;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 5

    const v0, 0x358637bd    # 1.0E-6f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    const/4 p1, 0x0

    return p1

    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_10

    return v0

    :cond_10
    sub-float/2addr p1, v0

    neg-float p1, p1

    float-to-double v1, p1

    .line 80
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    sub-float/2addr v0, p1

    return v0
.end method

###### Class com.badlogic.gdx.math.Interpolation.AnonymousClass7 (com.badlogic.gdx.math.Interpolation$7)
.class public Lcom/badlogic/gdx/math/Interpolation$7;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 4

    float-to-double v0, p1

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

###### Class com.badlogic.gdx.math.Interpolation.AnonymousClass8 (com.badlogic.gdx.math.Interpolation$8)
.class public Lcom/badlogic/gdx/math/Interpolation$8;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    neg-float p1, p1

    float-to-double v1, p1

    .line 94
    invoke-static {v1, v2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    sub-float/2addr v0, p1

    return v0
.end method

###### Class com.badlogic.gdx.math.Interpolation.AnonymousClass9 (com.badlogic.gdx.math.Interpolation$9)
.class public Lcom/badlogic/gdx/math/Interpolation$9;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 3

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, v0

    .line 108
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    return v0
.end method

###### Class com.badlogic.gdx.math.Interpolation.Bounce (com.badlogic.gdx.math.Interpolation$Bounce)
.class public Lcom/badlogic/gdx/math/Interpolation$Bounce;
.super Lcom/badlogic/gdx/math/Interpolation$BounceOut;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bounce"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 296
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;-><init>(I)V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 6

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-gtz v1, :cond_14

    mul-float/2addr p1, v3

    sub-float p1, v2, p1

    .line 306
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Interpolation$Bounce;->out(F)F

    move-result p1

    sub-float/2addr v2, p1

    div-float/2addr v2, v3

    return v2

    :cond_14
    mul-float/2addr p1, v3

    sub-float/2addr p1, v2

    .line 307
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Interpolation$Bounce;->out(F)F

    move-result p1

    div-float/2addr p1, v3

    add-float/2addr p1, v0

    return p1
.end method

.method public final out(F)F
    .registers 6

    .line 300
    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    add-float/2addr v2, p1

    cmpg-float v3, v2, v0

    if-gez v3, :cond_14

    div-float/2addr v0, v1

    div-float/2addr v2, v0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    return v2

    .line 302
    :cond_14
    invoke-super {p0, p1}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->apply(F)F

    move-result p1

    return p1
.end method

###### Class com.badlogic.gdx.math.Interpolation.BounceIn (com.badlogic.gdx.math.Interpolation$BounceIn)
.class public Lcom/badlogic/gdx/math/Interpolation$BounceIn;
.super Lcom/badlogic/gdx/math/Interpolation$BounceOut;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BounceIn"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 387
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;-><init>(I)V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 391
    invoke-super {p0, p1}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->apply(F)F

    move-result p1

    sub-float/2addr v0, p1

    return v0
.end method

###### Class com.badlogic.gdx.math.Interpolation.BounceOut (com.badlogic.gdx.math.Interpolation$BounceOut)
.class public Lcom/badlogic/gdx/math/Interpolation$BounceOut;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BounceOut"
.end annotation


# instance fields
.field public final heights:[F

.field public final widths:[F


# direct methods
.method public constructor <init>(I)V
    .registers 13

    .line 321
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    const/4 v0, 0x2

    if-lt p1, v0, :cond_84

    const/4 v1, 0x5

    if-gt p1, v1, :cond_84

    .line 323
    new-array v2, p1, [F

    iput-object v2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    .line 324
    new-array v3, p1, [F

    iput-object v3, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 325
    aput v4, v3, v5

    const v4, 0x3ea8f5c3    # 0.33f

    const v6, 0x3ecccccd    # 0.4f

    const/4 v7, 0x1

    if-eq p1, v0, :cond_73

    const v8, 0x3dcccccd    # 0.1f

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v10, 0x3

    if-eq p1, v10, :cond_68

    const v4, 0x3e19999a    # 0.15f

    const/4 v6, 0x4

    if-eq p1, v6, :cond_4d

    if-eq p1, v1, :cond_31

    goto :goto_7c

    :cond_31
    const p1, 0x3e99999a    # 0.3f

    .line 349
    aput p1, v2, v5

    .line 350
    aput p1, v2, v7

    .line 351
    aput v9, v2, v0

    .line 352
    aput v8, v2, v10

    .line 353
    aput v8, v2, v6

    const v1, 0x3ee66666    # 0.45f

    .line 354
    aput v1, v3, v7

    .line 355
    aput p1, v3, v0

    .line 356
    aput v4, v3, v10

    const p1, 0x3d75c28f    # 0.06f

    .line 357
    aput p1, v3, v6

    goto :goto_7c

    :cond_4d
    const p1, 0x3eae147b    # 0.34f

    .line 340
    aput p1, v2, v5

    .line 341
    aput p1, v2, v7

    .line 342
    aput v9, v2, v0

    .line 343
    aput v4, v2, v10

    const p1, 0x3e851eb8    # 0.26f

    .line 344
    aput p1, v3, v7

    const p1, 0x3de147ae    # 0.11f

    .line 345
    aput p1, v3, v0

    const p1, 0x3cf5c28f    # 0.03f

    .line 346
    aput p1, v3, v10

    goto :goto_7c

    .line 333
    :cond_68
    aput v6, v2, v5

    .line 334
    aput v6, v2, v7

    .line 335
    aput v9, v2, v0

    .line 336
    aput v4, v3, v7

    .line 337
    aput v8, v3, v0

    goto :goto_7c

    :cond_73
    const p1, 0x3f19999a    # 0.6f

    .line 328
    aput p1, v2, v5

    .line 329
    aput v6, v2, v7

    .line 330
    aput v4, v3, v7

    .line 360
    :goto_7c
    aget p1, v2, v5

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    aput p1, v2, v5

    return-void

    .line 322
    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bounces cannot be < 2 or > 5: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public apply(F)F
    .registers 8

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_7

    return v0

    .line 365
    :cond_7
    iget-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr p1, v3

    .line 367
    array-length v1, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v2, v1, :cond_26

    .line 368
    iget-object v4, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aget v4, v4, v2

    cmpg-float v5, p1, v4

    if-gtz v5, :cond_22

    .line 370
    iget-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    aget v3, v1, v2

    goto :goto_26

    :cond_22
    sub-float/2addr p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_26
    :goto_26
    div-float/2addr p1, v4

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v1, v4

    mul-float/2addr v1, v3

    mul-float/2addr v1, p1

    mul-float/2addr p1, v1

    sub-float/2addr v1, p1

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    return v0
.end method

###### Class com.badlogic.gdx.math.Interpolation.Elastic (com.badlogic.gdx.math.Interpolation$Elastic)
.class public Lcom/badlogic/gdx/math/Interpolation$Elastic;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Elastic"
.end annotation


# instance fields
.field public final bounces:F

.field public final power:F

.field public final scale:F

.field public final value:F


# direct methods
.method public constructor <init>(FFIF)V
    .registers 5

    .line 247
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 248
    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->value:F

    .line 249
    iput p2, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->power:F

    .line 250
    iput p4, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->scale:F

    int-to-float p1, p3

    const p2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, p2

    .line 251
    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_14

    const/4 p2, 0x1

    goto :goto_15

    :cond_14
    const/4 p2, -0x1

    :goto_15
    int-to-float p2, p2

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->bounces:F

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 9

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz v0, :cond_26

    mul-float/2addr p1, v2

    .line 257
    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->value:F

    float-to-double v3, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->power:F

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->bounces:F

    mul-float/2addr p1, v1

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result p1

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->scale:F

    mul-float/2addr v0, p1

    div-float/2addr v0, v2

    return v0

    :cond_26
    sub-float p1, v1, p1

    mul-float/2addr p1, v2

    .line 261
    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->value:F

    float-to-double v3, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->power:F

    sub-float v5, p1, v1

    mul-float/2addr v0, v5

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v0, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->bounces:F

    mul-float/2addr p1, v3

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result p1

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->scale:F

    mul-float/2addr v0, p1

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    return v1
.end method

###### Class com.badlogic.gdx.math.Interpolation.ElasticIn (com.badlogic.gdx.math.Interpolation$ElasticIn)
.class public Lcom/badlogic/gdx/math/Interpolation$ElasticIn;
.super Lcom/badlogic/gdx/math/Interpolation$Elastic;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElasticIn"
.end annotation


# direct methods
.method public constructor <init>(FFIF)V
    .registers 5

    .line 267
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Interpolation$Elastic;-><init>(FFIF)V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 6

    float-to-double v0, p1

    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_d

    return v1

    .line 272
    :cond_d
    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->value:F

    float-to-double v2, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->power:F

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->bounces:F

    mul-float/2addr p1, v1

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result p1

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->scale:F

    mul-float/2addr v0, p1

    return v0
.end method

###### Class com.badlogic.gdx.math.Interpolation.ElasticOut (com.badlogic.gdx.math.Interpolation$ElasticOut)
.class public Lcom/badlogic/gdx/math/Interpolation$ElasticOut;
.super Lcom/badlogic/gdx/math/Interpolation$Elastic;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElasticOut"
.end annotation


# direct methods
.method public constructor <init>(FFIF)V
    .registers 5

    .line 278
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Interpolation$Elastic;-><init>(FFIF)V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 7

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_6

    return v0

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 284
    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->value:F

    float-to-double v1, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->power:F

    sub-float v4, p1, v0

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->bounces:F

    mul-float/2addr p1, v2

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result p1

    mul-float/2addr v1, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->scale:F

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

###### Class com.badlogic.gdx.math.Interpolation.Exp (com.badlogic.gdx.math.Interpolation$Exp)
.class public Lcom/badlogic/gdx/math/Interpolation$Exp;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Exp"
.end annotation


# instance fields
.field public final min:F

.field public final power:F

.field public final scale:F

.field public final value:F


# direct methods
.method public constructor <init>(FF)V
    .registers 5

    .line 209
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 210
    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->value:F

    .line 211
    iput p2, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->power:F

    float-to-double v0, p1

    neg-float p1, p2

    float-to-double p1, p1

    .line 212
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->min:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    div-float/2addr p2, p1

    .line 213
    iput p2, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->scale:F

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 7

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz v0, :cond_20

    .line 217
    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->value:F

    float-to-double v3, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->power:F

    mul-float/2addr p1, v2

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->min:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->scale:F

    mul-float/2addr p1, v0

    :goto_1e
    div-float/2addr p1, v2

    return p1

    .line 218
    :cond_20
    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->value:F

    float-to-double v3, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->power:F

    neg-float v0, v0

    mul-float/2addr p1, v2

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->min:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->scale:F

    mul-float/2addr p1, v0

    sub-float p1, v2, p1

    goto :goto_1e
.end method

###### Class com.badlogic.gdx.math.Interpolation.ExpIn (com.badlogic.gdx.math.Interpolation$ExpIn)
.class public Lcom/badlogic/gdx/math/Interpolation$ExpIn;
.super Lcom/badlogic/gdx/math/Interpolation$Exp;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpIn"
.end annotation


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/math/Interpolation$Exp;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 6

    .line 228
    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->value:F

    float-to-double v0, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->power:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr p1, v3

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->min:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->scale:F

    mul-float/2addr p1, v0

    return p1
.end method

###### Class com.badlogic.gdx.math.Interpolation.ExpOut (com.badlogic.gdx.math.Interpolation$ExpOut)
.class public Lcom/badlogic/gdx/math/Interpolation$ExpOut;
.super Lcom/badlogic/gdx/math/Interpolation$Exp;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpOut"
.end annotation


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/math/Interpolation$Exp;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 6

    .line 238
    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->value:F

    float-to-double v0, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->power:F

    neg-float v2, v2

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->min:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->scale:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    return v0
.end method

###### Class com.badlogic.gdx.math.Interpolation.Pow (com.badlogic.gdx.math.Interpolation$Pow)
.class public Lcom/badlogic/gdx/math/Interpolation$Pow;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pow"
.end annotation


# instance fields
.field public final power:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 174
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 175
    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$Pow;->power:I

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 8

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-gtz v0, :cond_14

    mul-float/2addr p1, v1

    float-to-double v2, p1

    .line 179
    iget p1, p0, Lcom/badlogic/gdx/math/Interpolation$Pow;->power:I

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p1, v2

    div-float/2addr p1, v1

    return p1

    :cond_14
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float/2addr p1, v1

    float-to-double v1, p1

    .line 180
    iget p1, p0, Lcom/badlogic/gdx/math/Interpolation$Pow;->power:I

    int-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p1, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$Pow;->power:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-nez v1, :cond_28

    const/4 v2, -0x2

    :cond_28
    int-to-float v1, v2

    div-float/2addr p1, v1

    add-float/2addr p1, v0

    return p1
.end method

###### Class com.badlogic.gdx.math.Interpolation.PowIn (com.badlogic.gdx.math.Interpolation$PowIn)
.class public Lcom/badlogic/gdx/math/Interpolation$PowIn;
.super Lcom/badlogic/gdx/math/Interpolation$Pow;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowIn"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/Interpolation$Pow;-><init>(I)V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 6

    float-to-double v0, p1

    .line 190
    iget p1, p0, Lcom/badlogic/gdx/math/Interpolation$Pow;->power:I

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

###### Class com.badlogic.gdx.math.Interpolation.PowOut (com.badlogic.gdx.math.Interpolation$PowOut)
.class public Lcom/badlogic/gdx/math/Interpolation$PowOut;
.super Lcom/badlogic/gdx/math/Interpolation$Pow;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowOut"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 196
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/Interpolation$Pow;-><init>(I)V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 7

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    float-to-double v1, p1

    .line 200
    iget p1, p0, Lcom/badlogic/gdx/math/Interpolation$Pow;->power:I

    int-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p1, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$Pow;->power:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_14

    const/4 v1, -0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x1

    :goto_15
    int-to-float v1, v1

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    return p1
.end method

###### Class com.badlogic.gdx.math.Interpolation.Swing (com.badlogic.gdx.math.Interpolation$Swing)
.class public Lcom/badlogic/gdx/math/Interpolation$Swing;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Swing"
.end annotation


# instance fields
.field public final scale:F


# direct methods
.method public constructor <init>(F)V
    .registers 3

    .line 400
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 401
    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$Swing;->scale:F

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 7

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz v0, :cond_15

    mul-float/2addr p1, v2

    mul-float v0, p1, p1

    .line 407
    iget v3, p0, Lcom/badlogic/gdx/math/Interpolation$Swing;->scale:F

    add-float/2addr v1, v3

    mul-float/2addr v1, p1

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    return v0

    :cond_15
    sub-float/2addr p1, v1

    mul-float/2addr p1, v2

    mul-float v0, p1, p1

    .line 411
    iget v3, p0, Lcom/badlogic/gdx/math/Interpolation$Swing;->scale:F

    add-float v4, v3, v1

    mul-float/2addr v4, p1

    add-float/2addr v4, v3

    mul-float/2addr v0, v4

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    return v0
.end method

###### Class com.badlogic.gdx.math.Interpolation.SwingIn (com.badlogic.gdx.math.Interpolation$SwingIn)
.class public Lcom/badlogic/gdx/math/Interpolation$SwingIn;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwingIn"
.end annotation


# instance fields
.field public final scale:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    .line 431
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 432
    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$SwingIn;->scale:F

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 5

    mul-float v0, p1, p1

    .line 436
    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$SwingIn;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    mul-float/2addr v2, p1

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    return v0
.end method

###### Class com.badlogic.gdx.math.Interpolation.SwingOut (com.badlogic.gdx.math.Interpolation$SwingOut)
.class public Lcom/badlogic/gdx/math/Interpolation$SwingOut;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwingOut"
.end annotation


# instance fields
.field public final scale:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    .line 418
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 419
    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$SwingOut;->scale:F

    return-void
.end method


# virtual methods
.method public apply(F)F
    .registers 6

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    .line 424
    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$SwingOut;->scale:F

    add-float v3, v2, v0

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    mul-float/2addr v1, v3

    add-float/2addr v1, v0

    return v1
.end method
