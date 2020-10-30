.class Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$EditStreak;
.super Ljava/lang/Object;
.source "EditorTaskCounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EditStreak"
.end annotation


# instance fields
.field private lastEditTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_edit_time"
    .end annotation
.end field

.field private length:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$EditStreak;)I
    .locals 0

    .line 152
    iget p0, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$EditStreak;->length:I

    return p0
.end method

.method static synthetic access$400(Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$EditStreak;)Ljava/lang/String;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$EditStreak;->lastEditTime:Ljava/lang/String;

    return-object p0
.end method
