.class public Lorg/wikipedia/page/Page;
.super Ljava/lang/Object;
.source "Page.java"


# instance fields
.field private final pageProperties:Lorg/wikipedia/page/PageProperties;

.field private sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/page/Section;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageTitle;Ljava/util/List;Lorg/wikipedia/page/PageProperties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/page/PageTitle;",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/Section;",
            ">;",
            "Lorg/wikipedia/page/PageProperties;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/Page;->sections:Ljava/util/List;

    .line 19
    iput-object p1, p0, Lorg/wikipedia/page/Page;->title:Lorg/wikipedia/page/PageTitle;

    .line 20
    iput-object p2, p0, Lorg/wikipedia/page/Page;->sections:Ljava/util/List;

    .line 21
    iput-object p3, p0, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/page/PageProperties;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/Page;->sections:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lorg/wikipedia/page/Page;->title:Lorg/wikipedia/page/PageTitle;

    .line 26
    iput-object p2, p0, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    return-void
.end method


# virtual methods
.method public getDisplayTitle()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageProperties;->getDisplayTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageProperties()Lorg/wikipedia/page/PageProperties;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    return-object v0
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

    .line 34
    iget-object v0, p0, Lorg/wikipedia/page/Page;->sections:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Lorg/wikipedia/page/PageTitle;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/wikipedia/page/Page;->title:Lorg/wikipedia/page/PageTitle;

    return-object v0
.end method

.method public isArticle()Z
    .locals 2

    .line 54
    invoke-virtual {p0}, Lorg/wikipedia/page/Page;->isMainPage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/wikipedia/page/Page;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/page/Namespace;->MAIN:Lorg/wikipedia/page/Namespace;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMainPage()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageProperties;->isMainPage()Z

    move-result v0

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/wikipedia/page/Page;->getPageProperties()Lorg/wikipedia/page/PageProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageProperties;->canEdit()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setSections(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/Section;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lorg/wikipedia/page/Page;->sections:Ljava/util/List;

    return-void
.end method
