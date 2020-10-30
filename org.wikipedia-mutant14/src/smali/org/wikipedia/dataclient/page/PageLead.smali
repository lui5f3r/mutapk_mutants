.class public Lorg/wikipedia/dataclient/page/PageLead;
.super Ljava/lang/Object;
.source "PageLead.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/dataclient/page/PageLead$ThumbUrls;,
        Lorg/wikipedia/dataclient/page/PageLead$Image;,
        Lorg/wikipedia/dataclient/page/PageLead$TitlePronunciation;
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private descriptionSource:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description_source"
    .end annotation
.end field

.field private disambiguation:Z

.field private displaytitle:Ljava/lang/String;

.field private editable:Z

.field private id:I

.field private image:Lorg/wikipedia/dataclient/page/PageLead$Image;

.field private languagecount:I

.field private lastmodified:Ljava/lang/String;

.field private mainpage:Z

.field private normalizedtitle:Ljava/lang/String;

.field private ns:I

.field private redirected:Ljava/lang/String;

.field private revision:J

.field private sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/page/Section;",
            ">;"
        }
    .end annotation
.end field

.field private titlePronunciation:Lorg/wikipedia/dataclient/page/PageLead$TitlePronunciation;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pronunciation"
    .end annotation
.end field

.field private wikiBaseItem:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wikibase_item"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageLead;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionSource()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageLead;->descriptionSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayTitle()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageLead;->displaytitle:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 45
    iget v0, p0, Lorg/wikipedia/dataclient/page/PageLead;->id:I

    return v0
.end method

.method public getLastModified()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageLead;->lastmodified:Ljava/lang/String;

    return-object v0
.end method

.method public getLeadImageFileName()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageLead;->image:Lorg/wikipedia/dataclient/page/PageLead$Image;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageLead$Image;->getFileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLeadImageUrl(I)Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageLead;->image:Lorg/wikipedia/dataclient/page/PageLead$Image;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/wikipedia/dataclient/page/PageLead$Image;->getUrl(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getLeadSectionContent()Ljava/lang/String;
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageLead;->sections:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/Section;

    invoke-virtual {v0}, Lorg/wikipedia/page/Section;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getNamespace()Lorg/wikipedia/page/Namespace;
    .locals 1

    .line 49
    iget v0, p0, Lorg/wikipedia/dataclient/page/PageLead;->ns:I

    invoke-static {v0}, Lorg/wikipedia/page/Namespace;->of(I)Lorg/wikipedia/page/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public getNormalizedTitle()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageLead;->normalizedtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirected()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageLead;->redirected:Ljava/lang/String;

    return-object v0
.end method

.method public getRevision()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lorg/wikipedia/dataclient/page/PageLead;->revision:J

    return-wide v0
.end method

.method public getSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/Section;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageLead;->sections:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageLead;->image:Lorg/wikipedia/dataclient/page/PageLead$Image;

    if-eqz v0, :cond_0

    const/16 v1, 0x140

    invoke-virtual {v0, v1}, Lorg/wikipedia/dataclient/page/PageLead$Image;->getUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTitlePronunciationUrl()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageLead;->titlePronunciation:Lorg/wikipedia/dataclient/page/PageLead$TitlePronunciation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageLead$TitlePronunciation;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/UriUtil;->resolveProtocolRelativeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getWikiBaseItem()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageLead;->wikiBaseItem:Ljava/lang/String;

    return-object v0
.end method

.method public isDisambiguation()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lorg/wikipedia/dataclient/page/PageLead;->disambiguation:Z

    return v0
.end method

.method public isMainPage()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lorg/wikipedia/dataclient/page/PageLead;->mainpage:Z

    return v0
.end method
