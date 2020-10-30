.class public Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;
.super Ljava/lang/Object;
.source "MwQueryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageLabel"
.end annotation


# instance fields
.field private confidence:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Confidence;

.field private custom:Z

.field private description:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private selected:Z

.field private state:Ljava/lang/String;

.field private wikidataId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wikidata_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->wikidataId:Ljava/lang/String;

    .line 284
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->label:Ljava/lang/String;

    .line 285
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->description:Ljava/lang/String;

    const/4 p1, 0x1

    .line 286
    iput-boolean p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->custom:Z

    return-void
.end method


# virtual methods
.method public getConfidenceScore()F
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->confidence:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Confidence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Confidence;->getGoogle()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->description:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->label:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->state:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWikidataId()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->wikidataId:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCustom()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->custom:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->selected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0

    .line 310
    iput-boolean p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->selected:Z

    return-void
.end method
