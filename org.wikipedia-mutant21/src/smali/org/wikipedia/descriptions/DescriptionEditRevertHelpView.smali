.class public Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;
.super Landroid/widget/ScrollView;
.source "DescriptionEditRevertHelpView.java"


# instance fields
.field helpText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p2}, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;->init(Ljava/lang/String;)V

    return-void
.end method

.method private getHistoryUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 53
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 54
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "m.wikidata.org"

    .line 55
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "wiki"

    .line 56
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "Special:History"

    .line 57
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    .line 63
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init(Ljava/lang/String;)V
    .locals 8

    .line 33
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00fe

    invoke-static {v0, v1, p0}, Landroid/widget/ScrollView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 35
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;->helpText:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f1000a0

    .line 37
    invoke-direct {p0, v0}, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1000a5

    .line 38
    invoke-direct {p0, v1}, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":revertSubtitle"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1000a2

    .line 39
    invoke-direct {p0, v1}, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":revertIntro"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;->getHistoryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const p1, 0x7f1000a1

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ":revertHistory"

    .line 40
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    const/high16 v0, 0x41000000    # 8.0f

    .line 43
    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v0

    .line 44
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    const v6, 0x7f100477

    invoke-direct {p0, v6}, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const v6, 0x7f1000a3

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v3, Landroid/text/SpannableString;

    const v5, 0x7f1000a4

    invoke-direct {p0, v5}, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 46
    new-instance v5, Landroid/text/style/BulletSpan;

    invoke-direct {v5, v0}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 47
    new-instance v5, Landroid/text/style/BulletSpan;

    invoke-direct {v5, v0}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {v3, v5, v4, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 48
    new-instance v0, Landroid/text/SpannableString;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    aput-object v1, v5, v4

    aput-object v3, v5, v2

    invoke-static {p1, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;->helpText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
