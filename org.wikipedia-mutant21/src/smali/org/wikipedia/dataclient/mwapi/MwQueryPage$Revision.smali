.class public Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;
.super Ljava/lang/Object;
.source "MwQueryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Revision"
.end annotation


# instance fields
.field private comment:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private contentFormat:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contentformat"
    .end annotation
.end field

.field private contentModel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contentmodel"
    .end annotation
.end field

.field private minor:Z

.field private parentid:J

.field private revid:J

.field private slots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage$RevisionSlot;",
            ">;"
        }
    .end annotation
.end field

.field private timeStamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->content:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentFromSlot(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->slots:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->slots:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$RevisionSlot;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$RevisionSlot;->getContent()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getRevId()J
    .locals 2

    .line 176
    iget-wide v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revid:J

    return-wide v0
.end method

.method public timeStamp()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->timeStamp:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
