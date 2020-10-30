.class final Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;
.super Ljava/lang/Object;
.source "MwServiceError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/MwServiceError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Data"
.end annotation


# instance fields
.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;)Ljava/util/List;
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;->messages()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private messages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;->messages:Ljava/util/List;

    return-object v0
.end method
