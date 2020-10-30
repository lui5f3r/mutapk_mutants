.class public Lorg/wikipedia/page/linkpreview/LinkPreviewContents;
.super Ljava/lang/Object;
.source "LinkPreviewContents.java"


# instance fields
.field private final disambiguation:Z

.field private final extract:Ljava/lang/CharSequence;

.field private final title:Lorg/wikipedia/page/PageTitle;


# direct methods
.method constructor <init>(Lorg/wikipedia/dataclient/page/PageSummary;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1, p2}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewContents;->title:Lorg/wikipedia/page/PageTitle;

    .line 31
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "disambiguation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewContents;->disambiguation:Z

    .line 33
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getExtractHtml()Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-boolean p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewContents;->disambiguation:Z

    if-eqz p2, :cond_0

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<p>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewContents;->title:Lorg/wikipedia/page/PageTitle;

    const v1, 0x7f100167

    invoke-static {v0, v1}, Lorg/wikipedia/util/L10nUtil;->getStringForArticleLanguage(Lorg/wikipedia/page/PageTitle;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</p>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    :cond_0
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewContents;->extract:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getExtract()Ljava/lang/CharSequence;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewContents;->extract:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Lorg/wikipedia/page/PageTitle;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewContents;->title:Lorg/wikipedia/page/PageTitle;

    return-object v0
.end method

.method public isDisambiguation()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewContents;->disambiguation:Z

    return v0
.end method
