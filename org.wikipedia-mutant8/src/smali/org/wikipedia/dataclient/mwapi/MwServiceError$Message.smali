.class final Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message;
.super Ljava/lang/Object;
.source "MwServiceError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/MwServiceError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Message"
.end annotation


# instance fields
.field private html:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message;)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message;->html()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private html()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message;->html:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
