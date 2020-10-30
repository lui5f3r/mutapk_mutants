.class public Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;
.super Ljava/lang/Object;
.source "EditorTaskCounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Counts"
.end annotation


# instance fields
.field private appCaptionEdits:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_caption_edits"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private appDepictsEdits:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_depicts_edits"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private appDescriptionEdits:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_description_edits"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;)Ljava/util/Map;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;->appDescriptionEdits:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;)Ljava/util/Map;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;->appCaptionEdits:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;)Ljava/util/Map;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;->appDepictsEdits:Ljava/util/Map;

    return-object p0
.end method
