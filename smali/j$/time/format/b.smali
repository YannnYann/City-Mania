###### Class j$.time.format.b (j$.time.format.b)
.class final Lj$/time/format/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/Comparator;

.field public static final synthetic c:I


# instance fields
.field final synthetic a:Lj$/time/format/u;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 102
    new-instance v0, Lj$/time/format/t;

    .line 102
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 102
    sput-object v0, Lj$/time/format/b;->b:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lj$/time/format/u;)V
    .registers 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    iput-object p1, p0, Lj$/time/format/b;->a:Lj$/time/format/u;

    return-void
.end method

.method static bridge synthetic a()Ljava/util/Comparator;
    .registers 1

    .line 0
    sget-object v0, Lj$/time/format/b;->b:Ljava/util/Comparator;

    return-object v0
.end method
