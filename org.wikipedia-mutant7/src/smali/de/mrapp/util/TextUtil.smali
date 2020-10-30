.class public final Lde/mrapp/util/TextUtil;
.super Ljava/lang/Object;
.source "TextUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextUtil.kt\nde/mrapp/util/TextUtil\n*L\n1#1,46:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lde/mrapp/util/TextUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lde/mrapp/util/TextUtil;

    invoke-direct {v0}, Lde/mrapp/util/TextUtil;-><init>()V

    sput-object v0, Lde/mrapp/util/TextUtil;->INSTANCE:Lde/mrapp/util/TextUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 27
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
