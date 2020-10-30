.class public Lorg/wikipedia/dataclient/page/PageSummary;
.super Ljava/lang/Object;
.source "PageSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/dataclient/page/PageSummary$Titles;,
        Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;,
        Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;
    }
.end annotation


# static fields
.field public static final TYPE_DISAMBIGUATION:Ljava/lang/String; = "disambiguation"

.field public static final TYPE_MAIN_PAGE:Ljava/lang/String; = "mainpage"

.field public static final TYPE_NO_EXTRACT:Ljava/lang/String; = "no-extract"

.field public static final TYPE_STANDARD:Ljava/lang/String; = "standard"


# instance fields
.field private coordinates:Landroid/location/Location;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lorg/wikipedia/page/GeoTypeAdapter;
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private descriptionSource:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description_source"
    .end annotation
.end field

.field private extract:Ljava/lang/String;

.field private extractHtml:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extract_html"
    .end annotation
.end field

.field private lang:Ljava/lang/String;

.field private namespace:Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;

.field private originalImage:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "originalimage"
    .end annotation
.end field

.field private pageid:I

.field private revision:J

.field private thumbnail:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

.field private timestamp:Ljava/lang/String;

.field private titles:Lorg/wikipedia/dataclient/page/PageSummary$Titles;

.field private type:Ljava/lang/String;

.field private wikiBaseItem:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wikibase_item"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adjustPageTitle(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/page/PageTitle;
    .locals 3

    .line 52
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->titles:Lorg/wikipedia/dataclient/page/PageSummary$Titles;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/wikipedia/dataclient/page/PageSummary$Titles;->access$000(Lorg/wikipedia/dataclient/page/PageSummary$Titles;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    iget-object v1, p0, Lorg/wikipedia/dataclient/page/PageSummary;->titles:Lorg/wikipedia/dataclient/page/PageSummary$Titles;

    invoke-static {v1}, Lorg/wikipedia/dataclient/page/PageSummary$Titles;->access$000(Lorg/wikipedia/dataclient/page/PageSummary$Titles;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getThumbUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    move-object p1, v0

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/wikipedia/page/PageTitle;->setDescription(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public getApiTitle()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->titles:Lorg/wikipedia/dataclient/page/PageSummary$Titles;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/wikipedia/dataclient/page/PageSummary$Titles;->access$000(Lorg/wikipedia/dataclient/page/PageSummary$Titles;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionSource()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->descriptionSource:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayTitle()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->titles:Lorg/wikipedia/dataclient/page/PageSummary$Titles;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/wikipedia/dataclient/page/PageSummary$Titles;->access$100(Lorg/wikipedia/dataclient/page/PageSummary$Titles;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtract()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->extract:Ljava/lang/String;

    return-object v0
.end method

.method public getExtractHtml()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->extractHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getGeo()Landroid/location/Location;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->coordinates:Landroid/location/Location;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->lang:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeadImageName()Ljava/lang/String;
    .locals 2

    .line 171
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/page/PageSummary;->getOriginalImageUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/page/PageSummary;->getOriginalImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 175
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespace()Lorg/wikipedia/page/Namespace;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->namespace:Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;

    if-nez v0, :cond_0

    sget-object v0, Lorg/wikipedia/page/Namespace;->MAIN:Lorg/wikipedia/page/Namespace;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;->id()I

    move-result v0

    invoke-static {v0}, Lorg/wikipedia/page/Namespace;->of(I)Lorg/wikipedia/page/Namespace;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getOriginalImageUrl()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->originalImage:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPageId()I
    .locals 1

    .line 116
    iget v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->pageid:I

    return v0
.end method

.method public getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;
    .locals 7

    .line 112
    new-instance v6, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p0}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/wikipedia/dataclient/page/PageSummary;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public getRevision()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->revision:J

    return-wide v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->thumbnail:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->timestamp:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "standard"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->type:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getWikiBaseItem()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->wikiBaseItem:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPage(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/page/Page;
    .locals 2

    .line 48
    new-instance v0, Lorg/wikipedia/page/Page;

    invoke-direct {p0, p1}, Lorg/wikipedia/dataclient/page/PageSummary;->adjustPageTitle(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    new-instance v1, Lorg/wikipedia/page/PageProperties;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/PageProperties;-><init>(Lorg/wikipedia/dataclient/page/PageSummary;)V

    invoke-direct {v0, p1, v1}, Lorg/wikipedia/page/Page;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/page/PageProperties;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 147
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
